source=$1
destination=$2
sec=$3
max_backups=$4

last=/home/ziad/os_labs/lab1/directory-info-last.txt
new=/home/ziad/os_labs/lab1/directory-info-new.txt

if [ -d $destination ];
then 
 echo "backup directory exists"
else
 echo "new backup directory created"
 mkdir "$destination"
fi

while :
do
 ls -lr "$source" > "$new"
 changed=$(diff $last $new | wc -l)

 if [ $changed -eq 0 ];
 then
  echo "not changed"
  
 else
  echo "changed"
  
  currentdate=`date +"%Y-%m-%d %T"`
  mkdir "$destination"/"$currentdate"
  new_directory="$destination"/"$currentdate"
  
  cp -r "$source" "$new_directory"
  
  cat "$new" > "$last"
 fi 
 
 backups_no=$(ls "$destination" -1 | wc -l)
 
 if [ $backups_no -gt $max_backups ];
 then
  folder=$(ls "$destination"/ -tr | head -n 1)
  rm -r "$destination"/"$folder"
 fi

 sleep $sec
done
