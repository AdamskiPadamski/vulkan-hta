CFLAGS = -std=c++17 -O2
LDFLAGS = -lglfw -lvulkan -ldl -lpthread -lX11 -lXxf86vm -lXrandr -lXi

HelloTriangleApplication: main.cpp
	mkdir build
	g++ $(CFLAGS) -o build/HelloTriangleApplication main.cpp $(LDFLAGS)

.PHONY: test clean

test: HelloTriangleApplication
	./build/HelloTriangleApplication

clean:
	rm -rf build
