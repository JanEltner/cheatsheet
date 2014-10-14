trimBlankForHTTP(){
echo $@ | sed 's/[[:blank:]]/%20/g'; }

google(){
firefox https://www.google.de/search?q=`trimBlankForHTTP $@`; }

wiki(){
firefox https://de.wikipedia.org/w/index.php?search=`trimBlankForHTTP $@`; }
