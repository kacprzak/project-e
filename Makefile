SOURCES=*.hs
TARGETS=p001 p002 p003 p004 p005 p006 p007 p008 p009 p010 p011 p012 p013 p014 p015 p016 p018 p020 p024 p025 p048 p067

all: $(TARGETS)

%: %.cpp
	clang++ -std=c++11 -o $@ $<

%: %.hs
	ghc --make $@

clean:
	rm *.hi *.o $(TARGETS)

.PHONY: all clean
