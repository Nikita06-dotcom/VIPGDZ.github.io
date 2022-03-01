uses GraphABC;

var
  b: Picture;
  way, name: string;

begin
  way := '...'; read(name); name += ','; {Последнее имя файла должно заканчиваться цифрой, без пробела или заятой}
  
  while 1 <= Length(name) do
  begin
    window.Clear;
    b := Picture.Create(way + '\' + copy(name, 1, pos(',', name) - 1) + '.jpg');
    b.Load(way + '\' + copy(name, 1, pos(',', name) - 1) + '.jpg');
    b.Draw(0, 0);
    
    var fname := way + '\' + copy(name, 1, pos(',', name) - 1) + '.jpg';
    var fs := new System.IO.FileStream(fname, System.IO.FileMode.Open);
    var tmp := System.Drawing.Image.FromStream(fs);
    
    setWindowSize(tmp.Width, tmp.Height); SetFontStyle(fsBold);
    
    Rectangle(0, 0, tmp.Width, 30);  
    DrawTextCentered(0, 0, tmp.Width, 30, 'https://nikita06-dotcom.github.io/VIPGDZ.github.io - моё вип гдз 2022');
    
    Rectangle(0, tmp.Height, tmp.Width, tmp.Height - 30);
    DrawTextCentered(0, tmp.Height - 30, tmp.Width, tmp.Height, 'https://nikita06-dotcom.github.io/VIPGDZ.github.io - моё вип гдз 2022');
    
    SaveWindow('...' + copy(name, 1, pos(',', name) - 1) + '.jpg'); delete(name, 1, pos(',', name) + 1);
  end;
  halt;
end.
