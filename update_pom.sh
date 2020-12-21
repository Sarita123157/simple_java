#! /bin/sh

#cat pom.xml
#cat sealights.json
#echo $app_name
#echo $branch_name
#echo $build_name

java -jar sl-build-scanner.jar -restorePom -workspacepath .
java -jar sl-build-scanner.jar -pom -configfile sealights.json -workspacepath .

sed -i "s/\(<appName>\)[^<]*\(<\/appName>\)/\1${app_name}\2/" pom.xml
sed -i "s/\(<build>\)[^<]*\(<\/build>\)/\1${build_name}\2/" pom.xml
sed -i "s/\(<branch>\)[^<]*\(<\/branch>\)/\1${branch_name}\2/" pom.xml

#echo "***### Hello !!! Printing update POM for Diagnostics ###***"
#cat pom.xml
#cat sealights.json
#echo "***### Diagnostics End ###***"
