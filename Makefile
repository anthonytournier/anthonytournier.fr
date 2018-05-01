all: run

install:
	composer install
	bin/grav composer
	bin/gpm update

run: 
	php -S localhost:1337 system/router.php

dploy:
	mage deploy production