FROM fn61/turbobob:latest

# using the above as a hack to just refer to an existing built image4, because it seems that with
# GitHub actions we need a Dockerfile whether we actually want it or not.

ENTRYPOINT git config --global --add safe.directory /github/workspace \
	&& mkdir -p /home/runner/work/testrepo && ln -s /github/workspace /home/runner/work/testrepo/testrepo \
	&& cd /home/runner/work/testrepo/testrepo \
	&& bob build in-ci-autodetect-settings
