DOCKER_PORT=22;
DOCKER_USER=root;
DOCKER_PASSWD=Zay86821458@;
# Log for Docker
function lgdoc() {
	TAIL_ROW=$3
	if [ ! -n "$TAIL_ROW" ]; then
		TAIL_ROW=500;
	fi;

	grep=""
    if [ -n "$4" ]; then
        grep=$grep' | grep '\'$4\';
    fi;
    if [ -n "$5" ]; then
        grep=$grep' | grep '\'$5\';
    fi;
    if [ -n "$6" ]; then
        grep=$grep' | grep '\'$6\';
    fi;

	lgn $1 $DOCKER_PORT $DOCKER_USER $DOCKER_PASSWD 'docker logs -f --tail='$TAIL_ROW' `docker ps | grep '\'$2\'' | awk '\'{print\ \$1}\''`'$grep' && exit';
}

# Log for DPC
function lgdpc() {
	TAIL_ROW=$1;
	GREP1=$2;
	GREP2=$3;
	GREP3=$4;
	lgdoc dpc.appx firedpc				$TAIL_ROW $GREP1 $GREP2 $GREP3;
}
function lggat() {
	lgdoc gat.appx iotgate				$1 $2 $3 $4;
}
function lggatcon() {
	lgdoc gatcon.appx iotgateconsole	$1 $2 $3 $4; 
}
function lgser() {
	lgdoc ser.appx fireserver			$1 $2 $3 $4;
}
function lgserapi() {
	lgdoc serapi.appx fireapi			$1 $2 $3 $4;
}
function lgcus() {
	lgdoc cus.appx firecustomer			$1 $2 $3 $4;
}
function lgcusapi() {
	lgdoc cusapi.appx firecustomerapi	$1 $2 $3 $4;
}
