PROGRAM_NAME = MyATM
COBOLC = cobc -x
COBOL_SOURCES_DIR=.
COBOL_SOURCES=""

BIN_DIR = ../../../bin/
OUTPUT_FILE_NAME = "$(BIN_DIR)$(PROGRAM_NAME)"

all: clean build run 

exec: build run

build:
	@echo compiling...
	$(COBOLC) $(COBOL_SOURCES_DIR)/*.cbl -o $(BIN_DIR)$(PROGRAM_NAME)
	@echo done

run:
	@echo launching app...
	@./$(OUTPUT_FILE_NAME)

clean:
	rm -f $(BIN_DIR)*