import java.io.*;
import java.net.*;
import java.util.*;
public class IOTController
{
public static void main(String gg[])
{
InputStream inputStream;
OutputStream outputStream;
InputStreamReader inputStreamReader;
OutputStreamWriter outputStreamWriter;
String command;
String device;
String board;
String request;
String response;
String splits1[];
String splits2[];
String str;
int x,i;
StringBuffer stringBuffer;
Socket socket;
BufferedReader bufferedReader;
InputStreamReader keyboardInputStreamReader;
keyboardInputStreamReader=new InputStreamReader(System.in);
bufferedReader=new BufferedReader(keyboardInputStreamReader);
try
{
while(true)
{
System.out.print("iot-controller>");
command=bufferedReader.readLine();
if(command.equalsIgnoreCase("QUIT")) break;
if(command.equals("help"))
{
System.out.println("ls : to get list of connected devices");
System.out.println("Turn on Electronic Device connected to Device ID.");
System.out.println("quit : to exit from the controller software");
continue;
}
if(command.equals("ls"))
{
request="CC,ls#";
socket=new Socket("localhost",5050);
outputStream=socket.getOutputStream();
outputStreamWriter=new OutputStreamWriter(outputStream);
outputStreamWriter.write(request);
outputStreamWriter.flush();
inputStream=socket.getInputStream();
inputStreamReader=new InputStreamReader(inputStream);
stringBuffer=new StringBuffer();
while(true)
{
x=inputStreamReader.read();
if(x=='#') break;
stringBuffer.append((char)x);
}
response=stringBuffer.toString();
socket.close();
if(response==null || response.length()==0)
{
System.out.println("No Boards connected to server");
continue;
}
splits1=response.split("!");
for(x=0;x<splits1.length;x++)
{
splits2=splits1[x].split(",");
System.out.println("-----------------------------------------");
System.out.println("Board : "+splits2[0]);
System.out.println("-----------------------------------------");
for(i=1;i<splits2.length;i++)
{
System.out.println(i+") "+splits2[i]); 
}
}
System.out.println();
continue;
}
str=command.toUpperCase();
if(str.startsWith("TURN_ON") || str.startsWith("TURN_OFF"))
{
x=str.indexOf("CONNECTED_TO");
if(x==-1) 
{
System.out.println("Invalid command, type help for list of commands");
continue;
}
if(str.startsWith("TURN_ON_")) i=8;
else i=9;
device=str.substring(i,x-1);
board=str.substring(x+13);
request="CC,CMD,"+board+","+device+",";
if(i==8) request=request+"1#";
if(i==9) request=request+"0#";
System.out.println("Request : "+request);
socket=new Socket("localhost",5050);
outputStream=socket.getOutputStream();
outputStreamWriter=new OutputStreamWriter(outputStream);
outputStreamWriter.write(request);
outputStreamWriter.flush();
inputStream=socket.getInputStream();
inputStreamReader=new InputStreamReader(inputStream);
stringBuffer=new StringBuffer();
while(true)
{
x=inputStreamReader.read();
System.out.print((char)x);
if(x=='#') break;
stringBuffer.append((char)x);
}
response=stringBuffer.toString();
System.out.println("Response : "+response);
socket.close();
if(response.equals("0"))
{
System.out.println("Board name: "+board+" and device name: "+device+" are invalid");
}else
if(response.equals("1"))
{
System.out.println("Invalid device name name: "+device);
}else
if(response.equals("2"))
{
System.out.println("Request accepted");
}
continue;
}



System.out.println("Invalid command, type help for list of commands");
}
System.out.println("Thank you for using command centre software");
}catch(Exception e)
{
System.out.println(e);
}
}
}