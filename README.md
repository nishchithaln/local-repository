# local-repository
# hellow world
echo "
 --------------------------------------
|Displaying the conent of duplicate.txt|
 --------------------------------------
List of deleted duplicate files:">duplicate.txt
echo -n "Enter the first directory name: "
read mydir1
if test ! -d $mydir1
then 
  echo "Directory '$mydir1' does not exist."
  exit 0

else
    echo -n "Enter the second directory name: "
    read mydir2
    if test ! -d $mydir2
    then 
      echo "Directory '$mydir2' does not exist."
      exit 0
     else
	for d1f in ./$mydir1/*
	do
 	  if test -f $d1f
  	  then 
             file1=$(basename "$d1f")
    	     for d2f in ./$mydir2/*
	     do
             if test -f $d2f
  	     then
               file2=$(basename "$d2f")
               if [ "$file1" == "$file2" ]
               then
		 echo "Name: $file2,  Root --->$d2f ">>duplicate.txt
                 #rm $d2f
               fi
             fi
             done
          fi
        done
      fi
   fi

  
cat duplicate.txt  
echo " ">>duplicate.txt
