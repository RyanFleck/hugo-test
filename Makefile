build:
	rm -rf docs
	hugo
	bash travis.commit.sh
