import time
#from System import Int16
#from ctypes import windll, Structure, c_ulong, byref
   
if starting:
	vJoy_Key = Key.CapsLock # кнопка на клавиатуре включающая режим управления джойстика мышкой
	steps = [0,4,8,12,16,20,24,28,32,-32,-28,-24,-20,-16,-12,-8,-4]
	currentX = 0
	lastX = 0
	newX = 0
	currentStep = 0
	currentStepN = -0
	lastStep = 0
	
################################################################
## Let's dance
################################################################

currentX = joystick[1].x
cp = currentX - lastX
if cp != 0: 
	currentStep = cp

if lastX <> currentX:
	if currentStep > 0 and lastStep < 0:
		currentStepN = 0
	if currentStep < 0 and lastStep > 0:
		currentStepN = 0
	if currentStep > 0 and lastStep > 0:
		currentStepN += 1
	if currentStep < 0 and lastStep < 0:
		currentStepN -= 1
	if currentStepN > 8:
		currentStepN = 8
	if currentStepN < -8:
		currentStepN = -8
		
	if abs(lastX + steps[currentStepN]) < abs(currentX):
		if currentStepN == 0 and currentX > lastX:
			currentStepN = 1
		elif currentStepN == 0 and currentX < lastX:
			currentStepN = -1
		newX = lastX + steps[currentStepN]
		currentStep = steps[currentStepN]
	else: 
		newX = currentX
	
lastX = currentX
lastStep = currentStep

vJoy[0].x = newX
vJoy[0].y = joystick[1].y
vJoy[0].z = joystick[1].z

################################################################
diagnostics.watch(currentStepN)
diagnostics.watch(lastStep)
diagnostics.watch(lastX)
diagnostics.watch(currentStep)
diagnostics.watch(currentX)
diagnostics.watch(newX)
################################################################
diagnostics.watch(joystick[1].x)
diagnostics.watch(joystick[1].y)
diagnostics.watch(joystick[1].z)
################################################################
diagnostics.watch(vJoy[0].x)
diagnostics.watch(vJoy[0].y)
diagnostics.watch(vJoy[0].z)
################################################################
