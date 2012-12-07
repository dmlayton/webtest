#!/bin/bash


if ! [ -x bin/casperjs ]; then
    python2.7 bootstrap.py -d
    bin/buildout install casperjs
fi

chmod +x parts/casperjs/*/bin/*js

python -c "import os; print(os.uname())"
