redo-ifchange skyhash.nim skyhash/test.nim skyhash/blake2b.nim skyhash/blake2s.nim skyhash/spooky2_test
nim c -o:$3 skyhash.nim 1>&2
#./$3 1>&2
prove ./$3 1>&2
