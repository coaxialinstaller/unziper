#!/bin/bash
while true
do
pass=$(ls | grep .zip | perl -pe 's/.zip//')
if [[ $pass == "" ]]
then
echo done
exit 1
fi
unzip -P $pass $pass.zip
rm $pass.zip
done