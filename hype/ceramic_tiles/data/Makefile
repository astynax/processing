SRC := $(wildcard src/*.svg)
SVG := $(subst src/,,$(SRC))

.PHONY: all
all: $(SVG)

$(SVG):
	scour -i src/$@ -o $@
