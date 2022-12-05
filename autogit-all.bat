cd . && for /d %%d in (*.*) DO (
	cd "%%d" && autogit Update all && cd .. && @echo ------------------
)
