if [ "$1"  == "GET /test HTTP/1.1" ] ||[ "$1"  == "POST /test HTTP/1.1" ]|| [ "$1"  ==  "DELETE /test HTTP/1.1" ]
then
	echo "HTTP/1.1 200 OK"
	exit 0	
else
	echo "HTTP/1.1 400 Bad Request"
	exit 1
fi
