default:
	docker run -it --rm -v ${PWD}:/root/snap -w /root/snap -e SNAPCRAFT_SETUP_CORE=1 \
	  snapcraft/xenial-amd64 snapcraft
	docker run -it --rm -v ${PWD}:/root/snap -w /root/snap -e SNAPCRAFT_SETUP_CORE=1 \
	  snapcraft/xenial-amd64 snapcraft push k8s-snap-bot-test_0.1_amd64.snap --release edge
