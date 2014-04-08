#!/bin/bash
rm log.html output.xml report.html *.png 2> /dev/null
time pybot --pythonpath=version-checker-xpresser.xpr tests/02_xpresser.txt
