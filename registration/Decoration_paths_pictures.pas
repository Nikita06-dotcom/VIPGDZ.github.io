var
  s, s1: string;

begin
  writeln('Путь к директории, затем все файлы через ,'); readln(s1); readln(s); s += ','; writeln; // dir E:\Kc\гдз\Сайтик\images\CH-6 /b - получение в столбик названия всех файлов из директории CH-6
  while 1 <= Length(s) do
  begin
    writeln('<p><a href="images\', s1, '\', copy(s, 1, pos(',', s) - 1), '.jpg" target="_blank" class="zoom-in"><img src="images\', s1, '\', copy(s, 1, pos(',', s) - 1), '.jpg"></p>'); delete(s, 1, pos(',', s) + 1);
  end;
end.