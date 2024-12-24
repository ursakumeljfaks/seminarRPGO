function D = decasteljau(b,t)
  % Opis:
  %  decasteljau vrne shemo de Casteljaujevega postopka za dan seznam
  %  koordinat b pri danem parametru t
  %
  % Definicija:
  %  D = decasteljau(b,t)
  %
  % Vhodna podatka:
  % b seznam koordinat kontrolnih točk Bezierjeve krivulje stopnje n,
  % t parameter, pri katerem računamo koordinato Bezierjeve krivulje 
  %
  % Izhodni podatek:
  % D tabela velikosti n+1 x n+1, ki predstavlja de Casteljaujevo
  % shemo za koordinate b pri parametru t (element na mestu
  % (1,n+1) je koordinata Bezierjeve krivulje pri parametru t,
  % elementi na mestih (i,j) za i > n-j+2 so NaN)%
  %

n = length(b) - 1;
D = NaN(n+1);

for i=0:n
    D(i+1,1) = b(i+1); 
end

for r=1:n
    for i=0:(n-r)
        D(i+1,r+1) = D(i+1,r) * (1-t) + D(i+2,r) * t; 
    end
end

D;

end

