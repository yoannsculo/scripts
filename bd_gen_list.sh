#!/bin/bash

OUTPUT=./liste.html

echo "<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">" > $OUTPUT
echo "<html xmlns=\"http://www.w3.org/1999/xhtml\" dir=\"ltr\" lang=\"fr-FR\"><head><meta http-equiv=\"Content-type\" content=\"text/html; charset=utf-8\"></head><body>" >> $OUTPUT
echo "<table>" >> $OUTPUT

tail -n +2 list.csv | while read line
do
	TITRE=`echo $line | cut -d'|' -f1`
	AUTEURS=`echo $line | cut -d'|' -f2`
	ISBN13=`echo $line | cut -d'|' -f6`
	echo "<tr><td>$TITRE</td><td>$AUTEURS</td><td>$ISBN13</td></tr>" >> $OUTPUT
done

echo "</table>" >> $OUTPUT
echo "</body></html>" >> $OUTPUT

cat $OUTPUT
