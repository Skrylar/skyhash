import skyhash_blake/blake2b
export blake2b
import skyhash_blake/blake2s
export blake2s

when is_main_module:
    include skyhash_blake/test
