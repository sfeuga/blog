BASEURL=http://freeware.nekochan.net;
CD=beta;

mkdir -p $CD;
cd $CD;
for file in $(curl $BASEURL/$CD/ | grep tardist\< | awk '{ print $3 }' | sed 's/href="//' | sed 's/"><img//'); do
    printf "Download $file: ";
    curl -# -o $file -C - $BASEURL/$CD/$file;
done;
cd ..;
