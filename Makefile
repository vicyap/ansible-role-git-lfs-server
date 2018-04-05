.PHONY: converge destroy install test

converge:
	pipenv run molecule converge

destroy:
	pipenv run molecule destroy

install:
	pipenv install

test:
	pipenv run molecule test
