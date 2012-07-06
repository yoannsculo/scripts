#!/bin/bash

echo "<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">"
echo "<html xmlns=\"http://www.w3.org/1999/xhtml\" dir=\"ltr\" lang=\"fr-FR\">"
echo "<head>"
echo "<meta http-equiv=\"Content-type\" content=\"text/html; charset=utf-8\">"
echo "<link href=\"bootstrap/css/bootstrap.css\" rel=\"stylesheet\">"
echo "</head><body>"
echo "<table class=\"table table-bordered\">"
echo "<thead><tr><th>Titre</th><th width="30%">Auteurs</th><th>ISBN13</th></tr></thead>"

tail -n +2 list.csv | while read line
do
	TITRE=`echo $line | cut -d'|' -f1`
	AUTEURS=`echo $line | cut -d'|' -f2`
	ISBN13=`echo $line | cut -d'|' -f6`
	echo "<tr><td>$TITRE</td><td>$AUTEURS</td><td>$ISBN13</td></tr>"
done

echo "</table>"
echo "</body></html>"
