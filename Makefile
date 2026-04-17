PY_FILES := $(shell git ls-files '*.py')

.PHONY: compile
compile:
	python -m py_compile $(PY_FILES)
