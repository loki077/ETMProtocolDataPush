// Creates a client that sends input to a server

import processing.net.*; 
Client myClient; 
int clicks;
String dataIn     	= "";
String dataOut 		= "";
String dayCount   	= "5939";
String etmAustralia = "3.25.235.206";
String etmSweden  	= "13.48.67.153";
String deviceName 	= "TestDevice1704";
String deviceType 	= "B1C1C0I0S0";
String deviceFullName = "";


void setup() 
{ 
	myClient = new Client(this, etmAustralia, 10560); 
	deviceFullName = deviceName + "*" + deviceType;
} 

void draw() 
{ 
	if (myClient.available() > 0) 
	{
		dataIn = myClient.readString();
		println("DataIN < " + dataIn);
	}
	if(keyPressed) 
	{
		if(key == 'a')
		{
			dataOut = "#1,2,"+deviceFullName+","+dayCount+",222403,050101,17:09:30,6:50:29,45,31,71601 BLACK SW3.1.1.4 20200609 CT0705 GEN,716-15*B06032015000463,22,4,28,24.16,3148,,7,200D,8054620,4,29,0,358244084305681,0.00,3.90,,,,,,,,,,,\"Telstra Mobile\",89610180001929926541,,7,20,20,FDD,0,-69,-8.0,37,505,1,1:2:3:4:5:6:7,59991,\n\t";
			
			myClient.write(dataOut);
			println("DataOut > " + dataOut);
			delay(500);
		}
		if(key == 'b')
		{
			dataOut = "#22,1,"+deviceFullName+","+dayCount+",222342,7,1,"+dayCount+"222300,1,0,p/m,2,0.30,mBar,3,4,perc,4,-1.00,,5,0,dig,6,-1.00,,7,-1.00,,\n";
			myClient.write(dataOut);
			println("DataOut > " + dataOut);
			delay(500);
		}
		if (key == '1') 
		{
			dataOut = "#8,3,"+deviceFullName+","+dayCount+",144623,etsrd=05-01-01\n";
			myClient.write(dataOut);
			println("DataOut > " + dataOut);
			delay(500);
		}
		if (key == '2') 
		{
			dataOut = "#8,3,"+deviceFullName+","+dayCount+",144625,etsrtc="+dayCount+":14:49:12\n";
			myClient.write(dataOut);
			println("DataOut > " + dataOut);
			delay(500);
		}
		if (key == '3') 
		{
			dataOut = "#8,3,"+deviceFullName+","+dayCount+",144914,etswt=1,14:51,10\n";
			myClient.write(dataOut);
			println("DataOut > " + dataOut);
			delay(500);
		}
		if (key == '4') 
		{
			dataOut = "#8,3,"+deviceFullName+","+dayCount+",144916,etswt=2,14:54,10\n";
			myClient.write(dataOut);
			println("DataOut > " + dataOut);
			delay(500);
		}
		if (key == '5') 
		{
			dataOut = "#8,3,"+deviceFullName+","+dayCount+",144918,etswt=3,14:54,10\n";
			myClient.write(dataOut);
			println("DataOut > " + dataOut);
			delay(500);
		}
		if (key == '6') 
		{
			dataOut = "#8,3,"+deviceFullName+","+dayCount+",144918,etswt=4,14:54,10\n";
			myClient.write(dataOut);
			println("DataOut > " + dataOut);
			delay(500);
		}
		if (key == '7') 
		{
			dataOut = "#8,3,"+deviceFullName+","+dayCount+",144918,etswt=5,14:54,10\n";
			myClient.write(dataOut);
			println("DataOut > " + dataOut);
			delay(500);
		}
		if (key == '8') 
		{
			dataOut = "#8,3,"+deviceFullName+","+dayCount+",144924,etlpp=1,3\n";
			myClient.write(dataOut);
			println("DataOut > " + dataOut);
			delay(500);
		}
		if (key == '9') 
		{
			dataOut = "#8,3,"+deviceFullName+","+dayCount+",144926,ets(1:DO=0,2:DO=1,3:DO=1,4:DI,5:DO=1,6:A\n";
			myClient.write(dataOut);
			println("DataOut > " + dataOut);
			delay(500);
		}
		if (key == '0') 
		{
			dataOut = "#8,3,"+deviceFullName+","+dayCount+",144931,etris\n";
			myClient.write(dataOut);
			println("DataOut > " + dataOut);
			delay(500);
		}
	}
} 
