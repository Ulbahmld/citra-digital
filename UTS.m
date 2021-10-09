% Nama : Ulbah
% NIM : 200209500008
% Kelas : PTIK B

a = input('Tuliskan Nama Anda =  ','s');
b = input('Tuliskan Nim Anda = ');
d = fix(b/1000000000);
d1 = mod(b,100);
n = d*100+d1;
for x = 1:n
c1 = fix(rand(5,5)*100);
c2 = fix(rand(5,5)*100);
c3 = fix(rand(5,5)*100);
end
R = c1
G = c2
B = c3
save(a,'b','R','G','B')

% JAWABAN NOMOR 2
[kolom, baris] = size(R);
a = zeros(kolom, baris);
b = 0;

for x = 1 : kolom
    for y = 1 : baris
        a(x, y) = round(R(x, y) * 0.4 + B(x, y) * 0.32 + G(x,y) * 0.28);
        
        if b < a(x, y)
            b = a(x, y);
        end
    end
end

figure(1); imshow(a)


% JAWABAN NOMOR 3
% Histogram
[kolom, baris] = size(a);
histogram = zeros(1,b);

for x = 1 : kolom
    for  y = 1 : baris
        mld = a(x, y);
        histogram(mld) = histogram(mld) + 1;
    end
end

figure(2)
bar(histogram)
axis([0 100 0 10])
grid on

% Distribusi Komulatif
komulatif = zeros(1,b);
for A = 1 : b
    komulatif(A) = sum(histogram(1:A));
end

figure(3)
bar(komulatif)
axis([0 100 0 kolom * baris])
grid on

% JAWABAN NOMOR 4
% Histogram equalisasi
equalisasi = zeros(1,b);
for H = 1 : b
    equalisasi(H) = round(komulatif(H) * b /(kolom * baris));
end

figure(4)
bar(equalisasi)
axis([0 100 0 kolom * baris])
grid on

% JAWABAN NOMOR 5
w = [1 1 1; 1 4 1; 1 1 1]
[kolom, baris] = size(R);
q = zeros(kolom,baris);
[kolom_w, baris_w] = size(w);

for x = 1 : kolom
    for y = 1 : baris
        for k1 = 1 : kolom_w
            for k2 = 1 : baris_w
                ab = x - 2 + k1;
                bR = y - 2 + k2;
                
                if ab == 0 || bR == 0 ||ab == kolom + 1 || bR == kolom + 1
                    q(x,y) = q(x,y) + (w(k1, k2) * 0)
                else
                    q(x,y) = q(x,y) + w(k1, k2) * R(ab, bR);
                end
            end
        end
    end
end 
