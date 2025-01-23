# Variables
APP_NAME := fitness
BUILD_DIR := .
SRC := main.go

# Targets
.PHONY: all run build clean

all: build

run:
	@echo "Running the application..."
	@go run $(SRC)

build:
	@echo "Building the application..."
	@go build -o $(BUILD_DIR)/$(APP_NAME)

clean:
	@echo "Cleaning up..."
	@rm -f $(BUILD_DIR)/$(APP_NAME)
