"""
@author dcheva 
@version GT2.2405.20.1
Pastebin https://pastebin.com/raw/d8zcmVRt
Github https://raw.githubusercontent.com/dcheva/AHK/main/vJoyACCgt2.py

Исходный скрипт и инструкции: https://steamcommunity.com/sharedfiles/filedetails/?l=polish&id=2514840344
!!! ВАЖНО !!! Скорость работы скрипта ЗАВИСИТ от FPS симулятора - здесь все коэфициенты подобраны для I5 9600K @3600MHZ & 1660 GTX @60 FPS

Чтобы запустить скрипт, нажмите Script -> Run Script (F5)
Чтобы начать обработку ввода и захватить мышь, нажмите Caps Lock (сочетание клавиш можно изменить в разделе "НАЗНАЧЕНИЕ КЛАВИШ")
Чтобы остановить обработку ввода и освободить мышь, снова нажмите Caps Lock или ESCAPE

Changelog:
GT2.2405.20 Alt throttle limit 60>80
GT2.2401.26 Mode changing (GT2/GT3 double/single pedals) on Left Control key
v0.2401.24 Steering and Breaking changes
v0.2401.16 Газ и Тормоз: Rate/Limit faster
v0.2310.16 Газ и Тормоз: Alt/Shift Rate/Limit
"""

from ctypes import windll
from struct import unpack

#@ Add sounds
import winsound, time
	
#@ Move global variables here
screenWidth, screenHeight = windll.user32.GetSystemMetrics(0), windll.user32.GetSystemMetrics(1)
tetra = [131,165,196,220,262,330,392,440,524,660,784,880,1047,1319,1568,1760,2093]
reset = False

if starting:
	# @TODO Add and Use function Tetra
	winsound.Beep(tetra[3],50)
	winsound.Beep(tetra[7],50)
	
	tractionControl = False  					# [True;False] включить ПБС !!! выключить в игре
	antilockBrakes = False						# [True;False] включить АБС !!! выключить в игре
	
	# Mode switch GT2.2401.26
	mode = 1

# *** ПАРАМЕТРЫ ***
# Можно менять значения после знака "="
# Разное
	disableOnEsc = True						# [True;False] останавливать обработку ввода при нажатии Escape
	cursorHide = False						# [True;False] прятать курсор мыши
	cursorHideCorner = 4						# [1..4] угол экрана, в котором прятать курсор мыши: 1 - верхн.лев., 2 - верхн.прав., 3 - нижн.лев., 4 - нижн.прав.
	vJoyDeviceID = 1						# [1..15] № джойстика в vJoyConf
	sysOverclock = True						# [True;False] системный таймер: False - 64Гц (стандарт Windows), True - 1кГц  
	sysExecInterval = 10						# [1..10] делитель для системного таймера 1кГц. Частное двух чисел - частота выполнения скрипта; чем она выше, тем меньше задержка ввода, но выше нагрузка на комп 
	diagWatch = True						# [True;False] вывод в Watch
#@ Center if key/button pressed
#@ Сброс (центрирование) руля по нажатию кнопки/клавиши (СКМ/пробел)
	steerCenterEnabled = True	
# Руль v0.2401.24
	steerSensitivity = 20 # 10					# [1..100] чувствительность руля в нейтральном положении
	steerNonlinearity = 400 # 220					# [0..900] на сколько % чувствительность руля в крайних положениях выше, чем в нейтральном
# Педали и ручник
	# Газ
	mouseThrottleBrake = False					# [True;False] газ и тормоз кнопками мыши
	throttlePushRate = 40						# [1..100] скорость нажатия газа
	throttleReleaseRate = 20					# [1..100] скорость отпускания газа
	# Газ: варианты изменения скорости нажатия
	throttleRate = throttlePushRate					# [1..100] скорость изменения оси газа
	throttleShiftLimit = 100					# [1..100] Shift предел изменения оси газа %
	throttleShiftRate = 60						# [1..100] Shift скорость изменения оси газа
	throttleAltLimit = 80						# [1..100] Alt предел изменения оси газа % ### 21.05 60>80
	throttleAltRate = 10						# [1..100] Alt скорость изменения оси газа
	# Тормоз
	brakePushRate = 40							# [1..100] скорость нажатия тормоза
	brakeReleaseRate = 20						# [1..100] скорость отпускания тормоза
	# Тормоз: варианты изменения скорости нажатия
	brakeRate = brakePushRate					# [1..100] скорость изменения оси тормоза
	brakeShiftLimit = 100						# [1..100] Shift предел изменения оси тормоза %
	brakeShiftRate = 60						# [1..100] Shift скорость изменения оси тормоза
	brakeAltLimit = 60						# [1..100] Alt предел изменения оси тормоза %
	brakeAltRate = 10						# [1..100] Alt скорость изменения оси тормоза
	# Сцепление
	clutchPushRate = 40						# [1..100] скорость нажатия сцепления
	clutchReleaseRate = 20						# [1..100] скорость отпускания сцепления
	# Ручник
	handbrakePushRate = 80						# [1..100] скорость нажатия ручника
	handbrakeReleaseRate = 80					# [1..100] скорость отпускания ручника
# Автосцепление
	autoClutch = False						# [True;False] прожимать сцепление и отпускать газ при переключении передач
	autoThrottleBlip = False					# [True;False] перегазовка при понижении передачи
	throttleClutchBlipRate = 50					# [1..100] скорость автоматического нажатия/отпускания газа и сцепления
# Регулировка газа (увеличение/уменьшение максимальной глубины нажатия педали колесиком мыши и/или клавишами клавиатуры)
	throttleAdjust1Enabled = True					# [True;False] включить регулировку газа
	mouseWheelThrottleAdjust = True					# [True;False] включить регулировку газа колесиком мыши
	throttleAdjustMin = 0						# [1..100] нижняя граница регулировки (% хода педали)
	throttleAdjustStep = 10						# [1..50] шаг регулировки (% хода педали)
# Регулировка тормоза (увеличение/уменьшение максимальной глубины нажатия педали колесиком мыши и/или клавишами клавиатуры)
	brakeAdjust1Enabled = True					# [True;False] включить регулировку тормоза
	mouseWheelBrakeAdjust = False					# [True;False] включить регулировку тормоза колесиком мыши
	brakeAdjustMin = 0						# [1..100] нижняя граница регулировки (% хода педали)
	brakeAdjustStep = 10						# [1..50] шаг регулировки (% хода педали)
# Регулировка газа альтернативная (уменьшение максимальной глубины нажатия педали при удержании клавиш-модификаторов)
# !!! Работает ТОЛЬКО при throttleAdjust1Enabled=False
	throttleAdjust2Enabled = False					# [True;False] включить альтернативную регулировку газа (выключает обычную)
	throttleLimit1 = 100						# [0..100] максимальная глубина нажатия газа при удержании клавиши keyThrottleLimit1
	throttleLimit2 = 80						# [0..100] максимальная глубина нажатия газа при удержании клавиши keyThrottleLimit2
	throttleLimit3 = 60						# [0..100] максимальная глубина нажатия газа при удержании клавиши keyThrottleLimit3
# Регулировка тормоза альтернативная (уменьшение максимальной глубины нажатия педали при удержании клавиш-модификаторов)
# !!! Работает ТОЛЬКО при brakeAdjust1Enabled=False
	brakeAdjust2Enabled = False					# [True;False] включить альтернативную регулировку тормоза (выключает обычную)
	brakeLimit1 = 100						# [0..100] максимальная глубина нажатия тормоза при удержании клавиши keyBrakeLimit1
	brakeLimit2 = 80						# [0..100] максимальная глубина нажатия тормоза при удержании клавиши keyBrakeLimit2
	brakeLimit3 = 60						# [0..100] максимальная глубина нажатия тормоза при удержании клавиши keyBrakeLimit3	
# Противобуксовочная система (только Assetto Corsa & AC:Competizione)
	drivetrain = 1							# [0..2] привод автомобиля: 0 - передний, 1 - задний, 2 - полный
	tcSlipMin = 0.5							# [0..10] проскальзывание, при котором ПБС начинает отпускать газ
	tcSlipMax = 1.5							# [0..10] проскальзывание, при котором ПБС максимально отпускает газ
	tcPower = 40							# [0..100] сила ПБС (макс % сброса газа)
	tcPowerStep = 10						# [0..50] шаг регулировки силы ПБС	
# Антиблокировочная система (только Assetto Corsa & AC:Competizione)
	absSlipMin = 1.0						# [0..10] проскальзывание, при котором АБС начинает отпускать тормоз
	absSlipMax = 4.0						# [0..10] проскальзывание, при котором АБС максимально отпускает тормоз
	absPower = 40							# [0..100] сила АБС (макс % сброса тормоза)
	absPowerStep = 10						# [0..50] шаг регулировки силы АБС

# *** НАЗНАЧЕНИЕ КЛАВИШ ***
# Можно менять значения после знака "="
# "=Key.A" назначает клавишу "A", "=None" не назначает никакую клавишу (заглушка)
	keySteerCenter = Key.Space					#@ Center if key pressed
	buttonSteerCenter = mouse.rightButton		#@ Center if button pressed
	keyAlt = Key.LeftAlt						#@ Alt key
	keyShift = Key.LeftShift					#@ Shift key
	keySwitch1st = Key.CapsLock					# обработка ввода: вкл/выкл (первая из сочетания клавиш) !!! Главный выключатель скрипта
	keyGearUp = Key.D						# повысить передачу
	keyGearDown = Key.C						# понизить передачу
	keyBrakeAdjustUp = Key.S					# регулировка тормоза: увеличить глубину нажатия педали
	keyBrakeAdjustDown = Key.X					# регулировка тормоза: уменьшить глубину нажатия педали
	keySwitch2nd = None						# обработка ввода: вкл/выкл (вторая клавиша из сочетания. Чтобы использовать только первую клавишу, поставьте "=None")
	keyThrottle = Key.A						# газ (ЛКМ, если mouseThrottleBrake = True)
	keyBrake = Key.Z						# тормоз (ПКМ, если mouseThrottleBrake = True)
	keyClutch = None						# сцепление
	keyHandbrake = None						# ручник
	keyThrottleAdjustUp = None					# регулировка газа: увеличить максимальную глубину нажатия педали
	keyThrottleAdjustDown = None					# регулировка газа: уменьшить максимальную глубину нажатия педали
	keyThrottleLimit1 = None					# регулировка газа альтернативная: уменьшить максимальную глубину нажатия педали до throttleLimit1 (при удержании)
	keyThrottleLimit2 = None					# регулировка газа альтернативная: уменьшить максимальную глубину нажатия педали до throttleLimit2 (при удержании)
	keyThrottleLimit3 = None					# регулировка газа альтернативная: уменьшить максимальную глубину нажатия педали до throttleLimit3 (при удержании)
	keyBrakeLimit1 = None						# регулировка тормоза альтернативная: уменьшить максимальную глубину нажатия педали до brakeLimit1 (при удержании)
	keyBrakeLimit2 = None						# регулировка тормоза альтернативная: уменьшить максимальную глубину нажатия педали до brakeLimit2 (при удержании)
	keyBrakeLimit3 = None						# регулировка тормоза альтернативная: уменьшить максимальную глубину нажатия педали до brakeLimit3 (при удержании)

# Mode switch GT2.2401.26
	keyModeSwitch = Key.LeftControl

# Противобуксовочная система 
	keyTcPowerUp = None 						# Key.L # ПБС: увеличить силу
	keyTcPowerDown = None 						# Key.K # ПБС: уменьшить силу
# Антиблокировочная система
	keyAbsPowerUp = None 						# Key.P # АБС: увеличить силу
	keyAbsPowerDown = None				 		# Key.O # АБС: уменьшить силу

# *** ДАЛЕЕ НЕ МЕНЯТЬ *** #@ Sure?
#@ More routines
# Mode switch GT2.2401.26
	def modeSwitch(mode):
		if mode == 2:
			mode = 1
			winsound.Beep(tetra[9],50)
		else:
			mode = 2
			winsound.Beep(tetra[7],50)
		return mode
		
#@ Сброс (центрирование) руля
	def doReset(reset):
		cursorPosX, cursorPosY = screenWidth / 2, screenHeight / 2
		windll.user32.SetCursorPos(cursorPosX, cursorPosY)
		return reset
		
	def cursorMove(cursorPos = 0):
		"""Перемещает курсор в угол экрана.
		Аргументы:
		cursorPos: 1 - верхн.лев.угол, 2 - верхн.прав.угол, 3 - нижн.лев.угол, 4 - нижн.прав.угол, другое - центр экрана
		"""
		if cursorPos == 1:
			cursorPosX, cursorPosY = 0, 0
		elif cursorPos == 2:
			cursorPosX, cursorPosY = screenWidth, 0
		elif cursorPos == 3:
			cursorPosX, cursorPosY = 0, screenHeight
		elif cursorPos == 4:
			cursorPosX, cursorPosY = screenWidth, screenHeight
		else:
			cursorPosX, cursorPosY = screenWidth / 2, screenHeight / 2
		windll.user32.SetCursorPos(cursorPosX, cursorPosY)
	
	def repairValue(value, valueMin, valueMax):
		"""Возвращает число value в диапазон допустимых значений [valueMin..valueMax]"""
		if value < valueMin:
			return valueMin
		elif value > valueMax:
			return valueMax
		else:
			return value
	
	def isKeyPressed(key):
		"""Проверяет клавишу на однократное нажатие"""
		return key != None and keyboard.getPressed(key)

	def isKeyDown(key):
		"""Проверяет клавишу на зажатие"""
		return key != None and keyboard.getKeyDown(key)

	def percentToValue(percent, valueMin, valueMax):
		"""Возвращает значение из диапазона [valueMin..valueMax] по проценту percent, беря valueMin за 0% и valueMax за 100%"""
		return (valueMax - valueMin) / 100.0 * percent + valueMin

	def vJoyUpdate(vJoyDevice, steerAxis, throttleAxis, brakeAxis, clutchAxis, handbrakeAxis, keyGearUp = None, keyGearDown = None):
		"""Обновляет оси и кнопки джойстика.
		Аргументы:
		vJoyDevice - № джойстика
		steerAxis - ось руля
		throttleAxis - ось педали газа
		brakeAxis - ось педали тормоза
		clutchAxis - ось педали сцепления
		handbrakeAxis - ось ручного тормоза
		keyGearUp - клавиша повышения передачи
		keyGearDown - клавиша понижения передачи
		Mouse leftButton & rightButton set to vJoy 0 & 1
		"""
		vJoyDevice.x = steerAxis
		vJoyDevice.y = throttleAxis
		vJoyDevice.z = brakeAxis
		vJoyDevice.rx = clutchAxis
		vJoyDevice.ry = handbrakeAxis
		#vJoyDevice.setButton(0, isKeyDown(keyGearUp))
		#vJoyDevice.setButton(1, isKeyDown(keyGearDown))
		vJoyDevice.setButton(0, mouse.leftButton)
		vJoyDevice.setButton(1, mouse.rightButton)
		vJoyDevice.setButton(2, mouse.middleButton)

	def steerHandler(axisPos, sensitivity, nonlinearity, axisMax, reset):
		"""Преобразует ось X мыши в ось руля. Возвращает позицию на оси руля. 
		Аргументы:
		axisPos - текущая позиция руля
		sensitivity - чувствительность руля
		nonlinearity - нелинейность руля
		axisMax - амплитуда оси
		"""
		if nonlinearity:
			sensitivity *= 1 + nonlinearity * abs(axisPos) / axisMax / 100.0
		screenWidthFactor = windll.user32.GetSystemMetrics(0) * 25.0 / axisMax
		if(reset):
			reset = doReset(False)
		else:
			axisPos += mouse.deltaX * sensitivity / screenWidthFactor
			
		axisPos = repairValue(axisPos, -axisMax, axisMax)
		return axisPos

	def pedalHandler(axisPos, keyPressed, pushRate, releaseRate, rateMult, axisMin, axisMax):
		"""Увеличивает значение при нажатой управляющей клавише и уменьшает при отпущенной. Возвращает позицию на оси педали.
		Аргументы:
		axisPos - текущая позиция педали
		keyPressed - нажата ли управляющая клавиша
		pushRate - скорость нажатия педали
		releaseRate - скорость отпускания педали
		rateMult - множитель скорости педали
		axisMin - нижняя граница оси
		axisMax - верхняя граница оси
		"""
		if keyPressed:
			if axisPos < axisMax:
				axisPos += rateMult * pushRate
		elif axisPos > axisMin:
			axisPos -= rateMult * releaseRate
		axisPos = repairValue(axisPos, axisMin, axisMax)
		return axisPos

	def adjustValueByInput(value, valueMin, valueMax, alterStep, alterUp, alterDown):
		"""Изменяет число в заданных границах с шагом при получении управляющих сигналов. Возвращает новое число.
		Аргументы:
		value - исходное число
		valueMin - минимальное значение
		valueMax - максимальное значение
		alterStep - шаг изменения
		alterUp - сигнал увеличения
		alterDown - сигнал уменьшения
		"""
		if alterUp and value < valueMax:
			value += alterStep
		if alterDown and value > valueMin:
			value -= alterStep
		#value = repairValue(value, valueMin, valueMax)
		return value

	def valueByKeyDown(valueDefault, value1, value2, value3, keyValue1, keyValue2, keyValue3):
		"""Возвращает одно из 3-х значений при удержании соответствующих клавиш или значение по умолчанию, если все клавиши отпущены.
		Аргументы:
		valueDefault - значение по умолчанию
		value1 - 1-е значение
		value2 - 2-е значение
		value3 - 3-е значение
		keyValue1 - клавиша, при удержании которой возвращается 1-е значение
		keyValue2 - клавиша, при удержании которой возвращается 2-е значение
		keyValue3 - клавиша, при удержании которой возвращается 3-е значение
		"""
		if isKeyDown(keyValue1):
			return value1
		elif isKeyDown(keyValue2):
			return value2
		elif isKeyDown(keyValue3):
			return value3
		else:
			return valueDefault
	
	# def aidPowerAdjust(aidPower, aidPowerMin, aidPowerMax, aidPowerStep, keyPowerUp, keyPowerDown):
	# 	"""Изменяет силу АБС/ПБС. Возвращает новую силу.
	# 	Аргументы:
	# 	aidPower - текущая сила
	# 	aidPowerMin - минимальная сила
	# 	aidPowerMax - максимальная сила
	# 	aidPowerStep - шаг регулировки силы
	# 	keyPowerUp - клавиша увеличения силы
	# 	keyPowerDown - клавиша уменьшения силы
	# 	"""
	# 	powerUpPressed = isKeyPressed(keyPowerUp)
	# 	powerDownPressed = isKeyPressed(keyPowerDown)
	# 	if powerUpPressed or powerDownPressed:
	# 		aidPower = adjustValueByInput(aidPower, aidPowerMin, aidPowerMax, aidPowerStep, powerUpPressed, powerDownPressed)
	# 	return aidPower
	
	# def pedalAid(pedalPosCurrent, pedalPosMin, slipMin, slipMax, wheelSlipFL, wheelSlipFR, wheelSlipRl, wheelSlipRR, drivetrain = 2):
	# 	"""Отпускает нажатую педаль по мере увеличения проскальзывания колес. Возвращает позицию на оси педали.
	# 	Аргументы:
	# 	pedalPosCurrent - текущая позиция педали
	# 	pedalPosMin - позиция педали при максимальном проскальзывании
	# 	slipMin - проскальзывание, при котором начнется отпускание педали
	# 	slipMax - проскальзывание, при котором педаль будет отпущена максимально
	# 	wheelSlipFL - проскальзывание переднего левого колеса
	# 	wheelSlipFR - проскальзывание переднего правого колеса
	# 	wheelSlipRL - проскальзывание заднего левого колеса
	# 	wheelSlipRR - проскальзывание заднего правого колеса
	# 	drivetrain - привод автомобиля: 0 - передний, 1 - задний, другое - полный
	# 	"""
		
	# 	if drivetrain == 0:
	# 		slip = max(wheelSlipFL, wheelSlipFR)
	# 	elif drivetrain == 1:
	# 		slip = max(wheelSlipRL, wheelSlipRR)
	# 	else:
	# 		slip = max(wheelSlipFL, wheelSlipFR, wheelSlipRL, wheelSlipRR)
	# 	if slip < slipMin:
	# 		return pedalPosCurrent
	# 	elif slip > slipMax:
	# 		return pedalPosMin
	# 	else:
	# 		pedalPosNew = (pedalPosMin - max(pedalPosMin, pedalPosCurrent)) / (slipMax - slipMin) * (slip - slipMin) + pedalPosCurrent
	# 		pedalPosNew = repairValue(pedalPosNew, pedalPosMin, pedalPosCurrent)
	# 		return pedalPosNew

	vJoyDevice = vJoy[vJoyDeviceID - 1]
	if sysOverclock:
		system.setThreadTiming(TimingTypes.HighresSystemTimer)
		system.threadExecutionInterval = sysExecInterval
		keyRateMult = 6.4 * sysExecInterval
	else:
		system.setThreadTiming(TimingTypes.SystemTimer)
		system.threadExecutionInterval = 1
		keyRateMult = 100
	axisMax = vJoyDevice.axisMax + 18
	enabled = False #  = throttleBlocked = clutchBlocked
	steerAxis = 0
	throttleAxis = brakeAxis = clutchAxis = handbrakeAxis = -axisMax
	throttleMax = brakeMax = axisMax
	
	if throttleAdjust1Enabled:
		throttleAdjustMin = percentToValue(throttleAdjustMin, -axisMax, axisMax)
		throttleAdjustStep = percentToValue(throttleAdjustStep, 0, 2 * axisMax)
	if throttleAdjust2Enabled:
		throttleLimit1 = percentToValue(throttleLimit1, -axisMax, axisMax)
		throttleLimit2 = percentToValue(throttleLimit2, -axisMax, axisMax)
		throttleLimit3 = percentToValue(throttleLimit3, -axisMax, axisMax)
		
	if brakeAdjust1Enabled:
		brakeAdjustMin = percentToValue(brakeAdjustMin, -axisMax, axisMax)
		brakeAdjustStep = percentToValue(brakeAdjustStep, 0, 2 * axisMax)
	if brakeAdjust2Enabled:
		brakeLimit1 = percentToValue(brakeLimit1, -axisMax, axisMax)
		brakeLimit2 = percentToValue(brakeLimit2, -axisMax, axisMax)
		brakeLimit3 = percentToValue(brakeLimit3, -axisMax, axisMax)

	if tractionControl or antilockBrakes:
		wheelSlipFL = wheelSlipFR = wheelSlipRL = wheelSlipRR = 0
		if tractionControl:
			tcPower = percentToValue(tcPower, 0, 2 * axisMax)
			tcPowerStep = percentToValue(tcPowerStep, 0, 2 * axisMax)
		if antilockBrakes:
			absPower = percentToValue(absPower, 0, 2 * axisMax)
			absPowerStep = percentToValue(absPowerStep, 0, 2 * axisMax)

if isKeyDown(keySwitch1st) and isKeyPressed(keySwitch2nd) or keySwitch2nd == None and isKeyPressed(keySwitch1st) \
		or enabled and disableOnEsc and keyboard.getPressed(Key.Escape):
	enabled = not enabled
	if enabled:
		reset = doReset(True)
		steerAxis = 0
		throttleAxis = brakeAxis = clutchAxis = handbrakeAxis = -axisMax
		winsound.Beep(tetra[3],50)
		winsound.Beep(tetra[5],50)
	else:
		reset = doReset(False)
		winsound.Beep(tetra[5],50)
		winsound.Beep(tetra[3],50)

	if cursorHide:
		cursorMove()
		
# Mode switch GT2.2401.26
if isKeyPressed(keyModeSwitch):
	mode = modeSwitch(mode)
		
vJoyUpdate(vJoyDevice, steerAxis, throttleAxis, brakeAxis, clutchAxis, handbrakeAxis, keyGearUp, keyGearDown)

if enabled:
	if cursorHide:
		cursorMove(cursorHideCorner)

	# """Get acPhysics G-force values from memory map for AC and ACC
	# """
	# acPhysics = mmap(0, 72, tagname='acpmf_physics')
	# if  acPhysics:
	# 	g1 = float(''.join(map(str, unpack('f', acPhysics[44:48]))))
	# 	g2 = float(''.join(map(str, unpack('f', acPhysics[48:52]))))
	# 	g3 = float(''.join(map(str, unpack('f', acPhysics[52:56]))))
		
	#@ Center on key/button pressed
	if steerCenterEnabled and mouse.rightButton or isKeyPressed(keySteerCenter):
		reset = doReset(True)
		steerAxis = 0
		throttleAxis = brakeAxis = clutchAxis = handbrakeAxis = -axisMax
		vJoyUpdate(vJoyDevice, steerAxis, throttleAxis, brakeAxis, clutchAxis, handbrakeAxis, keyGearUp, keyGearDown)
	# Руль
	steerAxis = steerHandler(steerAxis, steerSensitivity, steerNonlinearity, axisMax, reset)

	# Газ и Тормоз	
	throttlePressed = mouseThrottleBrake and mouse.leftButton or isKeyDown(keyThrottle)
	brakePressed = mouseThrottleBrake and mouse.rightButton or isKeyDown(keyBrake)
	throttleMaxOverride, brakeMaxOverride = throttleMax, brakeMax
	throttlePushRateOverride, throttleReleaseRateOverride = throttlePushRate, throttleReleaseRate
	brakePushRateOverride, brakeReleaseRateOverride = brakePushRate, brakeReleaseRate
	
	if isKeyDown(keyShift): 
		throttlePushRateOverride = throttleShiftRate
		throttleReleaseRateOverride = throttleShiftRate
		throttleMaxOverride = percentToValue(throttleShiftLimit, -axisMax, axisMax)
		brakePushRateOverride = brakeShiftRate
		brakeReleaseRateOverride = brakeShiftRate
		brakeMaxOverride = percentToValue(brakeShiftLimit, -axisMax, axisMax)
	if isKeyDown(keyAlt):
		throttlePushRateOverride = throttleAltRate
		throttleReleaseRateOverride = throttleAltRate
		throttleMaxOverride = percentToValue(throttleAltLimit, -axisMax, axisMax)
		brakePushRateOverride = brakeAltRate
		brakeReleaseRateOverride = brakeAltRate
		brakeMaxOverride = percentToValue(brakeAltLimit, -axisMax, axisMax)
	
	'''
	@TODO in GT2.2401.26
	Add mode switch on hotkey (Left Cintrol) (with sounds)
	- Mode 1 (Default) : Allowed pressing the gas and brake simultaneously when releasing
	- Mode 2 : pressing interrupts releasing

	v0.2310.16 change to Alt-Shift-Rate and fix dual pedals pressed IS NOW 'mode = 2'
	'''

	if mode == 2:
		if isKeyDown(keyThrottle): 
			brakePressed = False
			brakePushRateOverride = 0
			brakeReleaseRateOverride = brakeRate
		if isKeyDown(keyBrake): 
			throttlePressed = False
			throttlePushRateOverride = 0
			throttleReleaseRateOverride = throttleRate
		
	# Газ
	# if throttleBlocked:
	# 	throttlePushRateOverride = throttleReleaseRateOverride = throttleClutchBlipRate
	throttleAxis = pedalHandler(throttleAxis, throttlePressed, throttlePushRateOverride, throttleReleaseRateOverride, keyRateMult, throttleAdjustMin, throttleMaxOverride)

	# Тормоз
	brakeAxis = pedalHandler(brakeAxis, brakePressed, brakePushRateOverride, brakeReleaseRateOverride, keyRateMult, brakeAdjustMin, brakeMaxOverride)
	
	# diagnostics.watch(throttlePushRateOverride)
	# diagnostics.watch(throttleReleaseRateOverride)
	# diagnostics.watch(throttleMaxOverride)
	# diagnostics.watch(brakePushRateOverride)
	# diagnostics.watch(brakeReleaseRateOverride)
	# diagnostics.watch(brakeMaxOverride)

	# # Сцепление
	# if clutchBlocked:
	# 	clutchPushRateOverride = clutchReleaseRateOverride = throttleClutchBlipRate
	# else:
	# 	clutchPressed = isKeyDown(keyClutch)
	# 	clutchPushRateOverride, clutchReleaseRateOverride = clutchPushRate, clutchReleaseRate
	# clutchAxis = pedalHandler(clutchAxis, clutchPressed, clutchPushRateOverride, clutchReleaseRateOverride, keyRateMult, -axisMax, axisMax)

	# # Ручник
	# handbrakePressed = isKeyDown(keyHandbrake)
	# handbrakeAxis = pedalHandler(handbrakeAxis, handbrakePressed, handbrakePushRate, handbrakeReleaseRate, keyRateMult, -axisMax, axisMax)

	# Регулировка газа
	if throttleAdjust1Enabled or throttleAdjust2Enabled:
		ph = 0
		pc = False
		if throttleAdjust1Enabled and not throttleAdjust2Enabled:
			throttleAdjustUpPressed = mouseWheelThrottleAdjust and mouse.wheelUp or isKeyPressed(keyThrottleAdjustUp)
			throttleAdjustDownPressed = mouseWheelThrottleAdjust and mouse.wheelDown or isKeyPressed(keyThrottleAdjustDown)
			if throttleAdjustUpPressed or throttleAdjustDownPressed:
				ph = adjustValueByInput(throttleMax, throttleAdjustMin, axisMax, throttleAdjustStep, throttleAdjustUpPressed, throttleAdjustDownPressed)
				pc = True
		elif throttleAdjust2Enabled:
			ph = valueByKeyDown(axisMax, throttleLimit1, throttleLimit2, throttleLimit3, keyThrottleLimit1, keyThrottleLimit2, keyThrottleLimit3)
			pc = True
		# True/False cheat, потому что 0 == False
		if pc == True: 
			throttleMax = ph
			# @TODO Add and Use function Tetra
			if not throttleAdjust2Enabled: winsound.Beep(tetra[(int)(ph/3280+7)],50)

	# Регулировка тормоза
	if brakeAdjust1Enabled or brakeAdjust2Enabled:
		ph = 0
		pc = False
		if brakeAdjust1Enabled and not brakeAdjust2Enabled:
			brakeAdjustUpPressed = mouseWheelBrakeAdjust and mouse.wheelUp or isKeyPressed(keyBrakeAdjustUp)
			brakeAdjustDownPressed = mouseWheelBrakeAdjust and mouse.wheelDown or isKeyPressed(keyBrakeAdjustDown)
			if brakeAdjustUpPressed or brakeAdjustDownPressed:
				ph = adjustValueByInput(brakeMax, brakeAdjustMin, axisMax, brakeAdjustStep, brakeAdjustUpPressed, brakeAdjustDownPressed)
				pc = True
		elif brakeAdjust2Enabled:
			ph = valueByKeyDown(axisMax, brakeLimit1, brakeLimit2, brakeLimit3, keyBrakeLimit1, keyBrakeLimit2, keyBrakeLimit3)
			pc = True
		# True/False cheat, потому что 0 == False
		if pc == True: 
			brakeMax = ph
			# @TODO Add and Use function Tetra
			if not brakeAdjust2Enabled: winsound.Beep(tetra[(int)(ph/3280+7)],50) 

	# # Автосцепление
	# if autoClutch:
	# 	if clutchBlocked:
	# 		if clutchAxis == axisMax:
	# 			clutchPressed = throttlePressed = False
	# 		elif clutchAxis == -axisMax:
	# 			clutchBlocked = throttleBlocked = False
	# 	elif not clutchPressed:
	# 		if isKeyPressed(keyGearUp):
	# 			clutchBlocked = throttleBlocked = clutchPressed = True
	# 			throttlePressed = False
	# 		if isKeyPressed(keyGearDown):
	# 			clutchBlocked = throttleBlocked = clutchPressed = True
	# 			throttlePressed = autoThrottleBlip

	# # ПБС & АБС
	# if tractionControl or antilockBrakes:
	# 	wheelSlipFL = float(''.join(map(str, unpack('f', acPhysics[56:60]))))
	# 	wheelSlipFR = float(''.join(map(str, unpack('f', acPhysics[60:64]))))
	# 	wheelSlipRL = float(''.join(map(str, unpack('f', acPhysics[64:68]))))
	# 	wheelSlipRR = float(''.join(map(str, unpack('f', acPhysics[68:72]))))
	# 	if tractionControl:
	# 		tcPower = aidPowerAdjust(tcPower, 0, 2 * axisMax, tcPowerStep, keyTcPowerUp, keyTcPowerDown)
	# 		if throttlePressed and not throttleBlocked:
	# 			throttleAxis = pedalAid(throttleAxis, axisMax - tcPower, tcSlipMin, tcSlipMax, wheelSlipFL, wheelSlipFR, wheelSlipRL, wheelSlipRR, drivetrain)
	# 	if antilockBrakes:
	# 		absPower = aidPowerAdjust(absPower, 0, 2 * axisMax, absPowerStep, keyAbsPowerUp, keyAbsPowerDown)
	# 		if brakePressed:
	# 			brakeAxis = pedalAid(brakeAxis, axisMax - absPower, absSlipMin, absSlipMax, wheelSlipFL, wheelSlipFR, wheelSlipRL, wheelSlipRR)

if diagWatch:
	diagnostics.watch('----------')
	diagnostics.watch(steerAxis)
	diagnostics.watch(throttleAxis)
	diagnostics.watch(brakeAxis)
	diagnostics.watch(clutchAxis)
	diagnostics.watch(handbrakeAxis)
	diagnostics.watch('---------')
	diagnostics.watch(throttleMax)
	diagnostics.watch(throttleAdjustMin)
	diagnostics.watch(throttleAdjustStep)
	diagnostics.watch(throttleLimit1)
	diagnostics.watch(throttleLimit2)
	diagnostics.watch(throttleLimit3)
	diagnostics.watch('--------')
	diagnostics.watch(brakeMax)
	diagnostics.watch(brakeAdjustMin)
	diagnostics.watch(brakeAdjustStep)
	diagnostics.watch(brakeLimit1)
	diagnostics.watch(brakeLimit2)
	diagnostics.watch(brakeLimit3)
	diagnostics.watch('-------')
	diagnostics.watch(mode)
	#diagnostics.watch(wheelSlipFL)
	#diagnostics.watch(wheelSlipFR)
	#diagnostics.watch(wheelSlipRL)
	#diagnostics.watch(wheelSlipRR)
	#diagnostics.watch('------')
	#diagnostics.watch(tcSlipMin)
	#diagnostics.watch(tcSlipMax)
	#diagnostics.watch(tcPower)
	#diagnostics.watch(tcPowerStep)
	#diagnostics.watch('-----')
	#diagnostics.watch(absSlipMin)
	#diagnostics.watch(absSlipMax)
	#diagnostics.watch(absPower)
	#diagnostics.watch(absPowerStep)
