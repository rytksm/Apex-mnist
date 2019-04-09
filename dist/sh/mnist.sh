#!/bin/sh
# predict mnist
# $1 : image file name
# $2 : result file name
# $3 : model file name
# $4 : python script file name

predict_value=`python $4 --model $3 --image $1  |grep 'predicted_label' | cut -c 18`
cp $1 newfile
echo section=data1 >> $2
echo predict_value=$predict_value >> $2
echo output_file=newfile >> $2
echo section=end >> $2
exit 0
