import time
#from System import Int16
#from ctypes import windll, Structure, c_ulong, byref
   
if starting:
	vJoy_Key = Key.CapsLock # кнопка на клавиатуре включающая режим управления джойстика мышкой
	steps = [0,4,8,12,16,20,24,28,32,-32,-28,-24,-20,-16,-12,-8,-4]
	oldJoyX = 0
	newJoyX = 0
	oldX = 0
	newX = 0
	oldStepN = 0
	newStepN = 0
	oldStep = 0
	newStep = 0
	m = ''
	
################################################################
## Let's dance
################################################################

newJoyX = joystick[1].x

if oldJoyX == newJoyX: #->
	newStepN = oldStepN
	newX = oldX
	m = '-> ' + m
	
else:
	if oldJoyX < newJoyX: #->r
		if oldStepN <= 0: #cl->r 
			newStepN = 1
			m = 'cl->r ' + m
		if oldStepN > 0: #r->r 
			newStepN += 1
			m = 'r->r ' + m
	if oldJoyX > newJoyX: #->l
		if oldStepN >= 0: #cr->l 
			newStepN = -1
			m = 'cr->l ' + m
		if oldStepN < 0: #l->l 
			newStepN -= 1
			m = 'l->l ' + m

oldStepN = newStepN
oldJoyX = newJoyX
oldX = newX

vJoy[0].x = newX
vJoy[0].y = joystick[1].y
vJoy[0].z = joystick[1].z

################################################################
diagnostics.watch(m)
diagnostics.watch(newX)
diagnostics.watch(oldX)
diagnostics.watch(newStepN)
diagnostics.watch(oldStepN)
################################################################
diagnostics.watch(joystick[1].x)
################################################################
diagnostics.watch(vJoy[0].x)
################################################################

time.sleep(1)