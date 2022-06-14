cd . && for /d %%d in (*.*) DO (
	cd "%%d" && git gc && cd ..
)