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
	
	vJoy[0].setButton(0,mouse.getButton(0)) 

################################################################
## Let's dance
################################################################

newJoyX = joystick[1].x

if oldJoyX == newJoyX: #->
	newStepN = oldStepN
	newX = oldX
	m = '-> '
	
else:
	if oldJoyX < newJoyX: #->r
		if oldStepN <= 0: #cl->r 
			newStepN = 1
			m = 'cl->r '
		if oldStepN > 0: #r->r 
			newStepN += 1
			m = 'r->r '
	if oldJoyX > newJoyX: #->l
		if oldStepN >= 0: #cr->l 
			newStepN = -1
			m = 'cr->l '
		if oldStepN < 0: #l->l 
			newStepN -= 1
			m = 'l->l '

if newStepN > 8: newStepN = 8
if newStepN <-8: newStepN =-8
newStep = steps[newStepN]

if oldJoyX <> newJoyX: #!->
	dJoyX = newJoyX - oldJoyX
	if abs(dJoyX) > 64: newStep = dJoyX 
	newX = oldX + newStep
	m = '!-> ' + str(dJoyX)

#if newStepN > 0 and (newX > newJoyX or newStep > dJoyX): newX = newJoyX
#if newStepN < 0 and (newX < newJoyX or newStep > dJoyX): newX = newJoyX
if newStepN > 0 and newX > newJoyX: newX = newJoyX
if newStepN < 0 and newX < newJoyX: newX = newJoyX

oldStep = newStep
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
diagnostics.watch(newStep)
diagnostics.watch(oldStep)
################################################################
diagnostics.watch(joystick[1].x)
################################################################
diagnostics.watch(vJoy[0].x)
diagnostics.watch(vJoy[0].y)
diagnostics.watch(vJoy[0].z)
################################################################

#time.sleep(0.5)