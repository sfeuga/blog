BASEURL=http://freeware.nekochan.net;
CD=source;

mkdir -p $CD;
cd $CD;
for folder in $(curl -s $BASEURL/$CD/ | grep href | awk '{ print $3 }' | sed 's/href="//' | sed 's|/"><img||' | grep -v 'alt="'); do
    for file in $(curl -s $BASEURL/$CD/$folder/ | grep href | awk '{ print $3 }' | sed 's/href="//' | sed 's|/"><img||' | grep -v alt= | grep -v "/$CD" | grep -v 'patches">' | sed 's/"><img//'); do
        mkdir -p $folder/;
        cd $folder;
        echo "Downloard $file: ";
        curl -# -o $file -C - $BASEURL/$CD/$folder/$file;
        cd ..;
    done;
done;
cd ..;
