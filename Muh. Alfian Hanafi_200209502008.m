%Gambar
foto = imread('foto.jpeg');
figure(1); imshow(foto)

%Gambar Keabuan
foto_gray = (foto(:,:,1) + foto(:,:,2) + foto(:,:,3)) / 3;
figure(2); imshow(foto_gray)

%Gambar Keabuan Menggunakan Konstanta
foto_gray_const = foto(:,:,1) * 0.4 + foto(:,:,2) * 0.32 + foto(:,:,3) * 0.28;
figure(3); imshow(foto_gray_const)

%Gambar Keabuan Menggunakan Biner
value = 120;
[kolom, baris] = size(foto_gray_const);
foto_gray_biner = zeros(kolom, baris);

for x = 1 : kolom
    for y = 1 : baris
        if(foto_gray_const(x,y) > value)
            foto_gray_biner(x,y) = 1;
        else
            foto_gray_biner(x,y) = 0;
        end
    end
end

figure(4); imshow(foto_gray_biner)

%Gambar Brightness
foto_brightness = foto_gray_const + 20;
figure(5); imshow(foto_brightness)

%Gambar Contrast
foto_contrast = foto_gray_const * 1.3;
figure(6); imshow(foto_contrast)
