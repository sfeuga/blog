base_url=https://www.fxphd.com/details;

echo "# fxphd title list\n\n" > fxphd.md;
echo "| N°| Course Number | Title | Description |"  >> fxphd.md;
echo "|:----:|:----:|----|----|"  >> fxphd.md;

for course in {0..1000}; do
	echo "Fetch $base_url/$Course..."
	html=$(eval curl -s $base_url/$course/);
	title=$(echo $html | grep \<title\> | sed -e 's/<title>//' -e 's; | fxphd</title>;;');
	course_number=$(echo $html | grep "Course Number" | sed -e 's|<dt>Course Number:</dt><dd> ||' -e 's|</dd>||');
	description=$(echo $html | grep -e "classname" -C 1 | grep -v \<p\> | sed -e "s/<div class='classname'>//" -e 's|</div>||' -e 's/--//' -e 's/Class [0-9]*/\*\*&\*\*/' | tr '\n' ' ' | sed -e 's/  \*\*/\.\<br\>\*\*/g');

	if [ -z "$title" ]; then
		echo "| $course | N/A |  |  |" >> fxphd.md;
	else
		echo "| [$course]($base_url/$course/) | [$course_number]($base_url/$course/) | $title | $description. |" >> fxphd.md;
	fi;
done;