from System import Int16
from ctypes import windll, Structure, c_ulong, byref

class POINT(Structure):
   _fields_ = [("x", c_ulong), ("y", c_ulong)]
   
if starting:

	Acc1k = 66 
	Acc2k = 80
	# 1 + 2 -> 100
	Brk1k = 40
	Brk2k = 66
	# 1 + 2 -> 100
		
	Joy_stat = False # данный флаг используется для включения с клавиатуры, передачи данных на джойстик
	vJoy_Enabled = False # данный флаг используется для временного отключения джойстика мышкой
	vJoy_Key = Key.CapsLock # кнопка на клавиатуре включающая режим управления джойстика мышкой
		
	Freeview = False # флаг временного выключения режима управления джойстика мышкой
	screen_x = windll.user32.GetSystemMetrics(0) / 2 # размер экрана
	screen_y = windll.user32.GetSystemMetrics(1) / 2
	sx = screen_x
	sy = screen_y
	slider = 0
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
	
	Acc1 = 0
	Acc2 = 0
	Brk1 = 0
	Brk2 = 0
	
## Let's dance
Freeview = mouse.middleButton or mouse.getButton(3) # кнопки на мышке для свободного обзора. mouse.middleButton .rightButton .leftButton - средняя, правая или левая кнопка мыши и т.п.
#Freeview = keyboard.getKeyDown(Key.V) # пример для кнопки на клавиатуре для свободного обзора
#vJoy[0].setButton(0,mouse.getButton(0)) 

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

# Включение и отключение джойстика
if keyboard.getPressed(vJoy_Key):
	if Joy_stat:
		Joy_stat = False
		vJoy_Enabled = False
		vJoy[0].setButton(0,False)		
		# vJoy[0].x = 0 # при отключении джойстик встает в 0
   		# vJoy[0].y = 0
   		# vJoy[0].rz = 0
	else:
		vJoy_Enabled = True
		# vJoy[0].setButton(0,mouse.getButton(0)) 

if vJoy_Enabled:
	if Freeview: # деактивация/активация джойстика, если нажата средняя кнопка мыши
		Joy_stat = False
		vJoy[0].setButton(0,False) 
		# vJoy[0].x = 0 # при отключении джойстик встает в 0
   		# #vJoy[0].y = 0
   		# vJoy[0].rz = 0
	if not Freeview and Joy_stat == False:
		Joy_stat = True
		# vJoy[0].setButton(0,mouse.getButton(0)) 
		# move mouse to vJoy position
		sx = vJoy[0].x * screen_x / (32768 / 2) * axisx_inversion + screen_x;
		sy = vJoy[0].y * screen_y / (32768 / 2) * axisy_inversion + screen_y;
		windll.user32.SetCursorPos(sx, sy) # автоцентрирование курсора мыши при выходе из режима обзора

if Joy_stat:

	# Right button - center cursor
	if mouse.rightButton: windll.user32.SetCursorPos(screen_x, screen_y)

	windll.user32.GetCursorPos(byref(pt))
	if pt.x > 65536: mouse_x = 0 # добавлено, так как при выходе значения за пределы int, происходил вылет скрипта
	else: mouse_x = pt.x
	if pt.y > 65536: mouse_y = 0 # добавлено, так как при выходе значения за пределы int, происходил вылет скрипта
	else: mouse_y = pt.y
	# положение джойстика определяется как положение мыши на экране - половина ширина экрана умноженная на увеличитель и разделенная на уточнитель
	# далее идет умножение на масштаб оси к экрану и задание инверсии, если она есть
	# ось Z - предназначена для крена, но она масштабируется к оси X (рыскание)
	vJoy[0].x = (mouse_x - screen_x) * multipler_x / preci * scale_Vx / scale_Rx * axisx_inversion

	# vJoy[0].y = (mouse_y - screen_y) * multipler_y / preci * scale_Vy / scale_Ry * axisy_inversion
	# vJoy[0].rz = vJoy[0].x * scale_Vz / scale_Rz * axisz_inversion
	
	Acc1 = 0
	Acc2 = 0
	Brk1 = 0
	Brk2 = 0
	
	if keyboard.getKeyDown(Key.A):
		Acc1 = 32768 * Acc1k/100	

	if keyboard.getKeyDown(Key.S):
		Acc2 = 32768 * Acc2k/100	

	if keyboard.getKeyDown(Key.A) and keyboard.getKeyDown(Key.S):
		Acc1 = 32768
		Acc2 = 0
		
	if keyboard.getKeyDown(Key.Z):
		Brk1 = 32768 * Brk1k/100	

	if keyboard.getKeyDown(Key.X):
		Brk2 = 32768 * Brk2k/100	

	if keyboard.getKeyDown(Key.Z) and keyboard.getKeyDown(Key.X):
		Brk1 = 32768
		Brk2 = 0		

	vJoy[0].ry = -16384 + Acc1 + Acc2
	vJoy[0].rz = -16384 + Brk1 + Brk2

	# scroll to throttle
	if mouse.wheelUp:
		slider += 32768 / 25;
	if mouse.wheelDown:
		slider -= 32768 / 25;
	if slider < -32768 / 2:
		slider = -32768 / 2;	
	if slider > 32768 / 2:
		slider = 32768 / 2;	
	vJoy[0].slider = slider;

diagnostics.watch(Joy_stat)
diagnostics.watch(vJoy_Enabled)
diagnostics.watch(vJoy[0].x)
diagnostics.watch(vJoy[0].y)
diagnostics.watch(vJoy[0].z)
diagnostics.watch(vJoy[0].rx)
diagnostics.watch(vJoy[0].ry)
diagnostics.watch(vJoy[0].rz)
diagnostics.watch(vJoy[0].slider)