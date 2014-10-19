trimForHTTP(){
echo $@ | sed 's/[[:blank:]]/%20/g' | sed 's/+/%2B/g'; }

google(){
firefox https://www.google.de/search?q=`trimForHTTP $@`; }

wiki(){
firefox https://de.wikipedia.org/w/index.php?search=`trimForHTTP $@`; }

wolfram(){
firefox http://www.wolframalpha.com/input/?i=`trimForHTTP $@`; }

imdb(){
firefox http://www.imdb.com/find?`trimForHTTP $@`; }

translate(){
firefox http://dict.leo.org/#/search=`trimForHTTP $@`; }
