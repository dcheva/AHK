#### by cheva (c) MIT 2012-2023 
#### MSFS MouseJoke FreePie VJoy and Voice Commands
#### @vesion 0.2306.1a
#### @github https://github.com/dcheva/AHK/blob/main/vJoyMSFS.py
#### @pastebin https://pastebin.com/H3eJHzNB
#### @files at https://drive.google.com/drive/folders/1sUrhqyiA2Zfj1OTt9bcohxHUi5pMzQLk
#### C:\Projects\AHK\vJoyMSFS.py

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

	vJoy_Key = Key.CapsLock # кнопка на клавиатуре включающая режим управления джойстика мышкой
	vJoy_Reset = Key.Backspace # Центровка по Backspace

	Joy_stat = False # данный флаг используется для включения с клавиатуры, передачи данных на джойстик
	vJoy_Enabled = False # данный флаг используется для временного отключения джойстика зажатой ПКМ
	vJoy_Control = False # флаг нажатой клавиши Control
	vJoy_Shift = False # флаг нажатой клавиши Shift
	vJoy_LeftAlt = False # флаг нажатой клавиши Alt
	vJoy_RightAlt = False # Альтернативное управление - ось Х на руль направления

	vJoy_LControl = Key.LeftControl # Привязка к Control
	vJoy_RControl = Key.RightControl # Привязка к Control
	vJoy_LShift = Key.LeftShift # Привязка к Shift
	vJoy_RShift = Key.RightShift # Привязка к Shift
	vJoy_LAlt = Key.LeftAlt # Привязка к Alt
	vJoy_RAlt = Key.RightAlt # Привязка к Alt

	vJoy_Freeview = False # флаг временного выключения режима управления джойстика мышкой
	Freeview = False # флаг временного выключения режима управления джойстика мышкой
	Zooming = False

	screen_x = int(windll.user32.GetSystemMetrics(0) / 2) # размер экрана
	screen_y = int(windll.user32.GetSystemMetrics(1) / 2)
	sx = screen_x
	sy = screen_y
	
	maxAxis = 32768;
	## Для оси газа, пропеллера и смеси
	slider  = int(-maxAxis / 2) # Throttle:  slider or rz (F1-F4)
	slider2 = int(maxAxis / 2)  # Propeller: rx (Control + F1-F4)
	slider3 = int(maxAxis / 2)  # Mixture:   ry (CtrlShift F1-F4)
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
## ЛКМ на кнопку джоя - кнопку тормоза
if Joy_stat: vJoy[0].setButton(0, mouse.getButton(0))

## vJoy_RightAlt: # Альтернативное управление - ось Х на руль

## Привязка статуса Control
vJoy_Control = False
if keyboard.getKeyDown(vJoy_LControl): vJoy_Control = True
if keyboard.getKeyDown(vJoy_RControl): vJoy_Control = True

## Привязка статуса Shift
vJoy_Shift = False
if keyboard.getKeyDown(vJoy_LShift): vJoy_Shift = True
if keyboard.getKeyDown(vJoy_RShift): vJoy_Shift = True

## Привязка статуса Alt
vJoy_LeftAlt = False
vJoy_RightAlt = False
## !!!FIX RightAlt + MouseScroll to throttle change on takeoff/landing
## @TODO test it in @vesion 0.2305.15a
if keyboard.getKeyDown(vJoy_LAlt): # vJoy_Alt = True
	vJoy_LeftAlt = True
if keyboard.getKeyDown(vJoy_RAlt): # vJoy_Alt = True
	vJoy_RightAlt = True

Click = mouse.getPressed(0)
F1 = keyboard.getPressed(Key.F1)
F2 = keyboard.getPressed(Key.F2)
F3 = keyboard.getPressed(Key.F3)
F4 = keyboard.getPressed(Key.F4)

Freeview = mouse.rightButton # MSFS:: правая кнопка на мышке включает свободный обзор. 
## Freeview = keyboard.getKeyDown(Key.V) # пример для кнопки на клавиатуре для свободного обзора
## mouse.middleButton .rightButton .leftButton - средняя, правая или левая кнопка мыши и т.п.
ScrollUp = mouse.wheelUp
ScrollDn = mouse.wheelDown

############################################################################################
# Throtttle control 0.2305.12a
# F1 -> throttleOff
# F2 -> throttleDown
# F3 -> throttleUp
# F1 -> throttleMax
# Also mousewheel binded on Up and Down
# scroll up   -> throtteUp
# scroll down -> throttleDown
# Do not change if left Coltrol, Alt or Shift pressed due to Propeller and other binds
throttleChange = not vJoy_Control and not vJoy_Shift and not vJoy_LeftAlt
propellerChange = vJoy_Control and not vJoy_Shift and not vJoy_LeftAlt
mixtureChange = vJoy_Control and vJoy_Shift and not vJoy_LeftAlt

throttleMin   = throttleChange and F1
throttleMax   = throttleChange and F4
throttleDown  = throttleChange and (F2 or ScrollDn) 
throttleUp    = throttleChange and (F3 or ScrollUp)

## Added Propeller and Mixture control v0.2305.12a
propellerMin   = propellerChange and F1
propellerMax   = propellerChange and F4
propellerDown  = propellerChange and (F2 or ScrollDn) 
propellerUp    = propellerChange and (F3 or ScrollUp)

mixtureMin   = mixtureChange and F1
mixtureMax   = mixtureChange and F4
mixtureDown  = mixtureChange and (F2 or ScrollDn) 
mixtureUp    = mixtureChange and (F3 or ScrollUp)
############################################################################################

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
	
## Zoom on scroll in FreeVew mode (when RMB pressed) v0.2306.1a
if Freeview:
	if Zooming:
		## @TODO через колено работает нажатие кнопки и ось контроллера для зума - что делать?
		Zooming = False
		# Бип (для проверки): 
		winsound.Beep(tetra[0],20)
		keyboard.setKeyUp(Key.Equals)
		keyboard.setKeyUp(Key.Minus)
	if ScrollUp: 
		Zooming = True
		keyboard.setKeyDown(Key.Equals)
	if ScrollDn: 
		Zooming = True
		keyboard.setKeyDown(Key.Minus)

## Switch Joy Stat mode on vJoy Enabled
if vJoy_Enabled:
	# Бип если нажата левая кнопка (для проверки):
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

## Main block
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
	if vJoy_RightAlt: # Альтернативное управление - ось Х на руль
		vJoy[0].z = x * scale_Vz / scale_Rz * axisz_inversion
	else:
		vJoy[0].x = x
	vJoy[0].y = y
	## @TODO Зачем продублировал ось??
	vJoy[0].rz = vJoy[0].z
	
	## You can shift this block to the left to use controls when vJoy disabled by Caps
	## Если сдвинуть этот блок вправо, можно контролировать F1-F4 с выключенным VJoy
	## Тяга на колёсике мышки
	## Шаг 5% (1/20)
	## Осторожно с фокусом мышки: одновременно крутит тягу и меняет значение ручек в фокусе!!!
	if throttleMin: slider = -maxAxis / 2
	if throttleMax: slider = maxAxis / 2
	if throttleUp: slider += step
	if throttleDown: slider -= step
	if slider < -maxAxis / 2: slider = -maxAxis / 2;	
	if slider > maxAxis / 2: slider = maxAxis / 2;
	if vJoy[0].slider != slider: winsound.Beep(int((slider+maxAxis)*2/tetra[1]),50)
	vJoy[0].slider = slider;
	## Added Propeller and Mixture control v0.2305.12a
	## @TODO test and refactor
	if propellerMin: slider2 = -maxAxis / 2
	if propellerMax: slider2 = maxAxis / 2
	if propellerUp: slider2 += step
	if propellerDown: slider2 -= step
	if slider2 < -maxAxis / 2: slider2 = -maxAxis / 2;	
	if slider2 > maxAxis / 2: slider2 = maxAxis / 2;
	if vJoy[0].rx != slider2: winsound.Beep(int((slider2+maxAxis)*2/tetra[1]),50)
	vJoy[0].rx = slider2;
	if mixtureMin: slider3 = -maxAxis / 2
	if mixtureMax: slider3 = maxAxis / 2
	if mixtureUp: slider3 += step
	if mixtureDown: slider3 -= step
	if slider3 < -maxAxis / 2: slider3 = -maxAxis / 2;	
	if slider3 > maxAxis / 2: slider3 = maxAxis / 2;
	if vJoy[0].ry != slider3: winsound.Beep(int((slider3+maxAxis)*2/tetra[1]),50)
	vJoy[0].ry = slider3;
	
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
diagnostics.watch(vJoy_Control)
diagnostics.watch(vJoy_Shift)
diagnostics.watch(vJoy_LeftAlt)
diagnostics.watch(vJoy_RightAlt)
