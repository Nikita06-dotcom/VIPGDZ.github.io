var
  c: longint;
  s, s1: string;

begin
  read(s); c := 0;
  
  writeln('<table align="center" bgcolor="#202020" cellspacing="0" class="table_block"><tbody><tr>');
  while 1 <= Length(s) do
  begin
    s1 := copy(s, 1, pos(',', s) - 1); delete(s, 1, pos(',', s) + 1); c += 1;
    writeln('  <td><table align="center" bgcolor="#383838" cellspacing="0" class="table_block_2"><tbody><tr><td><p>', s1, '</p></td></tr></tbody></table></td>');
    if c = 9 then
    begin writeln('</tr></tbody></table> <table align="center" bgcolor="#202020" cellspacing="0" class="table_block"><tbody><tr>'); c := 0; end;  
  end;
  writeln('</tr></tbody></table><p> </p>');
end.