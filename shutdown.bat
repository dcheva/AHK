cd C:\Projects && for /d %%d in (*.*) DO cd "%%d" && autogit up && cd ..
shutdown /s /t 10