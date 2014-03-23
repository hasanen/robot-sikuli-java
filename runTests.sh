#!/bin/bash
rm log.html output.xml report.html *.png 2> /dev/null
time java -XX:+TieredCompilation -XX:TieredStopAtLevel=1 -cp lib/robotframework-selenium2library-java-1.4.0.6-jar-with-dependencies.jar:lib/sikuli-script.jar -Dpython.path=lib/sikuli-script.jar/Lib:version-checker.sik org.robotframework.RobotFramework tests/01_demo.txt
