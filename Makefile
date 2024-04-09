source_path=/home/ziad/os_labs/lab1/source
destination_path=/home/ziad/os_labs/lab1/backup

run-script:
	sh backup.sh $(source_path) $(destination_path) 3 2
