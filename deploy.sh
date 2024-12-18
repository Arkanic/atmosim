x86_64-w64-mingw32-g++ atmosim.cpp -o deploy/atmosim.exe -O3 --static --std=c++2a
echo "built atmosim.exe"
g++ atmosim.cpp -o deploy/atmosim -O3 --static --std=c++2a
echo "built atmosim"
cd deploy
strip atmosim.exe
strip atmosim
zip atmosim_windows.zip atmosim.exe
echo "packed atmosim_windows.zip"
tar -czvf atmosim_linux.tar.gz atmosim
echo "packed atmosim_linux.tar.gz"
cd ..
