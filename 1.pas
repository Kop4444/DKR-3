Uses Crt;
var 
  a,b,n,sn,h,s,m:real;
  key:integer;
  proga:boolean;
  
function f(var x:real):real;
begin
  f:=2*x**3+(0)*x*x+(3)*x+19;
end;


function f2(var x:real):real;
begin
  f2:=((x**4+3*x**2)/2)+19*x;
end;
begin
n:=-1;
a:=1;
b:=1;
proga:=True;
while proga = True do begin
ClrScr;
writeln('1. Промежутки');
writeln('2. Трапеции');
writeln('3. Площадь');
writeln('4. Выход');

write('Введите цифру действия: '); readln(key);

case key of 
  
1: begin
sn:=0;
while (a = b) or (a > b) do begin
ClrScr;
write('Введите промежутки '); readln(a,b);
if (a = b) or  (a > b) then begin 
  writeln('Нижний промежуток должен быть меньше верхнего. Enter');
  readln();
  end;
end;
end;

2: begin
while n < 0 do begin
ClrScr;
write('Введите кол-во трапеций '); readln(n);
if n < 0 then begin
  writeln('Количество должно превосходить ноль Enter');
  readln();
end
else
h:=(b-a)/n;
end;
end;

3: begin
ClrScr;
if a = b then begin 
  writeln('Не введены промежутки Enter');
  readln();
  end
else if n < 0 then begin
  writeln('Количество трапеций не введено Enter');
  readln();
  end
else begin
m:=a;
while m<=b do begin
  if (m=a)or(m=b) then sn:=sn+(f(m))/2
  else sn:=sn+(f(m));
  m+=h;
  end;
sn:= sn*h;
s:=abs((f2(b)-f2(a)-sn));
writeln('Площадь = ',sn:0:3);
writeln('Погрешность = ', s:0:3);
readln();
n:=-1;
a:=1;
b:=1;
sn:=0;
end;
end;
4: begin
  proga:=False;
  end;
end;
end;
end.