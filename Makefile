.PHONE: clean
clean:
	rm -rf dist build __pycache__ *.egg-info

.PHONE: lint
lint:
	ruff format arbundler
	ruff check arbundler --fix

.PHONE: publish
publish:
	make clean
	poetry build
	poetry publish

.PHONE: test-publish
test-publish:
	make clean
	poetry build
	poetry publish -r testpypi
