CFLAGS = -std=c++17 -O2
LDFLAGS = -lglfw -lvulkan -ldl -lpthread -lX11 -lXxf86vm -lXrandr -lXi

HelloTriangleApplication: main.cpp
	g++ $(CFLAGS) -o HelloTriangleApplication main.cpp $(LDFLAGS)

.PHONY: test clean

test: HelloTriangleApplication
	./HelloTriangleApplication

clean:
	rm -f HelloTriangleApplication
