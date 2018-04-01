.PHONY: converge destroy test

converge:
	pipenv run molecule converge

destroy:
	pipenv run molecule destroy

test:
	pipenv run molecule test
