from System import Int16
from ctypes import windll, Structure, c_ulong, byref
import winsound, time


class POINT(Structure):
   _fields_ = [("x", c_ulong), ("y", c_ulong)]
   
   
if starting:
	Joy_stat = False # данный флаг используется для включения с клавиатуры, передачи данных на джойстик
	vJoy_Enabled = False # данный флаг используется для временного отключения джойстика мышкой
	vJoy_Key = Key.CapsLock # кнопка на клавиатуре включающая режим управления джойстика мышкой
	vJoy_Reset = Key.Backspace # Центровка по Backspace
	vJoy_Alt = Key.LeftAlt # Альтернативное управление - ось Х на руль
	Freeview = False # флаг временного выключения режима управления джойстика мышкой
	screen_x = windll.user32.GetSystemMetrics(0) / 2 # размер экрана
	screen_y = windll.user32.GetSystemMetrics(1) / 2
	sx = screen_x
	sy = screen_y
	slider = -32768 / 2
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
Freeview = mouse.middleButton or mouse.getButton(3) # кнопки на мышке для свободного обзора. mouse.middleButton .rightButton .leftButton - средняя, правая или левая кнопка мыши и т.п.
#Freeview = keyboard.getKeyDown(Key.V) # пример для кнопки на клавиатуре для свободного обзора
vJoy[0].setButton(0,mouse.getButton(0)) 


# Включение и отключение джойстика
if keyboard.getPressed(vJoy_Key):
	if Joy_stat:
		Joy_stat = False
		vJoy_Enabled = False
		vJoy[0].setButton(0,False)		
		# vJoy[0].x = 0 # при отключении джойстик встает в 0
   		# vJoy[0].y = 0
   		# vJoy[0].z = 0
   		# vJoy[0].rz = 0
   		winsound.Beep(300,30)
   		winsound.Beep(200,50)
	else:
		vJoy_Enabled = True
		vJoy[0].setButton(0,mouse.getButton(0))
   		winsound.Beep(200,50)
   		winsound.Beep(300,30)
		
		
if keyboard.getPressed(vJoy_Reset):
		vJoy[0].x = 0  # Центровка по Backspace - джойстик встает в 0
   		vJoy[0].y = 0
   		vJoy[0].z = 0
   		vJoy[0].rz = 0
		# move mouse to vJoy position
		sx = vJoy[0].x * screen_x / (32768 / 2) * axisx_inversion + screen_x;
		sy = vJoy[0].y * screen_y / (32768 / 2) * axisy_inversion + screen_y;
		windll.user32.SetCursorPos(sx, sy) # автоцентрирование курсора мыши
		if Joy_stat:
   			winsound.Beep(300,30)
   			winsound.Beep(300,30)
   		else:
   			winsound.Beep(200,50)
   			winsound.Beep(200,50)


if vJoy_Enabled:
	if Freeview: # деактивация/активация джойстика, если нажата средняя кнопка мыши
		Joy_stat = False
		vJoy[0].setButton(0,False) 
		# vJoy[0].x = 0 # при отключении джойстик встает в 0
   		# #vJoy[0].y = 0
   		# vJoy[0].z = 0
   		# vJoy[0].rz = 0
	if not Freeview and Joy_stat == False:
		Joy_stat = True
		vJoy[0].setButton(0,mouse.getButton(0)) 
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
	if keyboard.getKeyDown(vJoy_Alt): # Альтернативное управление - ось Х на руль 
		vJoy[0].z = x * scale_Vz / scale_Rz * axisz_inversion
	else:
		vJoy[0].x = x
	vJoy[0].y = y
	vJoy[0].rz = vJoy[0].z
	
	
	# scrol to throttle
	if mouse.wheelUp:
		slider += 32768 / 20; # 5%
	if mouse.wheelDown:
		slider -= 32768 / 20; # 5%
	if slider < -32768 / 2:
		slider = -32768 / 2;	
	if slider > 32768 / 2:
		slider = 32768 / 2;	
	vJoy[0].slider = slider;


diagnostics.watch(Joy_stat)
diagnostics.watch(vJoy_Enabled)
diagnostics.watch(vJoy[0].x)
diagnostics.watch(vJoy[0].y)
diagnostics.watch(vJoy[0].z) # vJoy[0].z = vJoy[0].rz
diagnostics.watch(vJoy[0].slider)