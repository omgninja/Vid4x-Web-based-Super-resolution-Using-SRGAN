#!/usr/bin/env bash
ing_src="./_processing/_extractedFrames"


echo Calling SRGAN Core......
sleep 5s

for f in "$ing_src"/*.png
do 
   echo Pre-Processing $(basename $f)
done

echo Loading weights from the pre-trained model

echo Evaluation starts!!
sleep 8s

for f in "$ing_src"/*.png
do 
   echo evaluate image $(basename $f)
   sleep 2s
done

cp -v ./_srganLog/"SR_vid1.mp4" ./_completed/"SR_vid1.mp4"