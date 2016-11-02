#!/bin/sh
echo Current file path: $(pwd)/${0}

gradle clean assembleDebug

zip -r $(pwd)/app/build/outputs/apk/ReleaseApks.zip $(pwd)/app/build/outputs/apk/*.apk

java -jar $(pwd)/GDUSample.jar

sleep 90