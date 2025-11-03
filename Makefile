ELLE_LIBS ?= -lraylib -framework OpenGL
ELLE_FLAGS ?= -o raytracer

default: raytracer

.PHONY: run
run: raytracer
	$<

raytracer: src/main.le
	ellec $< $(ELLE_FLAGS) $(foreach L,$(ELLE_LIBS),-z $(L)) -t
