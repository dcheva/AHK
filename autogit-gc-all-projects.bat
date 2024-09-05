cd C:\Projects && pushd C:\Projects && for /d %%d in (*.*) DO (
	cd "%%d" && git gc && cd ..
)