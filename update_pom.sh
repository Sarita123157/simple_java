#! /bin/sh

java -jar sl-build-scanner.jar -restorePom -workspacepath .
java -jar sl-build-scanner.jar -pom -configfile sealights.json -workspacepath .
