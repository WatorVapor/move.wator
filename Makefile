CXXFLAGS := -std=c++14
CXXFLAGS += -Iwaveform
CXXFLAGS += -g
CXXFLAGS += -I/usr/local/include

LDFLAGS += -L/usr/local/lib
LDFLAGS += -lopencv_imgproc
LDFLAGS += -lopencv_highgui
LDFLAGS += -lopencv_core

SRC := main.cpp
SRC += pulse.cpp
SRC += base_layer.cpp
SRC += audio_layer.cpp
SRC += net.cpp
SRC += waveform/wave.cpp


all:
	clang++ $(CXXFLAGS) $(SRC) $(LDFLAGS) -o move.out
run:all
	./move.out
