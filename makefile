all:
	echo "builds: linux | windows"
linux:
	g++ ./src/* ./include/classes/*.cpp -I./include -lglfw -lGL -lX11 -lpthread -lXrandr -ldl -o ./mineclone
windows:
	g++ -g -std=c++17 -I./include -L./lib ./src/* -lglfw3dll ./include/classes/*.cpp -o ./mineclone.exe
