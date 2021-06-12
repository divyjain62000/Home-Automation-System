package com.minor.server;
import java.net.*;
import java.util.*;
import java.io.*;
import com.minor.board.*;
public class IOTServer
{
private LinkedList<Board> boards;
private ServerSocket serverSocket;
public Map<String,LinkedList<String>> commands;
public IOTServer()
{
this.boards=new LinkedList<>();
this.commands=new HashMap<>();
}
public void start()
{
try
{
serverSocket=new ServerSocket(5050);
InputStreamReader inputStreamReader;
InputStream inputStream;
String request;
String response;
OutputStream outputStream;
OutputStreamWriter outputStreamWriter;
StringBuffer stringBuffer;
Board board;
String boardName;
String deviceName;
int i,x;
Socket socket;
String splits[];
String command;
LinkedList<String> commandsList;
String commandText;
String boardID;
String electronicUnit;
String origin;
boolean boardNameFound;
boolean deviceNameFound;
List<String> electronicUnits;
while(true)
{
System.out.println("Server is ready to accept request on port 5050....");
socket=serverSocket.accept();
inputStream=socket.getInputStream();
inputStreamReader=new InputStreamReader(inputStream);
stringBuffer=new StringBuffer();
while(true)
{
i=inputStreamReader.read();
if(i=='#') break;
stringBuffer.append((char)i);
}
request=stringBuffer.toString();
splits=request.split(",");
origin=splits[0];

if(origin.equals("BR")) //board is registering
{
boardID=splits[1];
electronicUnits=new LinkedList<>();
for(i=2;i<splits.length;i++)
{
electronicUnit=splits[i];
electronicUnits.add(electronicUnit);
}
board=new Board();
board.id=boardID;
board.electronicUnits=electronicUnits;
boards.add(board);
response="GOT_IT#";
System.out.println("Board asking for registernig on sever");
System.out.println("Request being processing %.....");
outputStream=socket.getOutputStream();
outputStreamWriter=new OutputStreamWriter(outputStream);
outputStreamWriter.write(response);
outputStreamWriter.flush();
socket.close();
System.out.println("Board registered sucessfull!");
continue;
}else
if(origin.equals("BC")) // board is asking for commands
{
boardName=splits[1];
response="";
if(commands.containsKey(boardName))
{
commandsList=commands.get(boardName);
if(commandsList.size()>0)
{
for(String cmd:commandsList)
{
if(response.length()>0) response=response+",";
response=response+cmd;
}
commandsList.clear(); //very very important
}
}
response=response+"#";
outputStream=socket.getOutputStream();
outputStreamWriter=new OutputStreamWriter(outputStream);
outputStreamWriter.write(response);
outputStreamWriter.flush();
socket.close();
continue;
}else
if(origin.equals("CC")) //something arrived from command centre
{
command=splits[1];
if(command.equals("CMD"))
{
boardName=splits[2];
deviceName=splits[3];
command=splits[3]+","+splits[4];
//validation is to be applied;

boardNameFound=false;
deviceNameFound=false;
for(x=0;x<boards.size();x++)
{
board=boards.get(x);
if(board.id.equals(boardName))
{
boardNameFound=true;
for(i=0;i<board.electronicUnits.size();i++)
{
if(deviceName.equals(board.electronicUnits.get(i)))
{
deviceNameFound=true;
break;
}
}
break;
}
}
response="";
System.out.println("BoardNameFound : "+boardNameFound);
System.out.println("DeviceNameFound : "+deviceNameFound);
if(boardNameFound && deviceNameFound)
{
commandsList=commands.get(boardName);
if(commandsList==null)
{
commandsList=new LinkedList<>();
commands.put(boardName,commandsList);
}
commandsList.add(command);
response="2#";
}else
if(boardNameFound==false && deviceNameFound==false)
{
response="0#";
}else
if(boardNameFound && deviceNameFound==false)
{
response="1#";
}
outputStream=socket.getOutputStream();
outputStreamWriter=new OutputStreamWriter(outputStream);
outputStreamWriter.write(response);
outputStreamWriter.flush();
socket.close();
continue;
}



if(command.equals("ls")) //asking for list
{
response="";
i=0;
for(Board b:boards)
{
i++;
response=response+b.id;
for(String eu:b.electronicUnits)
{
response=response+","+eu;
}
if(i<boards.size())
{
response=response+"!";
}
}
response=response+"#";
System.out.println("\nClient asking for list of electric units");
System.out.println("Request being processing %.....");
outputStream=socket.getOutputStream();
outputStreamWriter=new OutputStreamWriter(outputStream);
outputStreamWriter.write(response);
System.out.println("List send to client sucessfully!");
outputStreamWriter.flush();
socket.close();
}
}
}
}
catch(Exception exception)
{
System.out.println(exception.getMessage()); //may be remove after testing
}
}
}
