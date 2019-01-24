#FBI Warning by Sung Dz-da
terminal_width=$(tput cols)
terminal_height=$(tput lines)

function put_line
{
	size=${#1}
	let provision=(terminal_width-size)/2
	if [[ $provision -lt 0 ]]; then
		provision=0
	fi
	tput cuf $provision
	printf "$1"
}

echo -e "\n" #Put 2 new lines

printf "\x1b[41;97;1m" #41=red BG; 97=bright white FG; 1=bold
put_line " FBI WARNING "
printf "\x1b[0;97m\n"

put_line "Federal Law provides severe civil and criminal penalties" ; echo ""
put_line "for the unauthorized reproduction, distribution, or exhibition" ; echo ""
put_line "of copyrighted motion pictures (Title 17, United States Code," ; echo ""
put_line "Sections 501 and 508). The Federal Bureau of Investigation " ; echo ""
put_line "investigates allegations of criminal copyright infringement" ; echo ""
put_line "(Title 17, United States Code, Section 506)." ; echo ""

echo -e "\x1b[0m" #Reset all attributes, put new line

let remaining=$terminal_height-11
for (( i=0; i<$remaining; i++)); do
	echo ""
done

tput cup 11 0
