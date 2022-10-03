import time
from System import Int16
from ctypes import windll, Structure, c_ulong, byref

class POINT(Structure):
   _fields_ = [("x", c_ulong), ("y", c_ulong)]
   
if starting:
	vJoy_Key = Key.CapsLock # кнопка на клавиатуре включающая режим управления джойстика мышкой
	jMax = 1
	jMin = -1
	jCut = jMax * 0.03 # 3% слепая зона
	jSleep = 0.01
	jLog = [0] * 100
	vCenter = 0
	vCurrent = 0
	vC = 0.0
	vCC = 0.0
	
def shift(input, n):
    return input[n:] + input[:n]
    
def median(ls):
    # sort the list
    ls_sorted = ls.sort()
    # find the median
    if len(ls) % 2 != 0:
        # total number of values are odd
        # subtract 1 since indexing starts at 0
        m = int((len(ls)+1)/2 - 1)
        return ls[m]
    else:
        m1 = int(len(ls)/2 - 1)
        m2 = int(len(ls)/2)
        return (ls[m1]+ls[m2])/2
        
def mean(ls):
   return sum(ls) / len(ls)

def toString(ls):
    # initialize an empty string
    r = ""
    # traverse in the string
    for el in ls:
        r += str(el) + " "
    return r

#myarray = [1, 3, 5, 7, 9]
#print(rotate(myarray, 2)) #rotate left
#print(rotate(myarray, -2)) #rotate right

## Let's dance

if joystick[1].x > jMax:
	jMax = joystick[1].x

if joystick[1].x < jMin:
	jMin = joystick[1].x
	
jX = int(joystick[1].x)
vX = int(vJoy[0].x)
vLeft = vX - 100
vRight = vX + 100

jLog = shift(jLog, -1)
jLog[0] = jX
jMean = mean(jLog)
	
dX = jX - jMean
if abs(dX) < 100: 
	dX = int(dX * dX * 0.01)
	
vC += (jX - vCenter) * jSleep * 10
vCenter = int(vC)
vLeft = vCenter - 100
vRight = vCenter + 100
	
if vLeft < -1000:
	vLeft = -1000
	
if vRight > 1000:
	vRight = 1000
	
vCC = (jX - vCenter)/10 + vCenter
if jX > vLeft and jX < vRight:
	vCurrent = int(vCC)
else: vCurrent = jX
	
vJoy[0].x = vCurrent
vJoy[0].y = joystick[1].y
vJoy[0].z = joystick[1].z

time.sleep(0.1)

diagnostics.watch(vCenter)
diagnostics.watch(vCurrent)
diagnostics.watch(dX)
diagnostics.watch(toString(jLog))
diagnostics.watch(joystick[1].x)
diagnostics.watch(joystick[1].y)
diagnostics.watch(joystick[1].z)
diagnostics.watch(vJoy[0].x)
diagnostics.watch(vJoy[0].y)
diagnostics.watch(vJoy[0].z)