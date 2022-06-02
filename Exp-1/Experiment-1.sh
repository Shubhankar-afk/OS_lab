if [ ! -d 'directory-1' ]; then
	mkdir 'directory-1'
	echo 'directory-1 is created'
	cd directory-1
	pwd
	touch 'file1.txt'
	echo 'file1.txt created, to write into it press 1, else press 0'
	read choice
	if [ $choice -eq 1 ]; then
		echo 'Press CTRL+C to complete writing'
		while [ 1 -eq 1 ]; do
			cat >> 'file1.txt'
		done
	elif [ $choice -eq 0 ]; then
		echo 'Sure'
	else
		echo 'Please select a valid option (0 or 1)'
	fi
else
	cd directory-1
	echo 'directory-1 already exists'
	pwd
fi
cd ..
pwd

