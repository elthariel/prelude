# Building emacs lisp to make startup faster

ELC	= init.elc

.el.elc:
	emacs --batch --eval '(byte-compile-file "$<")'

all: $(ELC)


everything:
	emacs --batch --eval '(byte-recompile-directory "~/.emacs.d")'

.PHONY: all everything
