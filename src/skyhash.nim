import skyhash/blake2b
export blake2b
import skyhash/blake2s
export blake2s

when is_main_module:
    include skyhash/test
