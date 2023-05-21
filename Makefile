.PHONY: all

all: clean
	./main.sh

clean:
	rm -f out/exercises.json
