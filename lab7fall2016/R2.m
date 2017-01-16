M = 1:30;
N = 1:30;
[m,n] = meshgrid(M,N)
kx = pi/4
ky = 0
z = cos(ky*m + kx*n);
figure(1)
subplot(121)
imagesc(z)
title('f for kx = π/4,ky=0')
xlabel('n')
ylabel('m')

Z = myDFT2(z)
Z1 = fft2(z)
subplot(122)
kX = ([0:length(N)-1]/length(N)*2*pi)
kY = ([0:length(M)-1]/length(M)*2*pi)
imagesc(kX,kY,abs((Z)))
title('DFT for f for kx = π/4,ky=0')
xlabel('kx')
ylabel('ky')


kx = 0
ky = pi/4
z = cos(ky*m + kx*n);
figure(2)
subplot(121)
imagesc(z)
title('f for kx = 0,ky=π/4')
xlabel('n')
ylabel('m')

Z = myDFT2(z)
Z1 = fft2(z)
subplot(122)
kX = ([0:length(N)-1]/length(N)*2*pi)
kY = ([0:length(M)-1]/length(M)*2*pi)
imagesc(kX,kY,abs((Z)))

title('DFT for f for kx = 0,ky=π/4')
xlabel('kx')
ylabel('ky')

kx = pi/4
ky = pi/4
z = cos(ky*m + kx*n);
figure(3)
subplot(121)
imagesc(z)
title(' f for kx = π/4,ky=π/4')
xlabel('n')
ylabel('m')

Z = myDFT2(z)
Z1 = fft2(z)
subplot(122)
kX = ([0:length(N)-1]/length(N)*2*pi)
kY = ([0:length(M)-1]/length(M)*2*pi)
imagesc(kX,kY,abs((Z)))

title('DFT for f for kx = π/4,ky=π/4')
xlabel('kx')
ylabel('ky')

kx = pi/4
ky = -pi/4
z = cos(ky*m + kx*n);
figure(4)
subplot(121)
imagesc(z)
title('f for kx = π/4,ky=-π/4')
xlabel('n')
ylabel('m')

Z = myDFT2(z)
Z1 = fft2(z)
subplot(122)
kX = ([0:length(N)-1]/length(N)*2*pi)
kY = ([0:length(M)-1]/length(M)*2*pi)
imagesc(kX,kY,abs((Z)))

title('DFT for f for kx = π/4,ky=-π/4')
xlabel('kx')
ylabel('ky')



