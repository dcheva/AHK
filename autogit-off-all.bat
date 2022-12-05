cd . && for /d %%d in (*.*) DO (
	cd "%%d" && autogit-off-line Offline update all && cd ..
)
