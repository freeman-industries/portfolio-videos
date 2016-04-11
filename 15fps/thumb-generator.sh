find . -name "*.mp4" | while read f ; do 

filename=$(basename "$f") ;
filename="${filename%.*}" ;

ffmpeg -y -i $filename.mp4 -ss 00:00:00 -vframes 1 $filename.jpg;
done
