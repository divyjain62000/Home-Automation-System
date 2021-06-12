#include<SoftwareSerial.h>
SoftwareSerial wifi(2,3); //TX RX se connect karne ke liye
char x;
int i;
int i1,i2;
char response[200];
void setup() {
delay(5000);
pinMode(13,OUTPUT); //MCB
pinMode(12,OUTPUT); //HALL_BULB
pinMode(11,OUTPUT); //HALL_FAN
pinMode(10,OUTPUT); //KITCHEN_BULB
pinMode(9,OUTPUT); //BEDROOM_BULB
pinMode(8,OUTPUT); //PORCH_BULB
Serial.begin(9600);
Serial.println("Setting up everything");
wifi.begin(9600);
while(!wifi); //good practice

Serial.println("Wifi module initiallized");
Serial.println("Resetting wifi");
wifi.print("AT+RST\r\n");
delay(2000);
while(wifi.available()) Serial.print((char)wifi.read());
Serial.println("wifi reset complete");

Serial.println("Testing");
wifi.print("AT\r\n");
delay(2000);
while(wifi.available()) Serial.print((char)wifi.read());
Serial.println("Testing complete");

Serial.println("Putting wifi in station mode");
wifi.print("AT+CWMODE=1\r\n");
delay(2000);
while(wifi.available()) Serial.print((char)wifi.read());
Serial.println("wifi modlue is now in station mode");
delay(20000);

Serial.println("Disconnecting from AP");
wifi.print("AT+CWQAP\r\n");
delay(3000);
while(wifi.available()) Serial.print((char)wifi.read());
Serial.println("Now wifi module is not connected to any AP");

Serial.println("Connecting to wifi");
wifi.print("AT+CWJAP_CUR=\"divy\",\"divy40041\"\r\n");

x=1;
while(x<=5)
{
delay(2500);
while(wifi.available()) Serial.print((char)wifi.read());
x++;
}
Serial.println("Connected to wifi");

Serial.println("Connecting to IOTServer");
wifi.print("AT+CIPSTART=\"TCP\",\"192.168.43.49\",5050\r\n");
delay(5000);
while(wifi.available()) Serial.print((char)wifi.read());
Serial.println("Connected to IOTServer");

Serial.println("Registering on IOTServer");
wifi.print("AT+CIPSEND=73\r\n");
delay(2000);
while(wifi.available()) Serial.print((char)wifi.read());
//BR board registration ke liye hai
wifi.print("BR,MY_HOME,HALL_BULB,HALL_FAN,KITCHEN_BULB,BEDROOM_BULB,PORCH_BULB,MCB,#");  // be careful no backslash r and backslash n
delay(5000);
while(wifi.available()) Serial.print((char)wifi.read());
Serial.println("Registered on IOTServer");
}

void loop() {
Serial.println("Connecting to IOTServer");
wifi.print("AT+CIPSTART=\"TCP\",\"192.168.43.49\",5050\r\n");
delay(5000);
while(wifi.available()) Serial.print((char)wifi.read());
Serial.println("Connected to IOTServer");

Serial.println("Asking for command from IOTServer");
wifi.print("AT+CIPSEND=8\r\n");
delay(3000);
while(wifi.available()) Serial.print((char)wifi.read());
wifi.print("BC,MY_HOME#");  // be careful no backslash r and backslash n
if(!wifi.find((char *)"+IPD,"));
{
  while(wifi.available()) wifi.read();
  return;
}

while(wifi.available() && wifi.read()!=':');
i=0;
while(wifi.available() && i<199)
{
  x=(char)wifi.read();
  if(x=='#') break;
  response[i]=x;
  i++;
}
response[i]='\0';
while(wifi.available()) wifi.read();
if(x!='#') return;
Serial.println("Command received from IOTServer");
Serial.print("Length of command : ");
Serial.println(i);
Serial.println("Following is a command to be executed : ");

Serial.println(response);
i2=0;
while(response[i2]!='\0')
{
i1=i2;
while(response[i2]!=',') i2++;
response[i2]='\0';
i2++;
pinMode(13,OUTPUT); //MCB
if(strcmp(response+i1,"MCB")==0) //STRCMP RETURN 0 WHEN STRINGS ARE SAME
{
if(x=='1') 
{
  digitalWrite(12,HIGH);  
  digitalWrite(11,HIGH);  
  digitalWrite(10,HIGH);  
  digitalWrite(9,HIGH);  
  digitalWrite(8,HIGH);  
}
if(x=='0') 
{
  digitalWrite(12,LOW);  
  digitalWrite(11,LOW);  
  digitalWrite(10,LOW);  
  digitalWrite(9,LOW);  
  digitalWrite(8,LOW);  
}
}else
if(strcmp(response+i1,"HALL_BULB")==0) //STRCMP RETURN 0 WHEN STRINGS ARE SAME
{
if(x=='1') digitalWrite(12,HIGH);  
if(x=='0') digitalWrite(12,LOW);
}else
if(strcmp(response+i1,"HALL_FAN")==0) //STRCMP RETURN 0 WHEN STRINGS ARE SAME
{
if(x=='1') digitalWrite(11,HIGH);  
if(x=='0') digitalWrite(11,LOW);
}else
if(strcmp(response+i1,"KITCHEN_BULB")==0) //STRCMP RETURN 0 WHEN STRINGS ARE SAME
{
if(x=='1') digitalWrite(10,HIGH);  
if(x=='0') digitalWrite(10,LOW);
}else
if(strcmp(response+i1,"BEDROOM_BULB")==0) //STRCMP RETURN 0 WHEN STRINGS ARE SAME
{
if(x=='1') digitalWrite(9,HIGH);  
if(x=='0') digitalWrite(9,LOW);
}else
if(strcmp(response+i1,"PORCH_BULB")==0) //STRCMP RETURN 0 WHEN STRINGS ARE SAME
{
if(x=='1') digitalWrite(8,HIGH);  
if(x=='0') digitalWrite(8,LOW);
}
i2++;
if(response[i2]=='\0') break;
i2++;
}
}
