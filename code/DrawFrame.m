function DrawFrame(oR, op)

ToDeg=180/pi;
ToRad=pi/180;

axislen=50;
%% ����������˵�
px=[axislen,0,0]';
py=[0,axislen,0]';
pz=[0,0,axislen]';

px=oR*px+op;
py=oR*py+op;
pz=oR*pz+op;

%% ���ù̶��ο�������˵�
wx=[axislen,0,0]';
wy=[0,axislen,0]';
wz=[0,0,axislen]';
wo=[0,0,0]';

% %���ƹ̶��ο�����ϵ
Connect3D(wo,wx,'r',3); hold on;
Connect3D(wo,wy,'k',3); hold on;
Connect3D(wo,wz,'g',3);hold on;
plot3(wo(1),wo(2),wo(3),'rX');hold on;
plot3(wo(1),wo(2),wo(3),'rO');hold on;

% %���ƾֲ�����ϵ
Connect3D(op,px,'r',2); hold on;
Connect3D(op,py,'k',2); hold on;
Connect3D(op,pz,'g',2);hold on;
