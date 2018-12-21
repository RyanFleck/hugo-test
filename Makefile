build:
	rm -rf docs
	hugo

push:
	bash travis.commit.sh
