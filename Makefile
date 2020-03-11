all: build

build: screencapture_darwin screencapture_windows

screencapture_darwin:
	CGO_ENABLED=1 go build -i -o binscreencapture -v .

screencapture_windows:
	CC=x86_64-w64-mingw32-gcc CXX=x86_64-w64-mingw32-g++ CGO_ENABLED=1 GOOS=windows go build -i -o binscreencapture.exe -v .
