for /D %%d in (*.*) do "C:\Program Files\7-Zip\7z.exe" a -tzip -mx2 "%%d.zip" ".\%%d\*"
