all: clean build run 

exec: build run

build:
	@echo compiling...
	@cobc -x src/cobol/* -o bin/app.exe
	@echo done

run:
	@echo launching app...
	@./bin/app.exe

clean:
	@echo emptying bin/* ...
	@rm -f bin/*
	@echo done
	