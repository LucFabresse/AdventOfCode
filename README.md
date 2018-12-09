# Advent Of Code with Pharo

Thanks to [juliendelplanque/AdventOfCode2017WithPharo](https://github.com/juliendelplanque/AdventOfCode2017WithPharo), I started to play with [http://adventofcode.com](http://adventofcode.com).

All my source code is in the `src` subfolder.

## Metacello loading script

	Metacello new
	  baseline: 'AdventOfCode';
	  repository: 'github://LucFabresse/AdventOfCode2017:master/src';
	  load.
