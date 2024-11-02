CXX = g++

FLAGS = -Wall -Wextra

SRC_DIR=./Src
HEADERS_DIR=./Headers
BUILD_DIR=./Build
TARGET=test

SRC=$(wildcard $(SRC_DIR)/*.cpp)
HEADERS=$(wildcard $(HEADERS_DIR)/*.hpp)

.PHONY: all clean build_dir

all: build_dir $(TARGET)

clean:
	rm -f $(BUILD_DIR)/*
	rm -f $(TARGET)

build_dir:
	@if [ ! -d "$(BUILD_DIR)" ]; then mkdir $(BUILD_DIR); fi


$(TARGET): $(SRC)
	@echo eureka
	$(CXX) $(FLAGS) -o $@ $^ -I $(HEADERS_DIR)
