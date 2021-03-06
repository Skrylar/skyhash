adocs=readme-base blake xxhash spooky
adocs=${adocs:%=docs/%.adoc}

modules=blake2b blake2s # xxhash spooky2
tests=${modules:%=t/%.t}

t/%.t: src/skyhash/%.nim
    nim c -o:t/$stem.t $prereq

check:QV: $tests
    prove

clean:V:
    rm -f $tests

push:V:
    git push github

README.md: $adocs
    asciidoctor -b docbook5 docs/readme-base.adoc -o docs/readme.xml
    pandoc -f docbook docs/readme.xml -t gfm -o README.md

docs:V: README.md

