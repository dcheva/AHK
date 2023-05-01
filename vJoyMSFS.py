#### by cheva (c) MIT 2012-2023 
#### MSFS MouseJoke FreePie VJoy and Voice Commands
#### @vesion 0.2305.01
#### https://github.com/dcheva/AHK/blob/main/vJoyMSFS.py
#### https://pastebin.com/H3eJHzNB

from System import Int16
from ctypes import windll, Structure, c_ulong, byref
import winsound, time

# Let's define
## Тетратоника в герцах - для звуковой сигнализации событий
tetra = [131,165,196,220,262,330,392,440,524,660,784,880,1047,1319,1568,1760,2093]

class POINT(Structure):
   _fields_ = [("x", c_ulong), ("y", c_ulong)]
  
## From https://github.com/NoxWings/FreePie-Scripts/blob/master/VoiceToKeyboard.py
## Use it to add voice commands as specified in the VoiceCommand class.
class KeyAction:
	def __init__(self, key):
		self.keys = []
		# append or extend (both are valid)
		if isinstance(key, list):
			self.keys.extend(key)
		else:
			self.keys.append(key)
	
	def setKeyDown(self):
		for key in self.keys:
			keyboard.setKeyDown(key)	
		
	def setKeyUp(self):
		for key in self.keys:
			keyboard.setKeyUp(key)	
	
	def setKey(self, down):
		for key in self.keys:
			keyboard.setKey(key, down)
			
	def setKeyPressed(self):
		for key in self.keys:
			#keyboard.setPressed(key)
			keyboard.setKeyDown(key)
			keyboard.setKeyUp(key)
						
	def execute(self):
		raise NotImplementedError("Subclass must implement execute method")

	def update(self, curentTime):
		pass
   
class KeyPress(KeyAction):
	def __init__(self, key, duration = 0.07):
		KeyAction.__init__(self, key)
		self.duration = duration
		self.time = time.time()
		self.needUpdate = False
		
	def execute(self):
		# set the keys down
		self.setKeyDown()
		# start the update timer
		self.time = time.time()
		self.needUpdate = True
			
	def update(self, currentTime):
		if self.needUpdate:
			# determine if we should stop pressing the keys
			if (currentTime - self.time) >= self.duration:
				self.setKeyUp()
				self.needUpdate = False

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
	# speech.say("started.") ; Для использования, нужно настроить голосовой диктор - https://t.ly/_KeN
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
	vJoy_ZoomIn = Key.Equals # Приближение
	vJoy_ZoomOut = Key.Minus # Отдаление
	vJoy_Freeview = False # флаг временного выключения режима управления джойстика мышкой
	Freeview = False # флаг временного выключения режима управления джойстика мышкой
	screen_x = int(windll.user32.GetSystemMetrics(0) / 2) # размер экрана
	screen_y = int(windll.user32.GetSystemMetrics(1) / 2)
	sx = screen_x
	sy = screen_y
	## Для оси газа
	slider = int(-32768 / 2)
	## Для зума при свободном обзоре
	slider2 = 0
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
	multipler_x = preci * 32768 / screen_x / 2
	multipler_y = preci * 32768 / screen_y / 2
	axisx_inversion = 1
	axisy_inversion = 1
	axisz_inversion = 1
			
## Let's dance
Freeview = mouse.rightButton # MSFS:: правая кнопка на мышке включает свободный обзор. 
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
		sx = vJoy[0].x * screen_x / (32768 / 2) * axisx_inversion + screen_x;
		sy = vJoy[0].y * screen_y / (32768 / 2) * axisy_inversion + screen_y;
		windll.user32.SetCursorPos(sx, sy) # автоцентрирование курсора мыши
		stat(Joy_stat)
		if vJoy_Control:
			winsound.Beep(tetra[7],50)

if vJoy_Enabled:
	if Freeview: # деактивация/активация джойстика, если нажата кнопка мыши
		Joy_stat = False
		# vJoy[0].setButton(0, False)
	if not Freeview and Joy_stat == False:
		Joy_stat = True
		vJoy[0].setButton(0 ,mouse.getButton(0)) 
		# move mouse to vJoy position
		sx = vJoy[0].x * screen_x / (32768 / 2) * axisx_inversion + screen_x;
		sy = vJoy[0].y * screen_y / (32768 / 2) * axisy_inversion + screen_y;
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
	if mouse.wheelUp: slider += 32768 / 20; # 5%
	if mouse.wheelDown: slider -= 32768 / 20; # 5%
	if slider < -32768 / 2: slider = -32768 / 2;	
	if slider > 32768 / 2: slider = 32768 / 2;
	if vJoy[0].slider != slider: winsound.Beep(int((slider+32768)/tetra[0]),50)
	vJoy[0].slider = slider;

## Для использования зума в режиме свободного обзора - колёсико мышки на оси ry+
## Работает при нажатой кнопке свободного обзора, не выключается, не сбрасывается при выключении.
## @TODO использовать vJoy[0].slider2 (не работает корректно в МСФС!!!)
if Freeview:	
	if mouse.wheelUp: 
		# Zoom by mouse scroll: increase axe value
		slider2 += 32768 / 100; # 1%
		# Zoom by mouse scroll: press key In
		# KeyPress(vJoy_ZoomIn) # Use later
		keyboard.setKeyDown(vJoy_ZoomIn)
		winsound.Beep(tetra[0],20)
		keyboard.setKeyUp(vJoy_ZoomIn)
	if mouse.wheelDown: 
		# Zoom by mouse scroll: decrease axe value
		slider2 -= 32768 / 100; # 1%
		# Zoom by mouse scroll: press key Out
		# KeyPress(vJoy_ZoomOut) # Use later
		keyboard.setKeyDown(vJoy_ZoomOut)
		winsound.Beep(tetra[0],20)
		keyboard.setKeyUp(vJoy_ZoomOut)
	if slider2 < -32768 / 2: slider2 = -32768 / 2;	
	if slider2 > 32768 / 2: slider2 = 32768 / 2;
	# Zoom by mouse scroll: set axe
	# But in MSFS now realized as flying brick
	# thats whi bind vJoy_ZoomIn/Out keys ("-=" on keyboard)
	vJoy[0].ry = slider2;

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
