#!/bin/bash

for n in 1 2 3 4; do
	mkdir -p $n
	for i in {1..3}; do
		for j in `seq 1 $n`; do
			glmark2 > "$n/run-$i-$j-of-$n.txt" &
		done
		wait
	done
done