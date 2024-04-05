PROGRAM_NAME = cobolProj
COBOLC = cobc -x
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
	@$(COBOLC) $(COBOL_SOURCES) -o $(OUTPUT_FILE_NAME)
	@echo done

run:
	@echo launching app...
	@./$(OUTPUT_FILE_NAME)

clean:
	@echo $1
	@echo emptying binary directory ...
	@rm -f $(BIN_DIR)/*
	@echo done

custom: $(COBOL_SOURCES)
	$(COBOLC) $< -o $@