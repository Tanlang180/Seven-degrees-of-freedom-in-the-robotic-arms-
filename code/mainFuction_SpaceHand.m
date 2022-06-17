clc;clear;
close all;

global Link circleCenter r points

ToDeg = 180/pi;  %ת�Ƕ�
ToRad = pi/180;  %ת����

% �������object�뾶������
a = 50; b = 100;
R = a+(b-a)*rand(1,10);
[r,  index] = sort(R,2,'ascend');
% �������objectλ��
circleCenter = RandomPoint();

DrawSpace;
DrawBox;
DrawObject;
points = [270,60,0;230,60,0;190,60,0;150,60,0;
        270,20,0;230,20,0;190,20,0;150,20,0;
        270,-20,0;230,-20,0;190,-20,0;150,-20,0]; % �����������

%������ʼ���ؽ�λ��
th=[200,0,90,0,0,0,-90]'; 
tic
Ri=rpy2rot(10*ToRad,20*ToRad,80*ToRad); 
for i = 1:10
     
    Pi= circleCenter(i,:)'; %����Ŀ��ĩ��λ�� 
    
    %���ƻ�е�۳�ʼλ�˼�ĩ����̬
    DHfk_7Dbot(th(1), th(2), th(3), th(4), th(5), th(6),th(7), 0,0,0,0);   %���ƻ�е��  ��������ת����
    DrawFrame(Ri,Pi);      %����Ŀ�������ϵ
    view(110,10);

    % ץ����
    source = Link(8).p(1:3)';
    pathone = RRT_run(source,Pi',i);
    th = GoRoute(pathone,Ri,th,0,0,i);
    
    % �ٻص�����λ��
    blacket = [150 0 200];
    source = Link(8).p(1:3)';
    pathtwo = RRT_run(source,blacket,i);
    th = GoRoute(pathtwo,Ri,th,1,r(i),i);
    fprintf('ץ��� %d ����: ',i); 
    toc;
end

fprintf('finish all jobs !!! Using time : '); 
toc;