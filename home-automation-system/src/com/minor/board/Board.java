package com.minor.board;
import java.util.*;
public class Board
{
public String id;
public List<String> electronicUnits;
public Board()
{
id="";
this.electronicUnits=null;
}
public void setId(String id)
{
this.id=id;
}
public String getId()
{
return this.id;
}
public void setElectronicUnits(List<String> electronicUnits)
{
this.electronicUnits=electronicUnits;
}

public List<String> getElectronicUnits()
{
return this.electronicUnits;
}



}
