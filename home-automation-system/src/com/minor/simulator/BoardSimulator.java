import java.net.*;
import java.io.*;
/*
We will accept command line arguments as:
BLUE FAN Cooler
*/
class BoardSimulator
{
public static void main(String gg[])
{
if(gg.length<2)
{
System.out.println("You need to pass board id and list of electronic unit");
return;
}
try
{
String request="BR";
int x;
for(x=0;x<gg.length;x++)
{
request=request+","+gg[x];
}
request=request+"#";
Socket socket=new Socket("localhost",5050);
InputStreamReader inputStreamReader;
InputStream inputStream;
OutputStream outputStream;
OutputStreamWriter outputStreamWriter;
StringBuffer stringBuffer;
String response;
String command;
String deviceName;
String splits[];
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
System.out.println(response);
socket.close();


while(true)
{
try
{
Thread.sleep(5000);
}catch(Exception exception)
{
System.out.println(exception); //May be remove after Testing
}
socket=new Socket("localhost",5050);
request="BC,"+gg[0]+"#";
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
if(response.length()==0)
{
System.out.println("Nothing to do");
continue;
}
splits=response.split(",");
x=0;
while(x<splits.length)
{
deviceName=splits[x];
x++;
command=splits[x];
x++;
if(command.equals("0")) System.out.println("Turn off: "+deviceName);
if(command.equals("1")) System.out.println("Turn on: "+deviceName);
}
}
}
catch(Exception exception)
{
System.out.println(exception);
}
}
}