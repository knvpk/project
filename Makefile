develop:
	nix develop .#test

test1:
	nix develop ./test/proj1 --show-trace