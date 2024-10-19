program TimerPas;
uses
   BaseUnix, SysUtils, process;

var
    i:integer;
    n:integer;
    Process1:TProcess;

begin
    writeln('Input number: ');
    readln(n);
    for i:= n downto 1 do
	begin
	writeln(i, '... ');
	FpSleep(1)
	end;
    writeln('start!');
	Process1:=TProcess.Create(nil);	
	Process1.CommandLine:='aplay sound.wav';
	Process1.Execute
end.
