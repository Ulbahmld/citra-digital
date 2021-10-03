% Nama : Ulbah
% NIM : 200209500008
% Kelas : PTIK B
% Tugas Pertemuan

x = imread('mld.jpg');
y = imread('mld1.jpg');

a = rgb2gray(x);
b = rgb2gray(y);

figure(1); imshow(a);
figure(2); imshow(b);

c = a;
[kolom, baris] = size(c);

for f = 1 : kolom
    for d = 1 : baris
        if b(f,d)~= 0
            c(f,d) = b(f,d);
        end
    end
end

figure(3); imshow(c);  

r = b;  

for f = 1 : kolom     
    for d = 1 : baris        
        if r(f,d) ~= 0            
            r(f,d) = b(f,d);        
        end
    end
end

figure(4); imshow(r);   

blackwhite1 = a > 135; 
blackwhite2 = b > 135;   

figure(5); imshow(blackwhite1); 
figure(6); imshow(blackwhite2); 

q = blackwhite1;   

for f = 1: kolom    
    for d = 1 : baris        
        if q(f,d) == 0            
            q(f,d) =1;         
        else
            q(f,d) = 0;        
        end
    end
end

figure(7); imshow(q);   

z = blackwhite1;   

for f = 1: kolom     
    for d = 1: baris        
        if blackwhite2(f,d) ~= 0          
            if z(f,d) == 0                 
                z(f,d) = 1 ;             
            else
                z(f,d) = 0;            
            end
        end
    end
end

figure(8); imshow (z)