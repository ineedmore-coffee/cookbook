# Builds the site by running build script
build:
	bash build.sh
	rsync CNAME docs/CNAME

# Cleans up build directories and temporary directory
clean:
	rm -rf docs/*
	rm -rf temp/

# Builds the site by running build script, runs a Python webserver in the build directory
test:
	bash build.sh
	rsync CNAME docs/CNAME
	python -m http.server -d docs/

.PHONY: build clean test
