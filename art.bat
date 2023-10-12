del /F /Q "C:\Documents and Settings\Dmytro\AppData\Local\NVIDIA\DXCache\*.bin" "C:\Documents and Settings\Dmytro\AppData\Local\NVIDIA\DXCache\*.toc"
pushd C:\Projects\C2077
git add -A
git commit -am "Autogit-art %date% at %time:~0,2%:%time:~3,2%:%time:~6,2%"
git pull
git push
git checkout art
pushd C:\Games\Cyberpunk.2077.2.0\bin\x64
cd C:\Games\Cyberpunk.2077.2.0\bin\x64
start C:\Games\Cyberpunk.2077.2.0\bin\x64\Cyberpunk2077.exe
