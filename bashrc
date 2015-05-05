#trims input for the url
#to ensure clean functionality you will poissble need to put the input into quotations
#example: google "something with <special#chars?>"
trimForHTTP(){
echo $@ | sed 's/[[:blank:]]/%20/g' | sed 's/+/%2B/g' | sed 's/&/%26/g' | sed 's/?/%3f/g' | sed 's/#/%23/g' | sed 's/</%3C/g' | sed 's/>/%3E/g'; }

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

display-brightness(){
max=2583660    #Here must be the value of /sys/class/backlight/intel_backlight/max_brightness
sudo echo $[$max*$1/100] > /sys/class/backlight/intel_backlight/brightness
}
