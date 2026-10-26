.PHONY: quality style test


check_dirs := huggingface_sb3


quality:
	ruff check $(check_dirs)
	ruff format --check $(check_dirs)

style:
	ruff check --select I --fix $(check_dirs)
	ruff format $(check_dirs)

test:
	HUGGINGFACE_CO_STAGING=1 pytest -sv ./tests/
