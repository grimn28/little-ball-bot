clear all

fid = fopen('DogGone.TXT');
C = textscan(fid,'%s');
c = C{1};
fclose(fid);

for i=1:length(c)
    spl = strsplit(string(c{i}),'Y');
    disp(spl);
end