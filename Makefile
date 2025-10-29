ELLE_LIBS ?= -z -lraylib -z -framework -z OpenGL
ELLE_FLAGS ?= -o raytracer

default: raytracer

.PHONY: run
run: raytracer
	$<

raytracer: src/main.le
	ellec $< $(ELLE_FLAGS) $(ELLE_LIBS)
