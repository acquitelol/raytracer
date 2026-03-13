ELLE_LIBS ?= -lraylib -framework OpenGL -Wl,-rpath,$(HOME)/.local/lib
ELLE_FLAGS ?= -o raytracer -t --nogc

default: raytracer

.PHONY: run
run: raytracer
	./$<

raytracer: src/main.le
	ellec $< $(ELLE_FLAGS) $(foreach L,$(ELLE_LIBS),-z $(L))
