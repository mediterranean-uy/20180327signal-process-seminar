%%�[�~�ŗp�����t�[���G�����W�J�Ɋւ���v���O����
clear
t = linspace(-2*pi(),2*pi(),1000);%���Ԋu�x�N�g���쐬
n = 10;%�����������
ft = 0;
for k = 1:1:n
    ft = ft + 2*(((1-((-1)^k))/(k*pi()))) * sin(k*t);%��`�g
    %ft = ft + (2*(-1)^(k+1)) / k * sin(k*t);%�̂�����g
    %ft = ft +  + 8/(pi()*(k)^2)*sin(k*pi()/2).'*sin(k*t);%�O�p�g

end

figure
subplot(2,1,1)       % add first plot in 2 x 1 grid
plot(t,ft,'r');
xticks([-3*pi -2*pi -pi 0 pi 2*pi 3*pi])
xticklabels({'-3\pi','-2\pi','-\pi','0','\pi','2\pi','3\pi'})
yticks([-1 -0.5 0 0.5 1])
xlabel('�T���v���ԍ�')
ylabel('�U��')
title('�����W�J')

% 
% fs = 10000;
% y = fft(ft);
% n = length(ft);          % number of samples
% f = (0:n-1)*(fs/n);     % frequency range
% power = abs(y);
% subplot(2,1,2)       % add first plot in 2 x 1 grid
% plot(f,power)
% xlabel('Frequency')
% ylabel('Power')
% xlim([0 size(f,2)/2])%�N���b�v(�i�C�L�X�g���g��fs/2�𒆐S�Ƃ��đΏ̍\�������)

tau = 1;%��
f = -10:0.1:10;%���g��
F = tau*(sin(pi()*f*tau+eps)./(pi()*f*tau+eps));%F(��)[�Ǘ��g]
plot(f,abs(F),"r");
xlabel('�p���g��')
ylabel('�U��')
%xgrid();
%xtitle("","freq","Amplitude");
title('�t�[���G�ϊ�')