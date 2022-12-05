pushd C:\Projects && cd C:\Projects && for /d %%d in (*.*) DO (
	cd "%%d" && git gc && cd ..
)