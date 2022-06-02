cd C:\Projects && for /d %%d in (*.*) DO (
	cd "%%d" && autogit up && cd .. 
)
rundll32.exe shell32.dll,SHExitWindowsE 6