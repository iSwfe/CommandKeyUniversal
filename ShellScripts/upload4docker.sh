DOCKER_PASSWD=Zay86821458@;
# Upload to Docker
function ulddoc() {
	HOST=$1;
	FROM=$2;
	TO=$3;
	uld $HOST 22 root $DOCKER_PASSWD $FROM $TO;
}

# Upload to DPC
function ulddpc() {
	ulddoc dpc.appx ./target/FireDPC.jar /root/;
}
function uldgat() {
	ulddoc gat.appx ./target/IoTGate.jar /root/;
}
function uldgatcon() {
	ulddoc gatcon.appx ./target/IoTGateConsole.jar /root/;
}
function uldser() {
	ulddoc ser.appx ./zywh-admin/target/FireServer.jar /root/;
}
function uldserapi() {
	ulddoc serapi.appx ./target/FireServerApi.jar /root/;
}
function uldcus() {
	ulddoc cus.appx ./zywh-admin/target/FireCustomer.jar /root/;
}
function uldcusapi() {
	ulddoc cusapi.appx ./target/FireCustomerApi.jar /root/;
}


