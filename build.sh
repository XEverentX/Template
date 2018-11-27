if [ "$1" == "build" ]; then

	if [ ! -d "build" ]; then
        	mkdir build
	fi

	cd build 

	cmake ~/space/CmakeTest/Fourth/
	make
	cd ..
fi

if [ "$1" == "run" ]; then 
	cd build
	./sol
	cd ..
fi 

if [ "$1" == "all" ]; then
	source build.sh build
	source build.sh run
fi

