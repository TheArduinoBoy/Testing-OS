#For running type "./compile_linux.sh"
#If you have problem type "chmod +x compile_linux.sh"


nasm bootloader.asm -f bin -o bootloader.flp
nasm ExtendedProgram.asm -f bin -o ExtendedProgram.bin

copy /b Bootloader.bin+ExtendedProgram.bin Bootloader.flp

read -s -n 1 -p "Press any key to continue . . ."
echo ""
