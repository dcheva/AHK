cd C:\Projects && for /d %%d in (*.*) DO (
	cd "%%d" && autogit up && cd .. 
)
shutdown /r /t 10