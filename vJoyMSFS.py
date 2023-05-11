#### by cheva (c) MIT 2012-2023 
#### MSFS MouseJoke FreePie VJoy and Voice Commands
#### @vesion 0.2305.11
#### @files at https://drive.google.com/drive/folders/1sUrhqyiA2Zfj1OTt9bcohxHUi5pMzQLk
#### @github https://github.com/dcheva/AHK/blob/main/vJoyMSFS.py
#### @pastebin https://pastebin.com/H3eJHzNB

from System import Int16
from ctypes import windll, Structure, c_ulong, byref
import winsound, time

# Let's define
## Тетратоника в герцах - для звуковой сигнализации событий
tetra = [131,165,196,220,262,330,392,440,524,660,784,880,1047,1319,1568,1760,2093]

class POINT(Structure):
   _fields_ = [("x", c_ulong), ("y", c_ulong)]

def stat(Joy_stat, count=2):
	for i in range(count):
		if Joy_stat:
			winsound.Beep(tetra[5],50)
		else:
			winsound.Beep(tetra[3],50)

## Let's train
if starting:
	winsound.Beep(tetra[5],50)
	winsound.Beep(tetra[9],50)
	# speech.say("started.") # Для использования, нужно настроить голосовой диктор - https://t.ly/_KeN
	Joy_stat = False # данный флаг используется для включения с клавиатуры, передачи данных на джойстик
	vJoy_Enabled = False # данный флаг используется для временного отключения джойстика мышкой
	vJoy_Key = Key.CapsLock # кнопка на клавиатуре включающая режим управления джойстика мышкой
	vJoy_Reset = Key.Backspace # Центровка по Backspace
	vJoy_LControl = Key.LeftControl # Привязка к Control
	vJoy_RControl = Key.RightControl # Привязка к Control
	vJoy_Control = False # флаг нажатой клавиши Control
	vJoy_LAlt = Key.LeftAlt # Привязка к Alt
	vJoy_RAlt = Key.RightAlt # Привязка к Alt
	vJoy_Alt = False # Альтернативное управление - ось Х на руль направления
	vJoy_Control = False # флаг нажатой клавиши Control
	vJoy_Freeview = False # флаг временного выключения режима управления джойстика мышкой
	Freeview = False # флаг временного выключения режима управления джойстика мышкой
	screen_x = int(windll.user32.GetSystemMetrics(0) / 2) # размер экрана
	screen_y = int(windll.user32.GetSystemMetrics(1) / 2)
	sx = screen_x
	sy = screen_y
	## Для оси газа
	maxAxis = 32768;
	slider = int(-maxAxis / 2)
	# Шаг оси = 5% 
	step = maxAxis / 20
	# Cursor pointer type
	pt = POINT()
	
	# Внимание - не стоит задавать близкие значения Scale_V и Scale_R, так как это приведет к взаимовлиянию настроек. Одно из значений в паре пусть будет 100.
	scale_Vx = 100 # на какой угол в % отклоняется реальный джойстик, если меньше 100, то джойстик не наклоняется до конца
	scale_Rx = 100 # % масштабирования осей реального джойстика на экран, если меньше 100% то джойстик будет отклонятся до упора раньше
	scale_Vy = 100 # тоже для оси Y
	scale_Ry = 100
	scale_Vz = 100 # отношение определяет, насколько влияет на ось Z ось Х
	scale_Rz = 100
	preci = 100  # уточнитель задает точность измерений до сотых, используется, для сохранения дробной части в умножителе
	# умножитель определяет, насколько нужно увеличить значение положения курсора, чтобы джойстик корректно отклонялся от центра экрана
	multipler_x = preci * maxAxis / screen_x / 2
	multipler_y = preci * maxAxis / screen_y / 2
	axisx_inversion = 1
	axisy_inversion = 1
	axisz_inversion = 1

## Let's fly
############################################################################################
# Throtttle control 0.2305.11
# F1 -> throttleOff
# F2 -> throttleDown
# F3 -> throttleUp
# F1 -> throttleMax
# Also mousewheel binded on Up and Down
# scroll up   -> throtteUp
# scroll down -> throttleDown
# Do not change if left Coltrol, Alt or Shift pressed due to Propeller and other binds
throttleChange = (
	keyboard.getKeyUp(Key.LeftControl) 
	and keyboard.getKeyUp(Key.LeftShift) 
	and keyboard.getKeyUp(Key.LeftAlt))	
throttleMin  = throttleChange and keyboard.getPressed(Key.F1)
throttleMax  = throttleChange and keyboard.getPressed(Key.F4)
# throttleDown = keyboard.getKeyDown(Key.F2)
# throttleUp   = keyboard.getKeyDown(Key.F3)
throttleDown  = (throttleChange and keyboard.getPressed(Key.F2)) or mouse.wheelDown 
throttleUp  = (throttleChange and keyboard.getPressed(Key.F3)) or mouse.wheelUp
############################################################################################
	
Freeview = mouse.rightButton # MSFS:: правая кнопка на мышке включает свободный обзор. 
Click = mouse.getPressed(0)
## Freeview = keyboard.getKeyDown(Key.V) # пример для кнопки на клавиатуре для свободного обзора
## mouse.middleButton .rightButton .leftButton - средняя, правая или левая кнопка мыши и т.п.

## ЛКМ на кнопку джоя - кнопку тормоза
if Joy_stat: vJoy[0].setButton(0, mouse.getButton(0))

## Привязка статуса Control
# if keyboard.getKeyDown(vJoy_LControl): vJoy_Control = True
if keyboard.getKeyDown(vJoy_RControl): vJoy_Control = True
else: vJoy_Control = False

## Привязка статуса Alt
# if keyboard.getKeyDown(vJoy_LAlt): vJoy_Alt = True
if keyboard.getKeyDown(vJoy_RAlt): vJoy_Alt = True
else: vJoy_Alt = False

# Включение и отключение джойстика
if keyboard.getPressed(vJoy_Key):
	if Joy_stat:
		Joy_stat = False
		vJoy_Enabled = False
		## Обязательно - отключение привязки ЛКМ к кнопке тормоза
		vJoy[0].setButton(0, False)
		# vJoy[0].x = 0 # при отключении джойстик встает в 0
   		# vJoy[0].y = 0
   		# vJoy[0].z = 0
   		# vJoy[0].rz = 0
   		## Озвучка переключения - откл
   		winsound.Beep(tetra[5],50)
   		winsound.Beep(tetra[3],50)
		# speech.say("disengaged.")
	else:
		vJoy_Enabled = True
		vJoy[0].setButton(0, mouse.getButton(0))
   		## Озвучка переключения - вкл
   		winsound.Beep(tetra[3],50)
   		winsound.Beep(tetra[5],50)
		# speech.say("engaged.")
		
## Сброс значений.
## Мягкий - центрирование с сохранением положения руля высоты.
## С контролом - сброс руля высоты.
## Не сбрасывает слайдер (ось газа).
## Не сбрасывает ry (зум).
if keyboard.getPressed(vJoy_Reset):
	# if Joy_stat:
		## Центровка по Backspace - элероны в 0
		vJoy[0].x = 0  
   		## Выравнивание руля высоты - только с Control
   		if vJoy_Control:
			vJoy[0].y = 0
   		## Выравнивание руля направления
   		vJoy[0].z = 0
   		vJoy[0].rz = 0
		# move mouse to vJoy position
		sx = vJoy[0].x * screen_x / (maxAxis / 2) * axisx_inversion + screen_x;
		sy = vJoy[0].y * screen_y / (maxAxis / 2) * axisy_inversion + screen_y;
		windll.user32.SetCursorPos(sx, sy) # автоцентрирование курсора мыши
		stat(Joy_stat)
		if vJoy_Control:
			winsound.Beep(tetra[7],50)

if vJoy_Enabled:
	# Бип если нажата левая кнопка:
	if Click: winsound.Beep(tetra[7],50)
	# деактивация/активация джойстика, если нажата правая кнопка мыши
	if Freeview:
		Joy_stat = False
		# vJoy[0].setButton(0, False)
	if not Freeview and Joy_stat == False:
		Joy_stat = True
		vJoy[0].setButton(0 ,mouse.getButton(0)) 
		# move mouse to vJoy position
		sx = vJoy[0].x * screen_x / (maxAxis / 2) * axisx_inversion + screen_x;
		sy = vJoy[0].y * screen_y / (maxAxis / 2) * axisy_inversion + screen_y;
		windll.user32.SetCursorPos(sx, sy) # автоцентрирование курсора мыши при выходе из режима обзора

if Joy_stat:
	windll.user32.GetCursorPos(byref(pt))
	if pt.x > 65536: mouse_x = 0 # добавлено, так как при выходе значения за пределы int, происходил вылет скрипта
	else: mouse_x = pt.x
	if pt.y > 65536: mouse_y = 0 # добавлено, так как при выходе значения за пределы int, происходил вылет скрипта
	else: mouse_y = pt.y
	# положение джойстика определяется как положение мыши на экране - половина ширина экрана умноженная на увеличитель и разделенная на уточнитель
	# далее идет умножение на масштаб оси к экрану и задание инверсии, если она есть
	x = (mouse_x - screen_x) * multipler_x / preci * scale_Vx / scale_Rx * axisx_inversion
	y = (mouse_y - screen_y) * multipler_y / preci * scale_Vy / scale_Ry * axisy_inversion
	if vJoy_Alt or vJoy_Control: # Альтернативное управление - ось Х на руль
		vJoy[0].z = x * scale_Vz / scale_Rz * axisz_inversion
	else:
		vJoy[0].x = x
	vJoy[0].y = y
	vJoy[0].rz = vJoy[0].z
	
	## Тяга на колёсике мышки
	## Шаг 5% (1/20)
	## Осторожно с фокусом мышки: одновременно крутит тягу и меняет значение ручек в фокусе!!!
	if throttleMin: slider = -maxAxis / 2
	if throttleMax: slider = maxAxis / 2
	if throttleUp: slider += step
	if throttleDown: slider -= step
	if slider < -maxAxis / 2: slider = -maxAxis / 2;	
	if slider > maxAxis / 2: slider = maxAxis / 2;
	if vJoy[0].slider != slider: winsound.Beep(int((slider+maxAxis)*2/tetra[2]),50)
	vJoy[0].slider = slider;

# Let's test		
diagnostics.watch(Freeview)
diagnostics.watch(Joy_stat)
diagnostics.watch(vJoy_Enabled)
diagnostics.watch(vJoy[0].x)
diagnostics.watch(vJoy[0].y)
diagnostics.watch(vJoy[0].z)
diagnostics.watch(vJoy[0].rx)
diagnostics.watch(vJoy[0].ry)
diagnostics.watch(vJoy[0].rz)
diagnostics.watch(vJoy[0].slider)
