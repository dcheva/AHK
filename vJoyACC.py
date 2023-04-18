#@ dcheva 18.04.23
# Чтобы запустить скрипт, нажмите Script -> Run Script (F5)
# Чтобы начать обработку ввода и захватить мышь, нажмите rCTRL+M (сочетание клавиш можно изменить в разделе "НАЗНАЧЕНИЕ КЛАВИШ")
# Чтобы остановить обработку ввода и освободить мышь, снова нажмите rCTRL+M или ESCAPE
## Read first: https://steamcommunity.com/sharedfiles/filedetails/?l=polish&id=2514840344

from ctypes import windll
from mmap import mmap
from struct import unpack
#@ Add sounds
import winsound, time

if starting:

# *** ПАРАМЕТРЫ ***
# Можно менять значения после знака "="
# Разное
	disableOnEsc = True							# [True;False] останавливать обработку ввода при нажатии Escape
	cursorHide = False							# [True;False] прятать курсор мыши
	cursorHideCorner = 4						# [1..4] угол экрана, в котором прятать курсор мыши: 1 - верхн.лев., 2 - верхн.прав., 3 - нижн.лев., 4 - нижн.прав.
	vJoyDeviceID = 1							# [1..15] № джойстика в vJoyConf
	sysOverclock = False						# [True;False] системный таймер: False - 64Гц (стандарт Windows), True - 1кГц  
	sysExecInterval = 1							# [1..10] делитель для системного таймера 1кГц. Частное двух чисел - частота выполнения скрипта; чем она выше, тем меньше задержка ввода, но выше нагрузка на комп 
	diagWatch = True							# [True;False] вывод в Watch
# Руль
	steerSensitivity = 50						# [1..100] чувствительность руля в нейтральном положении
	steerNonlinearity = 25						# [0..900] на сколько % чувствительность руля в крайних положениях выше, чем в нейтральном
# Педали и ручник
	mouseThrottleBrake = False					# [True;False] газ и тормоз кнопками мыши
	throttlePushRate = 100						#@ i3 100 i5 10	# [1..100] скорость нажатия газа
	throttleReleaseRate = 20					#@ i3 20 i5 2	# [1..100] скорость отпускания газа
	brakePushRate = 100							# [1..100] скорость нажатия тормоза
	brakeReleaseRate = 20						# [1..100] скорость отпускания тормоза
	clutchPushRate = 100						# [1..100] скорость нажатия сцепления
	clutchReleaseRate = 20						# [1..100] скорость отпускания сцепления
	handbrakePushRate = 100						# [1..100] скорость нажатия ручника
	handbrakeReleaseRate = 100					# [1..100] скорость отпускания ручника
# Автосцепление
	autoClutch = False							# [True;False] прожимать сцепление и отпускать газ при переключении передач
	autoThrottleBlip = False					# [True;False] перегазовка при понижении передачи
	throttleClutchBlipRate = 50					# [1..100] скорость автоматического нажатия/отпускания газа и сцепления
# Регулировка газа (увеличение/уменьшение максимальной глубины нажатия педали колесиком мыши и/или клавишами клавиатуры)
	throttleAdjust1Enabled = True				# [True;False] включить регулировку газа
	mouseWheelThrottleAdjust = True				# [True;False] регулировать колесиком мыши
	throttleAdjustMin = 50						# [0..100] нижняя граница регулировки (% хода педали)
	throttleAdjustStep = 10						# [0..50] шаг регулировки (% хода педали)
# Регулировка газа альтернативная (уменьшение максимальной глубины нажатия педали при удержании клавиш-модификаторов)
	throttleAdjust2Enabled = False				# [True;False] включить альтернативную регулировку газа (выключает обычную)
	throttleLimit1 = 85							# [0..100] максимальная глубина нажатия газа при удержании клавиши keyThrottleLimit1
	throttleLimit2 = 70							# [0..100] максимальная глубина нажатия газа при удержании клавиши keyThrottleLimit2
	throttleLimit3 = 55							# [0..100] максимальная глубина нажатия газа при удержании клавиши keyThrottleLimit3
# Регулировка тормоза (увеличение/уменьшение максимальной глубины нажатия педали колесиком мыши и/или клавишами клавиатуры)
	brakeAdjust1Enabled = True					# [True;False] включить регулировку тормоза
	mouseWheelBrakeAdjust = False				# [True;False] регулировать колесиком мыши
	brakeAdjustMin = 50							# [0..100] нижняя граница регулировки (% хода педали)
	brakeAdjustStep = 10						# [0..50] шаг регулировки (% хода педали)
# Регулировка тормоза альтернативная (уменьшение максимальной глубины нажатия педали при удержании клавиш-модификаторов)
	brakeAdjust2Enabled = False					# [True;False] включить альтернативную регулировку тормоза (выключает обычную)
	brakeLimit1 = 85							# [0..100] максимальная глубина нажатия тормоза при удержании клавиши keyBrakeLimit1
	brakeLimit2 = 70							# [0..100] максимальная глубина нажатия тормоза при удержании клавиши keyBrakeLimit2
	brakeLimit3 = 55							# [0..100] максимальная глубина нажатия тормоза при удержании клавиши keyBrakeLimit3
# Противобуксовочная система (только Assetto Corsa & AC:Competizione)
	tractionControl = False						# [True;False] включить ПБС
	drivetrain = 1								# [0..2] привод автомобиля: 0 - передний, 1 - задний, 2 - полный
	tcSlipMin = 0.5								# [0..10] проскальзывание, при котором ПБС начинает отпускать газ
	tcSlipMax = 1.5								# [0..10] проскальзывание, при котором ПБС максимально отпускает газ
	tcPower = 50								# [0..100] сила ПБС (макс % сброса газа)
	tcPowerStep = 10							# [0..50] шаг регулировки силы ПБС
# Антиблокировочная система (только Assetto Corsa & AC:Competizione)
	antilockBrakes = False						# [True;False] включить АБС
	absSlipMin = 1.0							# [0..10] проскальзывание, при котором АБС начинает отпускать тормоз
	absSlipMax = 4.0							# [0..10] проскальзывание, при котором АБС максимально отпускает тормоз
	absPower = 50								# [0..100] сила АБС (макс % сброса тормоза)
	absPowerStep = 10							# [0..50] шаг регулировки силы АБС

# *** НАЗНАЧЕНИЕ КЛАВИШ ***
# Можно менять значения после знака "="
# "=Key.A" назначает клавишу "A", "=None" не назначает никакую клавишу (заглушка)
	keySwitch1st = Key.F5						# обработка ввода: вкл/выкл (первая из сочетания клавиш)
	keySwitch2nd = None							# обработка ввода: вкл/выкл (вторая клавиша из сочетания. Чтобы использовать только первую клавишу, поставьте "=None")
	keyThrottle = Key.A							# газ (ЛКМ, если mouseThrottleBrake = True)
	keyBrake = Key.Z							# тормоз (ПКМ, если mouseThrottleBrake = True)
	keyClutch = None							# сцепление
	keyHandbrake = Key.Space					# ручник
	keyGearUp = Key.S							# повысить передачу
	keyGearDown = Key.X							# понизить передачу
	keyThrottleAdjustUp = None					# регулировка газа: увеличить максимальную глубину нажатия педали
	keyThrottleAdjustDown = None				# регулировка газа: уменьшить максимальную глубину нажатия педали
	keyThrottleLimit1 = None					# регулировка газа альтернативная: уменьшить максимальную глубину нажатия педали до throttleLimit1 (при удержании)
	keyThrottleLimit2 = None					# регулировка газа альтернативная: уменьшить максимальную глубину нажатия педали до throttleLimit2 (при удержании)
	keyThrottleLimit3 = None					# регулировка газа альтернативная: уменьшить максимальную глубину нажатия педали до throttleLimit3 (при удержании)
	keyBrakeLimit1 = None						# регулировка тормоза альтернативная: уменьшить максимальную глубину нажатия педали до brakeLimit1 (при удержании)
	keyBrakeLimit2 = None						# регулировка тормоза альтернативная: уменьшить максимальную глубину нажатия педали до brakeLimit2 (при удержании)
	keyBrakeLimit3 = None						# регулировка тормоза альтернативная: уменьшить максимальную глубину нажатия педали до brakeLimit3 (при удержании)
	keyBrakeAdjustUp = Key.D					# регулировка тормоза: увеличить глубину нажатия педали
	keyBrakeAdjustDown = Key.C					# регулировка тормоза: уменьшить глубину нажатия педали
	keyTcPowerUp = Key.L						# ПБС: увеличить силу
	keyTcPowerDown = Key.K						# ПБС: уменьшить силу
	keyAbsPowerUp = Key.P						# АБС: увеличить силу
	keyAbsPowerDown = Key.O						# АБС: уменьшить силу
	#@TODO add engine map keys

	#@ Move global variables here
	screenWidth, screenHeight = windll.user32.GetSystemMetrics(0), windll.user32.GetSystemMetrics(1)
	penta = [131,165,196,220,262,330,392,440,524,660,784,880,1047,1319,1568,1760,2093]
		
# *** ДАЛЕЕ НЕ МЕНЯТЬ *** #@ Sure?
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
		"""
		vJoyDevice.x = steerAxis
		vJoyDevice.y = throttleAxis
		vJoyDevice.z = brakeAxis
		vJoyDevice.rx = clutchAxis
		vJoyDevice.ry = handbrakeAxis
		vJoyDevice.setButton(0, isKeyDown(keyGearUp))
		vJoyDevice.setButton(1, isKeyDown(keyGearDown))

	def steerHandler(axisPos, sensitivity, nonlinearity, axisMax):
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
		value = repairValue(value, valueMin, valueMax)
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
	
	def aidPowerAdjust(aidPower, aidPowerMin, aidPowerMax, aidPowerStep, keyPowerUp, keyPowerDown):
		"""Изменяет силу АБС/ПБС. Возвращает новую силу.
		Аргументы:
		aidPower - текущая сила
		aidPowerMin - минимальная сила
		aidPowerMax - максимальная сила
		aidPowerStep - шаг регулировки силы
		keyPowerUp - клавиша увеличения силы
		keyPowerDown - клавиша уменьшения силы
		"""
		powerUpPressed = isKeyPressed(keyPowerUp)
		powerDownPressed = isKeyPressed(keyPowerDown)
		if powerUpPressed or powerDownPressed:
			aidPower = adjustValueByInput(aidPower, aidPowerMin, aidPowerMax, aidPowerStep, powerUpPressed, powerDownPressed)
		return aidPower
	
	def pedalAid(pedalPosCurrent, pedalPosMin, slipMin, slipMax, wheelSlipFL, wheelSlipFR, wheelSlipRl, wheelSlipRR, drivetrain = 2):
		"""Отпускает нажатую педаль по мере увеличения проскальзывания колес. Возвращает позицию на оси педали.
		Аргументы:
		pedalPosCurrent - текущая позиция педали
		pedalPosMin - позиция педали при максимальном проскальзывании
		slipMin - проскальзывание, при котором начнется отпускание педали
		slipMax - проскальзывание, при котором педаль будет отпущена максимально
		wheelSlipFL - проскальзывание переднего левого колеса
		wheelSlipFR - проскальзывание переднего правого колеса
		wheelSlipRL - проскальзывание заднего левого колеса
		wheelSlipRR - проскальзывание заднего правого колеса
		drivetrain - привод автомобиля: 0 - передний, 1 - задний, другое - полный
		"""
		if drivetrain == 0:
			slip = max(wheelSlipFL, wheelSlipFR)
		elif drivetrain == 1:
			slip = max(wheelSlipRL, wheelSlipRR)
		else:
			slip = max(wheelSlipFL, wheelSlipFR, wheelSlipRL, wheelSlipRR)
		if slip < slipMin:
			return pedalPosCurrent
		elif slip > slipMax:
			return pedalPosMin
		else:
			pedalPosNew = (pedalPosMin - max(pedalPosMin, pedalPosCurrent)) / (slipMax - slipMin) * (slip - slipMin) + pedalPosCurrent
			pedalPosNew = repairValue(pedalPosNew, pedalPosMin, pedalPosCurrent)
			return pedalPosNew

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
	enabled = throttleBlocked = clutchBlocked = False
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
		acPhysics = mmap(0, 72, tagname='acpmf_physics')
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
	#@ Center if enabled to prewent crashes after pause
	#@TODO add beep soundf here
	if enabled:
		cursorPosX, cursorPosY = screenWidth / 2, screenHeight / 2
		windll.user32.SetCursorPos(cursorPosX, cursorPosY)
   		## Озвучка переключения - вкл
   		winsound.Beep(penta[3],50)
   		winsound.Beep(penta[5],50)
	else:
   		winsound.Beep(penta[5],50)
   		winsound.Beep(penta[3],50)

	if cursorHide:
		cursorMove()
	steerAxis = 0
	throttleAxis = brakeAxis = clutchAxis = handbrakeAxis = -axisMax
	vJoyUpdate(vJoyDevice, steerAxis, throttleAxis, brakeAxis, clutchAxis, handbrakeAxis)

if enabled:
	vJoyUpdate(vJoyDevice, steerAxis, throttleAxis, brakeAxis, clutchAxis, handbrakeAxis, keyGearUp, keyGearDown)
	if cursorHide:
		cursorMove(cursorHideCorner)

# Руль
	steerAxis = steerHandler(steerAxis, steerSensitivity, steerNonlinearity, axisMax)
	#@TODO add center on LMB and view on RMB mouse buttons

# Газ
	if throttleBlocked:
		throttlePushRateOverride = throttleReleaseRateOverride = throttleClutchBlipRate
	else:
		throttlePressed = mouseThrottleBrake and mouse.leftButton or isKeyDown(keyThrottle)
		throttlePushRateOverride, throttleReleaseRateOverride = throttlePushRate, throttleReleaseRate
	throttleAxis = pedalHandler(throttleAxis, throttlePressed, throttlePushRateOverride, throttleReleaseRateOverride, keyRateMult, -axisMax, throttleMax)

# Тормоз
	brakePressed = mouseThrottleBrake and mouse.rightButton or isKeyDown(keyBrake)
	brakeAxis = pedalHandler(brakeAxis, brakePressed, brakePushRate, brakeReleaseRate, keyRateMult, -axisMax, brakeMax)

# Сцепление
	if clutchBlocked:
		clutchPushRateOverride = clutchReleaseRateOverride = throttleClutchBlipRate
	else:
		clutchPressed = isKeyDown(keyClutch)
		clutchPushRateOverride, clutchReleaseRateOverride = clutchPushRate, clutchReleaseRate
	clutchAxis = pedalHandler(clutchAxis, clutchPressed, clutchPushRateOverride, clutchReleaseRateOverride, keyRateMult, -axisMax, axisMax)

# Ручник
	handbrakePressed = isKeyDown(keyHandbrake)
	handbrakeAxis = pedalHandler(handbrakeAxis, handbrakePressed, handbrakePushRate, handbrakeReleaseRate, keyRateMult, -axisMax, axisMax)

# Регулировка газа
	if throttleAdjust1Enabled or throttleAdjust2Enabled:
		if throttleAdjust1Enabled and not throttleAdjust2Enabled:
			throttleAdjustUpPressed = mouseWheelThrottleAdjust and mouse.wheelUp or isKeyPressed(keyThrottleAdjustUp)
			throttleAdjustDownPressed = mouseWheelThrottleAdjust and mouse.wheelDown or isKeyPressed(keyThrottleAdjustDown)
			if throttleAdjustUpPressed or throttleAdjustDownPressed:
				throttleMax = adjustValueByInput(throttleMax, throttleAdjustMin, axisMax, throttleAdjustStep, throttleAdjustUpPressed, throttleAdjustDownPressed)
		elif throttleAdjust2Enabled:
			throttleMax = valueByKeyDown(axisMax, throttleLimit1, throttleLimit2, throttleLimit3, keyThrottleLimit1, keyThrottleLimit2, keyThrottleLimit3)

# Регулировка тормоза
	if brakeAdjust1Enabled or brakeAdjust2Enabled:
		if brakeAdjust1Enabled and not brakeAdjust2Enabled:
			brakeAdjustUpPressed = mouseWheelBrakeAdjust and mouse.wheelUp or isKeyPressed(keyBrakeAdjustUp)
			brakeAdjustDownPressed = mouseWheelBrakeAdjust and mouse.wheelDown or isKeyPressed(keyBrakeAdjustDown)
			if brakeAdjustUpPressed or brakeAdjustDownPressed:
				brakeMax = adjustValueByInput(brakeMax, brakeAdjustMin, axisMax, brakeAdjustStep, brakeAdjustUpPressed, brakeAdjustDownPressed)
		elif brakeAdjust2Enabled:
			brakeMax = valueByKeyDown(axisMax, brakeLimit1, brakeLimit2, brakeLimit3, keyBrakeLimit1, keyBrakeLimit2, keyBrakeLimit3)

# Автосцепление
	if autoClutch:
		if clutchBlocked:
			if clutchAxis == axisMax:
				clutchPressed = throttlePressed = False
			elif clutchAxis == -axisMax:
				clutchBlocked = throttleBlocked = False
		elif not clutchPressed:
			if isKeyPressed(keyGearUp):
				clutchBlocked = throttleBlocked = clutchPressed = True
				throttlePressed = False
			if isKeyPressed(keyGearDown):
				clutchBlocked = throttleBlocked = clutchPressed = True
				throttlePressed = autoThrottleBlip

# ПБС & АБС
	if tractionControl or antilockBrakes:
		wheelSlipFL = float(''.join(map(str, unpack('f', acPhysics[56:60]))))
		wheelSlipFR = float(''.join(map(str, unpack('f', acPhysics[60:64]))))
		wheelSlipRL = float(''.join(map(str, unpack('f', acPhysics[64:68]))))
		wheelSlipRR = float(''.join(map(str, unpack('f', acPhysics[68:72]))))
		if tractionControl:
			tcPower = aidPowerAdjust(tcPower, 0, 2 * axisMax, tcPowerStep, keyTcPowerUp, keyTcPowerDown)
			if throttlePressed and not throttleBlocked:
				throttleAxis = pedalAid(throttleAxis, axisMax - tcPower, tcSlipMin, tcSlipMax, wheelSlipFL, wheelSlipFR, wheelSlipRL, wheelSlipRR, drivetrain)
		if antilockBrakes:
			absPower = aidPowerAdjust(absPower, 0, 2 * axisMax, absPowerStep, keyAbsPowerUp, keyAbsPowerDown)
			if brakePressed:
				brakeAxis = pedalAid(brakeAxis, axisMax - absPower, absSlipMin, absSlipMax, wheelSlipFL, wheelSlipFR, wheelSlipRL, wheelSlipRR)

if diagWatch:
	diagnostics.watch(steerAxis)
	diagnostics.watch(throttleAxis)
	diagnostics.watch(brakeAxis)
	diagnostics.watch(clutchAxis)
	diagnostics.watch(handbrakeAxis)
	diagnostics.watch(throttleMax)
	diagnostics.watch(brakeMax)
	if throttleAdjust1Enabled:
		diagnostics.watch(throttleAdjustMin)
		diagnostics.watch(throttleAdjustStep)
	if throttleAdjust2Enabled:
		diagnostics.watch(throttleLimit1)
		diagnostics.watch(throttleLimit2)
		diagnostics.watch(throttleLimit3)
	if brakeAdjust1Enabled:
		diagnostics.watch(brakeAdjustMin)
		diagnostics.watch(brakeAdjustStep)
	if brakeAdjust2Enabled:
		diagnostics.watch(brakeLimit1)
		diagnostics.watch(brakeLimit2)
		diagnostics.watch(brakeLimit3)
	if tractionControl or antilockBrakes:
		diagnostics.watch(wheelSlipFL)
		diagnostics.watch(wheelSlipFR)
		diagnostics.watch(wheelSlipRL)
		diagnostics.watch(wheelSlipRR)
		if tractionControl:
			diagnostics.watch(tcSlipMin)
			diagnostics.watch(tcSlipMax)
			diagnostics.watch(tcPower)
			diagnostics.watch(tcPowerStep)
		if antilockBrakes:
			diagnostics.watch(absSlipMin)
			diagnostics.watch(absSlipMax)
			diagnostics.watch(absPower)
			diagnostics.watch(absPowerStep)