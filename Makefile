DOCKER_RUN=docker run --rm -t -v "`pwd`:/workdir" -w /workdir phpdockerio/php74-cli

composer-validate:
	$(DOCKER_RUN) composer validate --strict

composer-install:
	$(DOCKER_RUN) composer install

run-tests:
	$(DOCKER_RUN) vendor/bin/phpunit
