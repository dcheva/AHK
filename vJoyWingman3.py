import time
from System import Int16
from ctypes import windll, Structure, c_ulong, byref

class POINT(Structure):
   _fields_ = [("x", c_ulong), ("y", c_ulong)]
   
if starting:
	vJoy_Key = Key.CapsLock # кнопка на клавиатуре включающая режим управления джойстика мышкой
	steps = [0,4,8,12,16,20,24,28,32,-32,-28,-24,-20,-16,-12,-8,-4]
	currentX = 0
	lastX = 0
	currentStep = 0
	lastStep = 0
################################################################
## Let's dance
################################################################
currentX = joystick[1].x
cp = currentX - lastX
################################
if cp != 0: 
	currentStep = cp

################################
lastX = currentX
lastStep = currentStep
################################
vJoy[0].x = joystick[1].x
vJoy[0].y = joystick[1].y
vJoy[0].z = joystick[1].z
################################################################
diagnostics.watch(currentStep)
diagnostics.watch(lastStep)
################################################################
diagnostics.watch(steps[-2])
################################################################
diagnostics.watch(joystick[1].x)
diagnostics.watch(joystick[1].y)
diagnostics.watch(joystick[1].z)
################################################################
diagnostics.watch(vJoy[0].x)
diagnostics.watch(vJoy[0].y)
diagnostics.watch(vJoy[0].z)
################################################################