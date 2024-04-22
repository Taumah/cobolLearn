PROGRAM_NAME = cobolProj
COBOLC = cobc -o
COBOL_SOURCES_DIR="src/cobol/"
COBOL_SOURCES=""


ifdef FILE
	COBOL_SOURCES="$(COBOL_SOURCES_DIR)$(FILE).cbl"
else
	COBOL_SOURCES=$(wildcard $(COBOL_SOURCES_DIR)*.cbl)
endif

BIN_DIR = "bin/"
OUTPUT_FILE_NAME = "$(BIN_DIR)$(PROGRAM_NAME)"

all: clean build run 

exec: build run

build:
	@echo compiling...
	@$(COBOLC) src/cobol/*/*.cbl
	@echo done

run:
	@echo launching app...
	@./$(OUTPUT_FILE_NAME)

clean:
	rm -f $(BIN_DIR)