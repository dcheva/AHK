for /d %%d in (*.*) DO (
	cd "%%d" && autogit-offline Offline update all && cd ..
)
