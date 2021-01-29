function rlCtrl()
   {
   // DateCtrl created by yyc  2000-6-18
   // Copyright (C) 2000.6 yyc, All Rights Reserved
   // this is a free class,but you must be reserve this comments
   // E-mail:yycmail@263.net
     var varMe,s,d,i;
     var len= rlCtrl.arguments.length;
     if (len>0)
     {
       varMe=rlCtrl.arguments[0];
       this.name=varMe;
       if (len>=4)
         {
           this.year=rlCtrl.arguments[1];
           this.month=rlCtrl.arguments[2];
           this.day=rlCtrl.arguments[3];
         }
       else
         {
          today=new Date();
          this.year=today.getYear();
          this.month=today.getMonth()+1;
          this.day=today.getDate();
         }
     this.getdate=getCurDate;
         
     document.writeln('<TABLE width=160px border=0 cellPadding=0 cellSpacing=0>');
     document.writeln('<TR><td>');
     d=new Date(this.year,this.month-1,this.day);
     i=d.getDay();
     s=getsweek(i);
     s=this.year+"年"+this.month+"月"+this.day+"日--"+s
     document.writeln('<INPUT  id=txt'+varMe+' name=txt'+varMe+'  ondblclick=\'opencls('+varMe+');\' style="FONT-SIZE: 9pt; FONT-STYLE: normal; HEIGHT: 20px; width:100%" value='+s+' readonly ></TD>');
     document.writeln('<TD width=15px>');
     document.writeln('<input type=button  onclick=\'opencls('+varMe+');\' style=" cursor:hand;FONT-SIZE: 8pt; FONT-STYLE: normal;" value="▼">');
      document.writeln('</TD></TR>');
     document.writeln("</table>"); 
      
     document.writeln('<div id=div'+varMe+' name =div'+varMe+' style=" POSITION:absolute;display:none; WIDTH: 160px">');
     document.writeln('<TABLE id=tbl'+varMe+' name=tbl'+varMe+' WIDTH=100% BGCOLOR=#c0c0c0  onkeyup=\'doKey('+varMe+',window.event.keyCode) \' ALIGN=center style="COLOR: blue; FONT-SIZE: 9pt;" BORDER=1 CELLSPACING=1 CELLPADDING=1>');
     document.writeln("<TR><TD colspan=7>");
   document.writeln('<INPUT id=year'+varMe+' name=year'+varMe+' value='+this.year+' style="BACKGROUND-COLOR:transparent; BORDER-BOTTOM: green 0px solid;BORDER-LEFT: green 0px solid;BORDER-RIGHT: green 0px solid; BORDER-TOP: green 0px solid;COLOR: blue;CURSOR: hand; FONT-SIZE: 10pt; HEIGHT: 15px; MARGIN-TOP: 0pt; WIDTH: 35px" ');
   document.writeln('onmousemove   =\'javascript:if (this.readOnly)  {this.style.backgroundColor=0xffffff;  this.style.borderWidth=1;} \'');
   document.writeln('onmouseout =\'javascript: if (this.readOnly) { this.style.backgroundColor  ="transparent";this.style.borderWidth=0;} \' ');
   document.writeln('onclick=\'javascript: this.style.cursor="default"; this.readOnly=0; this.select(); this.focus(); \' ');
   document.writeln('onblur=\'javascript:this.style.backgroundColor="transparent"; this.style.borderWidth=0; this.style.cursor="hand"; this.readOnly=1; this.value='+varMe+'.year;dispDate('+varMe+'); \' '); //tbl'+varMe+'.focus(); 
   document.writeln('onkeypress=\'javascript:if (window.event.keyCode==13||window.event.keyCode ==27){ if (window.event.keyCode==13) '+varMe+'.year=this.value;  this.blur();  }else if (window.event.keyCode<48||window.event.keyCode>57) window.event.keyCode =0;\'');
   document.writeln('readonly maxlength=4>');
    //=====================
     document.writeln('年<span style="cursor:hand" onclick=\''+varMe+'.year='+varMe+'.year+1;year'+varMe+'.innerText='+varMe+'.year;dispDate('+varMe+');\'>▲</span><span style="cursor:hand" onclick=\''+varMe+'.year='+varMe+'.year-1;year'+varMe+'.innerText='+varMe+'.year;dispDate('+varMe+');\'>▼</span>');
     document.writeln ('&nbsp;&nbsp;');
     document.writeln('<span id=month'+varMe+'>'+this.month+'</span>月<span style="cursor:hand" onclick=\''+varMe+'.month='+varMe+'.month+1;if('+varMe+'.month>12) '+varMe+'.month=1;month'+varMe+'.innerText='+varMe+'.month;dispDate('+varMe+');\'>▲</span><span style="cursor:hand" onclick=\''+varMe+'.month='+varMe+'.month-1;if('+varMe+'.month<1) '+varMe+'.month=12;month'+varMe+'.innerText='+varMe+'.month;dispDate('+varMe+');\'>▼</span>');
     document.writeln("</td></tr>");
     
     document.writeln('<TR style="COLOR: yellow; " bgcolor=DarkSlateBlue><TD>日</TD><TD>一</TD><TD>二</TD><TD>三</TD><TD>四</TD><TD>五</TD><TD>六</TD></TR>');
     
     document.writeln('<TR><TD style="cursor:hand" onclick=clkGrid(this,'+varMe+') id=td'+varMe+'0>&nbsp;</TD><TD style="cursor:hand" onclick=clkGrid(this,'+varMe+') id=td'+varMe+'1>&nbsp;</TD><TD style="cursor:hand" onclick=clkGrid(this,'+varMe+') id=td'+varMe+'2>&nbsp;</TD><TD style="cursor:hand" onclick=clkGrid(this,'+varMe+') id=td'+varMe+'3>&nbsp;</TD><TD  style="cursor:hand" onclick=clkGrid(this,'+varMe+') id=td'+varMe+'4>&nbsp;</TD><TD style="cursor:hand" onclick=clkGrid(this,'+varMe+') id=td'+varMe+'5>&nbsp;</TD><TD style="cursor:hand" onclick=clkGrid(this,'+varMe+') id=td'+varMe+'6>&nbsp;</TD></TR>');
     document.writeln('<TR><TD style="cursor:hand" onclick=clkGrid(this,'+varMe+') id=td'+varMe+'7>&nbsp;</TD><TD style="cursor:hand" onclick=clkGrid(this,'+varMe+') id=td'+varMe+'8>&nbsp;</TD><TD style="cursor:hand" onclick=clkGrid(this,'+varMe+') id=td'+varMe+'9>&nbsp;</TD><TD style="cursor:hand" onclick=clkGrid(this,'+varMe+') id=td'+varMe+'10>&nbsp;</TD><TD style="cursor:hand" onclick=clkGrid(this,'+varMe+') id=td'+varMe+'11>&nbsp;</TD><TD style="cursor:hand" onclick=clkGrid(this,'+varMe+') id=td'+varMe+'12>&nbsp;</TD><TD style="cursor:hand" onclick=clkGrid(this,'+varMe+') id=td'+varMe+'13>&nbsp;</TD></TR>');
     document.writeln('<TR><TD style="cursor:hand" onclick=clkGrid(this,'+varMe+') id=td'+varMe+'14>&nbsp;</TD><TD style="cursor:hand" onclick=clkGrid(this,'+varMe+') id=td'+varMe+'15>&nbsp;</TD><TD style="cursor:hand" onclick=clkGrid(this,'+varMe+') id=td'+varMe+'16>&nbsp;</TD><TD style="cursor:hand" onclick=clkGrid(this,'+varMe+') id=td'+varMe+'17>&nbsp;</TD><TD style="cursor:hand" onclick=clkGrid(this,'+varMe+') id=td'+varMe+'18>&nbsp;</TD><TD style="cursor:hand" onclick=clkGrid(this,'+varMe+') id=td'+varMe+'19>&nbsp;</TD><TD style="cursor:hand" onclick=clkGrid(this,'+varMe+') id=td'+varMe+'20>&nbsp;</TD></TR>');
     document.writeln('<TR><TD style="cursor:hand" onclick=clkGrid(this,'+varMe+') id=td'+varMe+'21>&nbsp;</TD><TD style="cursor:hand" onclick=clkGrid(this,'+varMe+') id=td'+varMe+'22>&nbsp;</TD><TD style="cursor:hand" onclick=clkGrid(this,'+varMe+') id=td'+varMe+'23>&nbsp;</TD><TD style="cursor:hand" onclick=clkGrid(this,'+varMe+') id=td'+varMe+'24>&nbsp;</TD><TD style="cursor:hand" onclick=clkGrid(this,'+varMe+') id=td'+varMe+'25>&nbsp;</TD><TD style="cursor:hand" onclick=clkGrid(this,'+varMe+') id=td'+varMe+'26>&nbsp;</TD><TD style="cursor:hand" onclick=clkGrid(this,'+varMe+') id=td'+varMe+'27>&nbsp;</TD></TR>');
     document.writeln('<TR><TD style="cursor:hand" onclick=clkGrid(this,'+varMe+') id=td'+varMe+'28>&nbsp;</TD><TD style="cursor:hand" onclick=clkGrid(this,'+varMe+') id=td'+varMe+'29>&nbsp;</TD><TD style="cursor:hand" onclick=clkGrid(this,'+varMe+') id=td'+varMe+'30>&nbsp;</TD><TD style="cursor:hand" onclick=clkGrid(this,'+varMe+') id=td'+varMe+'31>&nbsp;</TD><TD style="cursor:hand" onclick=clkGrid(this,'+varMe+') id=td'+varMe+'32>&nbsp;</TD><TD style="cursor:hand" onclick=clkGrid(this,'+varMe+') id=td'+varMe+'33>&nbsp;</TD><TD style="cursor:hand" onclick=clkGrid(this,'+varMe+') id=td'+varMe+'34>&nbsp;</TD></TR>');
     document.writeln('<TR><TD style="cursor:hand" onclick=clkGrid(this,'+varMe+') id=td'+varMe+'35>&nbsp;</TD><TD style="cursor:hand" onclick=clkGrid(this,'+varMe+') id=td'+varMe+'36>&nbsp;</TD><TD style="cursor:hand" onclick=clkGrid(this,'+varMe+') id=td'+varMe+'37>&nbsp;</TD><TD style="cursor:hand" onclick=clkGrid(this,'+varMe+') id=td'+varMe+'38>&nbsp;</TD><TD style="cursor:hand" onclick=clkGrid(this,'+varMe+') id=td'+varMe+'39>&nbsp;</TD><TD style="cursor:hand" onclick=clkGrid(this,'+varMe+') id=td'+varMe+'40>&nbsp;</TD><TD style="cursor:hand" onclick=clkGrid(this,'+varMe+') id=td'+varMe+'41>&nbsp;</TD></TR>');
     document.writeln("</table></div>");   
       return this;
     }
     else
      {
        alert("初始化日历控件错误！！")
        return null;
      }
             
   }
   
   function opencls(vMe)
   {
     var s=vMe.name;
     var o=document.all("div"+s);
     var o1=document.all("tbl"+s);
     if (o.style.display=="none") 
      { 
        dispDate(vMe); 
        o.style.display="block";
        o1.focus();
       }
      else
       doKey(vMe,27);
   }
   
   function getCurDate()
   {
     return this.year+"-"+this.month+"-"+this.day;
   }
   
   function numberOfDays(y,m)
   {
     var numDays=new Array(31,28,31,30,31,30,31,31,30,31,30,31);
     n=numDays[m];
     if (m==1 && y%4==0) ++n
     return n;
   }
   
  function doKey(vMe,keyCode)
   { 
     var o,o1,i,j,k,d1,d,s;
     o=document.all("div"+vMe.name);
     
     switch(keyCode)
      {
     case 27: 
        o.style.display="none";
        o1=document.all("txt"+vMe.name);
        s=o1.value;
        i=s.indexOf("年");
        j=s.indexOf("月");
        k=s.indexOf("日");
        vMe.year=Math.abs(s.substring(0,i));
        vMe.month=Math.abs(s.substring(i+1,j));
        vMe.day=Math.abs(s.substring(j+1,k));
        o1.focus;
        break;
     case 13:
       
         o.style.display="none";
         d=new Date(vMe.year,vMe.month-1,vMe.day);
         i=d.getDay();
         s=getsweek(i);
         o1=document.all("txt"+vMe.name);
         o1.value=vMe.year+"年"+vMe.month+"月"+vMe.day+"日--"+s;
        break;
     case 38:
        
        i=vMe.day;
        j=numberOfDays(vMe.year,vMe.month-1);
        i=i-7;
        if(i>0&&i<=j)
          {
           d1=new Date(vMe.year,vMe.month-1,1);
           k=d1.getDay();
           j=vMe.day+k-1;
        
           o1=document.all("td"+vMe.name+j);
           o1.innerHTML=vMe.day;
           vMe.day=i;
           j=vMe.day+k-1;
          
           o1=document.all("td"+vMe.name+j);
           o1.innerHTML="<FONT color=red>"+vMe.day+"</FONT>";
          }
         break; 
     case 40:
         
          i=vMe.day;
          j=numberOfDays(vMe.year,vMe.month-1);
          i=i+7;
          if(i>0&&i<=j)
            {
              d1=new Date(vMe.year,vMe.month-1,1);
              k=d1.getDay();
              j=vMe.day+k-1;
              o1=document.all("td"+vMe.name+j);
              o1.innerHTML=vMe.day;
              vMe.day=i;
              j=vMe.day+k-1;
              o1=document.all("td"+vMe.name+j);
              o1.innerHTML="<FONT color=red>"+vMe.day+"</FONT>";
            }
          break;  
     case 37:
        i=vMe.day;
        j=numberOfDays(vMe.year,vMe.month-1);
        i=i-1;
        if(i>0&&i<=j)
          {
           d1=new Date(vMe.year,vMe.month-1,1);
           k=d1.getDay();
           j=Math.abs(vMe.day)+Math.abs(k-1);
           o1=document.all("td"+vMe.name+j);
           o1.innerHTML=vMe.day;
           vMe.day=i;
           j=Math.abs(vMe.day)+Math.abs(k-1);
           o1=document.all("td"+vMe.name+j);
           o1.innerHTML="<FONT color=red>"+vMe.day+"</FONT>";
          }
         break; 
     case 39:
       i=vMe.day;
        j=numberOfDays(vMe.year,vMe.month-1);
        i=i+1;
        if(i>0&&i<=j)
          {
           d1=new Date(vMe.year,vMe.month-1,1);
           k=d1.getDay();
           j=Math.abs(vMe.day)+Math.abs(k-1);
           o1=document.all("td"+vMe.name+j);
           o1.innerHTML=vMe.day;
           vMe.day=i;
           j=Math.abs(vMe.day)+Math.abs(k-1);
           o1=document.all("td"+vMe.name+j);
           o1.innerHTML="<FONT color=red>"+vMe.day+"</FONT>";
          }
       break;
     }

    }  


   function dispDate(objRL)
   {
     var o;
     var s=objRL.name;
     var y=objRL.year;
     var m=objRL.month;
     var d=objRL.day;
     var dd=new Date(y,m-1,1)
     var startDay=dd.getDay();
     var numDays=numberOfDays(y,m-1);
     for (var i=0;i<42;i++)
       {
         
         o=document.all("td"+s+i);
         if (i>=startDay&&i<startDay+numDays)
           if (d==i-startDay+1) 
             o.innerHTML="<FONT color=red>"+d+"</FONT>";
           else
             o.innerHTML=i-startDay+1;
         else
            o.innerHTML=""
       }
     
   }
   
   function clkGrid(src,vMe)
   {
     
    var o;
    if(src.innerText!="")
    {
    vMe.day=src.innerText; 
    var d=new Date(vMe.year,vMe.month-1,vMe.day);
    var i=d.getDay();
    s=getsweek(i);
    o=document.all("txt"+vMe.name);
    o.value=vMe.year+"年"+vMe.month+"月"+vMe.day+"日--"+s;
    o=document.all("div"+vMe.name);
    o.style.display="none";
    }
   }
   

   function getsweek(i)
    {
      var s;
      switch(i)
     {
      case 0:
        s="星期日";
        break;
      case 1:
        s="星期一";
        break;
      case 2:
        s="星期二";
        break;
      case 3:
        s="星期三";
        break;
      case 4:
        s="星期四";
        break;
      case 5:
        s="星期五";
        break;
      case 6:
        s="星期六";
        break;
      
    }
    return s;
    }