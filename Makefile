README.md: docs/feature_store.md docs/related_projects.md
	cat $^ > README.md

.PHONY: test
test: 
	pytest --doctest-glob="docs/*.md" --doctest-report ndiff
