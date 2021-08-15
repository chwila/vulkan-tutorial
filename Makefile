CFLAGS = -g -O0 -std=c++17
LDFLAGS = `pkg-config --cflags --libs glfw3 vulkan`
HelloTriangle: main.cpp
	g++ $(CFLAGS) -o HelloTriangle main.cpp $(LDFLAGS)

.PHONY: test clean

test: HelloTriangle
	./HelloTriangle

clean:
	rm -f HelloTriangle
