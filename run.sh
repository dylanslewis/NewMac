#!/usr/bin/env bash

for script in ./Scripts/*.sh; do
	echo "
Running $script"
	bash "$script"
done
