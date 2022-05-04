pre:
	python -m pip install -r requirements.txt -f https://download.pytorch.org/whl/torch_stable.html
	if ! (pip list | grep "mmdet"); then \
	    mkdir -p thirdparty \
	    git clone https://github.com/open-mmlab/mmdetection.git thirdparty/mmdetection \
	    cd thirdparty/mmdetection && python -m pip install -e . ;\
	fi
install:
	make pre
	python -m pip install -e .
clean:
	rm -rf thirdparty
	rm -r ssod.egg-info
