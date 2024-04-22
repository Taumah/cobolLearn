PROGRAM_NAME = MyATM

BIN_DIR = ../../../bin/
OUTPUT_FILE_NAME = "$(BIN_DIR)$(PROGRAM_NAME)"


COBOLC = cobc -x -o $(OUTPUT_FILE_NAME)
COBOL_SOURCES_DIR=.
COBOL_SOURCES=""

MAIN_PRGM_FILE_NAME=main



all: clean build run 

exec: build run

build:
	@echo compiling...
	@echo building sources 
	$(COBOLC) $(MAIN_PRGM_FILE_NAME).cbl $(COBOL_SOURCES_DIR)/*[!{$(MAIN_PRGM_FILE_NAME)}].cbl
	@echo done

run:
	@echo launching app...
	@./$(OUTPUT_FILE_NAME)

clean:
	@rm -f $(OUTPUT_FILE_NAME)
	@echo workspace cleaned