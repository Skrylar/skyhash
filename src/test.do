redo-ifchange skyhash_blake.nim skyhash_blake/test.nim skyhash_blake/blake2b.nim skyhash_blake/blake2s.nim
nim c -o:$3 skyhash_blake.nim 1>&2
#./$3 1>&2
prove ./$3 1>&2
