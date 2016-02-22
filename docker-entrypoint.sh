#!/bin/sh

if [ ! -d "/headphones/headphones" ]; then
	mkdir /headphones
	chown headphones:headphones /headphones
	cd /headphones
	git clone https://github.com/rembo10/headphones.git
fi

su headphones -c "python /headphones/headphones/Headphones.py"
