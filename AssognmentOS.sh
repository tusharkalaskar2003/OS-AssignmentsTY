#!/bin/bash

#1. Shell programming Write a program to implement an address book with options given below:
#    a) Create address book. b) View address book. c) Insert a record. d) Delete a record. e) Modify a record. f) Exit

add_record() {
	echo Enter the following data: Name ID Branch Year
	read Name ID Branch Year
	echo " $Name -> $ID -> $Branch -> $Year. " >> Address_book.txt
	echo Data added succesfully...
	
} 

delete_record() {
	echo Enter the ID
	read ID
	sed -i "/$ID/d" Address_book.txt
	echo record deleted.
	
}
read_record(){
	echo Enter the ID
	read ID
	grep -w "$ID" Address_book.txt 
}


options() {
	echo Select below option to proceed....
	echo
	echo 1 = To creat new address book.
	echo 2 = To add records in address book.
	echo 3 = To read Address book.
	echo 4 = To delete the record.
	echo 5 = To modify the record.
	echo 6 = To exit.
	echo 
	echo "Select the Option:-"
	echo
}

modify_record(){
	touch temp.txt
        echo "Enter Name  ID  Branch  Year to want to be Replace"
        read ID
        echo "Enter new Name  ID  Branch  Year"
        read Name ID Branch Year
         
        while IFS= read -r line; 
        do
        	echo "$line"
        	if [[ "$line" == "$ID1" ]]; 
        	then
               		echo "$NAME $ID $Branch $Year" >> temp.txt
            	else
               		echo "$line" >> temp.txt
            	fi
         	done < "address.txt"
         	mv "temp.txt" "address_book.txt"
         	echo "Record modified successfully!"
}
count=1
while [ $count -eq 1 ]
do
	options
	read choice
	case $choice in
		1) touch Address_book.txt ;;
		2) add_record ;;
		3) read_record ;;
		4) delete_record ;;
		5) modify_record ;;
		6) echo jayshreeRAM....
		   exit 0 ;;
		
	esac

done




 


