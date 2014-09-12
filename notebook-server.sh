#!/bin/bash

if [ ! -d /notebooks ]; then
	mkdir /notebooks
fi

cd /notebooks
ipython notebook --no-browser --matplotlib inline --ip 0.0.0.0
