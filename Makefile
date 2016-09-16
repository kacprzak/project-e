SOURCES=*.hs
TARGETS=problem_1 problem_2 problem_3 problem_4 problem_5

all: $(TARGETS)

%: %.hs
	ghc --make $@

clean:
	rm *.hi *.o $(TARGETS)

.PHONY: all clean
