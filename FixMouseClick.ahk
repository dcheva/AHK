; MIT by cheva 2020
#SingleInstance force
#Persistent
#usehook

$LButton::
	{					
		SendInput {LButton Down}			
		While Getkeystate("LButton","P")
		{
			Sleep, 100
		}
		SendInput {LButton Up}			
	}
