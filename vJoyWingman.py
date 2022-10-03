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
	jSleep = 1/100
	jLog = [0] * 100
	jX = 0
	
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

vJoy[0].setButton(1,int(keyboard.getKeyDown(Key.Tab))) 
vJoy[0].setButton(2,int(keyboard.getKeyDown(Key.LeftAlt))) 
vJoy[0].setButton(3,int(keyboard.getKeyDown(Key.LeftControl))) 
vJoy[0].setButton(4,int(keyboard.getKeyDown(Key.LeftShift))) 
#vJoy[0].setButton(5,int(keyboard.getKeyDown(Key.RightControl))) 
#vJoy[0].setButton(6,int(keyboard.getKeyDown(Key.RightShift))) 
#vJoy[0].setButton(7,int(keyboard.getKeyDown(Key.Return)))
#vJoy[0].setButton(8,int(keyboard.getKeyDown(Key.NumberPadEnter))) 
#vJoy[0].setButton(10,int(keyboard.getKeyDown(Key.NumberPadPlus))) 
#vJoy[0].setButton(11,int(keyboard.getKeyDown(Key.NumberPadMinus)))
#vJoy[0].setButton(12,int(keyboard.getKeyDown(Key.NumberPad0)))
#vJoy[0].setButton(13,int(keyboard.getKeyDown(Key.NumberPad1)))
#vJoy[0].setButton(14,int(keyboard.getKeyDown(Key.NumberPad2)))
#vJoy[0].setButton(15,int(keyboard.getKeyDown(Key.NumberPad3)))
#vJoy[0].setButton(16,int(keyboard.getKeyDown(Key.NumberPad4)))
#vJoy[0].setButton(17,int(keyboard.getKeyDown(Key.NumberPad5)))
#vJoy[0].setButton(18,int(keyboard.getKeyDown(Key.NumberPad6)))
#vJoy[0].setButton(19,int(keyboard.getKeyDown(Key.NumberPad7)))
#vJoy[0].setButton(20,int(keyboard.getKeyDown(Key.NumberPad8)))
#vJoy[0].setButton(21,int(keyboard.getKeyDown(Key.NumberPad9))) 
vJoy[0].setButton(22,int(keyboard.getKeyDown(Key.Space)))
vJoy[0].setButton(23,int(keyboard.getKeyDown(Key.Q)))
vJoy[0].setButton(24,int(keyboard.getKeyDown(Key.W)))
vJoy[0].setButton(25,int(keyboard.getKeyDown(Key.E)))
vJoy[0].setButton(26,int(keyboard.getKeyDown(Key.R)))
#vJoy[0].setButton(27,int(keyboard.getKeyDown(Key.T)))
#vJoy[0].setButton(28,int(keyboard.getKeyDown(Key.Y)))
#vJoy[0].setButton(29,int(keyboard.getKeyDown(Key.A)))
#vJoy[0].setButton(30,int(keyboard.getKeyDown(Key.S)))
#vJoy[0].setButton(31,int(keyboard.getKeyDown(Key.D)))
vJoy[0].setButton(32,int(keyboard.getKeyDown(Key.F)))
#vJoy[0].setButton(33,int(keyboard.getKeyDown(Key.G)))
#vJoy[0].setButton(34,int(keyboard.getKeyDown(Key.H)))
#vJoy[0].setButton(35,int(keyboard.getKeyDown(Key.Z)))
#vJoy[0].setButton(36,int(keyboard.getKeyDown(Key.X)))
#vJoy[0].setButton(37,int(keyboard.getKeyDown(Key.C)))
vJoy[0].setButton(38,int(keyboard.getKeyDown(Key.V)))
#vJoy[0].setButton(39,int(keyboard.getKeyDown(Key.B)))
#vJoy[0].setButton(9,int(keyboard.getKeyDown(Key.N)))
#vJoy[0].setButton(40,int(keyboard.getKeyDown(Key.Grave)))
vJoy[0].setButton(41,int(keyboard.getKeyDown(Key.D1)))
vJoy[0].setButton(42,int(keyboard.getKeyDown(Key.D2)))
#vJoy[0].setButton(43,int(keyboard.getKeyDown(Key.D3)))
#vJoy[0].setButton(44,int(keyboard.getKeyDown(Key.D4)))
#vJoy[0].setButton(45,int(keyboard.getKeyDown(Key.D5)))
#vJoy[0].setButton(46,int(keyboard.getKeyDown(Key.D6)))
#vJoy[0].setButton(47,int(keyboard.getKeyDown(Key.D7)))
#vJoy[0].setButton(48,int(keyboard.getKeyDown(Key.D8)))
#vJoy[0].setButton(49,int(keyboard.getKeyDown(Key.D9)))
#vJoy[0].setButton(50,int(keyboard.getKeyDown(Key.D0)))
#vJoy[0].setButton(51,int(keyboard.getKeyDown(Key.Minus)))
#vJoy[0].setButton(52,int(keyboard.getKeyDown(Key.Equals)))
#vJoy[0].setButton(53,int(keyboard.getKeyDown(Key.Backspace)))
#vJoy[0].setButton(54,int(keyboard.getKeyDown(Key.F1)))
#vJoy[0].setButton(55,int(keyboard.getKeyDown(Key.F2)))
#vJoy[0].setButton(56,int(keyboard.getKeyDown(Key.F3)))
#vJoy[0].setButton(57,int(keyboard.getKeyDown(Key.F3)))
#vJoy[0].setButton(58,int(keyboard.getKeyDown(Key.F4)))
#vJoy[0].setButton(59,int(keyboard.getKeyDown(Key.F5)))
#vJoy[0].setButton(60,int(keyboard.getKeyDown(Key.F6)))
#vJoy[0].setButton(61,int(keyboard.getKeyDown(Key.F7)))
#vJoy[0].setButton(62,int(keyboard.getKeyDown(Key.F8)))
#vJoy[0].setButton(63,int(keyboard.getKeyDown(Key.Escape)))

#myarray = [1, 3, 5, 7, 9]
#print(rotate(myarray, 2)) #rotate left
#print(rotate(myarray, -2)) #rotate right

## Let's dance

if joystick[1].x > jMax:
	jMax = joystick[1].x

if joystick[1].x < jMin:
	jMin = joystick[1].x
	
jLog = shift(jLog, -1)
jLog[0] = int(joystick[1].x)

vJoy[0].x = mean(jLog)
vJoy[0].y = joystick[1].y
vJoy[0].z = joystick[1].z

time.sleep(jSleep)

diagnostics.watch(jMax)
diagnostics.watch(jMin)
diagnostics.watch(toString(jLog))
diagnostics.watch(joystick[1].x)
diagnostics.watch(joystick[1].y)
diagnostics.watch(joystick[1].z)
diagnostics.watch(vJoy[0].x)
diagnostics.watch(vJoy[0].y)
diagnostics.watch(vJoy[0].z)