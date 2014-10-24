#!/bin/bash
java  -XX:+UseG1GC -XX:MaxGCPauseMillis=200 \
      -XX:+PrintGCDetails -XX:+PrintGCDateStamps -XX:+PrintHeapAtGC -Xloggc:target/jmeter/logs/gc.log \
      -jar target/jmeter/bin/ApacheJMeter.jar \
      -n -t src/test/jmeter/query_rest.jmx \
      -d target/jmeter \
      -j target/jmeter/logs/query_rest.jmx.log

