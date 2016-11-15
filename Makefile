.PHONY: deploy
deploy:
	git push heroku master

.PHONY: list-env-var-reqs
list-env-var-reqs:
	./bin/list_env_var_reqs.sh

.PHONY: run
run:
	./bin/mbot
