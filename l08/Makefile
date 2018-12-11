CXXFLAGS = -std=c++17 -g -static -fno-stack-protector

test:
	@./test.sh

pnginfo: pnginfo.cpp
	$(CXX) -o $@ $(CXXFLAGS) $<

pnginfo32: pnginfo.cpp
	$(CXX) -o $@ -m32 $(CXXFLAGS) $<

bo: bo.cpp

.PHONY: test
