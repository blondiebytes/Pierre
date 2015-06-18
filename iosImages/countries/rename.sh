for i in *.png ; do mv $i $(echo $i | awk -F_ '{print $3}') ; done
