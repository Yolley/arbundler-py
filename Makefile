.PHONE: clean
clean:
	rm -rf dist build __pycache__ *.egg-info

.PHONE: lint
lint:
	uv run ruff format arbundler
	uv run ruff check arbundler --fix
	uv run ty check

.PHONE: publish
publish:
	make clean
	uv build
	uv publish

.PHONE: test-publish
test-publish:
	make clean
	uv build
	uv publish -r testpypi
