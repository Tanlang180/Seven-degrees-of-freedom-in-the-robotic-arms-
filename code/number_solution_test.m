clc;
clear all;
close all;

global Link

ToDeg = 180/pi;  %ת�Ƕ�
ToRad = pi/180;  %ת����

%������ʼ���ؽ�λ��
th=[0,0,0,0,0,0,0]';

%����Ŀ��ĩ��λ�ü���ת����
Ri=rpy2rot(20*ToRad,0*ToRad,80*ToRad);   %����
Pi=[480,10,550]';    

ni=[Ri(:,1);0]; 
oi=[Ri(:,2);0];
ai=[Ri(:,3);0];
pi=[Pi;1];
Ti=[ni,oi,ai,pi];

%���ƻ�е�۳�ʼλ�˼�ĩ����̬
DHfk_7Dbot(th(1), th(2), th(3), th(4), th(5), th(6),th(7), 0);   %���ƻ�е��  ��������ת����
DrawFrame(Ri,Pi);      %����Ŀ�������ϵ
view(-21,12); 
% pause; 
cla;

solu1=IK_num_solu(Ti);

DHfk_7Dbot(solu1(1),solu1(2),solu1(3),solu1(4),solu1(5),solu1(6),solu1(7),0);