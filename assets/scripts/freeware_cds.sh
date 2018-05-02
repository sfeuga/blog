BASEURL=http://freeware.nekochan.net;
CD=cd-1;
freewarecd;
CD=cd-2;
freewarecd;
CD=cd-3;
freewarecd;
CD=cd-4;
freewarecd;

function freewarecd() {
    echo "Start downloading $CD";
    mkdir -p $CD;
    cd $CD;
    for folder in $(curl -s $BASEURL/$CD/ | grep href | grep -v 'Parent Directory' | awk '{ print $3 }'  | grep -v alt= | grep -v relnotes | sed 's/href="//' | sed 's|/"><img||'); do
        mkdir -p $folder/;
        cd $folder;
        for file in $(curl -s $BASEURL/$CD/$folder/ | grep href | grep -v table | sed 's/<tr><td valign="top"><a href="//' | sed -e 's/"><img src=".*//' | grep -v html | grep -v "/$CD/"); do
            echo "Download $file: ";
            curl -# -o $file -C - $BASEURL/$CD/$folder/$file;
        done;
        cd ..;
    done;
    echo "<\!DOCTYPE HTML>\\n<html>\\n<head><title>RelNotes Freeware $CD</title></head>\\n<body>\\n<h1>Release Notes $CD</h1>\\n<ul>" > relnotes-$CD.html;
    echo "$(curl -s $BASEURL/$CD/relnotes/ | grep HREF | grep -v 'Legal Notice' | sed \"s|HREF=\"|HREF=\"http://freeware.nekochan.net/$CD/relnotes/|\" | sed 's|</A>|</a></li>|' | sed 's|<LI><A HREF=|<li><a href=|')" >> relnotes-#CD.html;
    echo "</ul>\\n</body>\\n</html>" >> relnotes-#CD.html;
    cd ..;
}
