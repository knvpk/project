develop:
	nix develop .#test

test1:
	nix develop ./test/proj1 --show-trace

test2:
	nix develop ./test/proj2 --show-trace

format:
	nix fmt .