R = 1000;  %ԲͰ�뾶
rt = 500;   %�켣�뾶
pos = [0,2000,1000]; % Բ��λ��
t=0:0.001:(2*pi);  % Բ��������
t=[t,0];
figure(1)
% ����������
plot3(pos(1)+R*sin(t),pos(2)*ones(size(t)),pos(3)+R*cos(t),'b:'); hold on;
plot3(pos(1)+R*sin(t),-pos(2)*ones(size(t)),pos(3)+R*cos(t),'b:');hold on;
plot3(pos(1)+rt*sin(t),-pos(2)*ones(size(t)),pos(3)+rt*cos(t),'b:');hold on;
plot3(pos(1)+rt*sin(t),pos(2)*ones(size(t)),pos(3)+rt*cos(t),'b:');hold on;
% ���Ƴ�ʼԲ���켣
% plot3(0+rt*sin(t),0*ones(size(t)),1000+rt*cos(t),'k-');hold on;

% ����4����
plot3([pos(1)+R*sin(0) pos(1)+R*sin(0)],[pos(2) -pos(2)],[pos(3)+R*cos(0) pos(3)+R*cos(0)],'b:'); hold on;
plot3([pos(1)+R*sin(pi/2) pos(1)+R*sin(pi/2)],[-pos(2) pos(2)],[pos(3)+R*cos(pi/2) pos(3)+R*cos(pi/2)],'b:');hold on;
plot3([pos(1)+R*sin(pi) pos(1)+R*sin(pi)],[pos(2) -pos(2)],[pos(3)+R*cos(pi) pos(3)+R*cos(pi)],'b:'); hold on;
plot3([pos(1)+R*sin(3*pi/2) pos(1)+R*sin(3*pi/2)],[-pos(2) pos(2)],[pos(3)+R*cos(3*pi/2) pos(3)+R*cos(3*pi/2)],'b:');hold on;

% ����ƽ����
% plot3([pos(1)+R*sin(pi) pos(1)+R*sin(pi)],[pos(2) -pos(2)],[pos(3)+R*cos(pi)+200 pos(3)+R*cos(pi)+200],'b:'); hold on;
plot3([pos(1)+R*sin(pi) pos(1)+R*sin(pi)],[pos(2) -pos(2)],[pos(3)+R*cos(pi)+1000 pos(3)+R*cos(pi)+1000],'b:'); hold on;

view(110,10);
% view(0,0);
axis([-1300,1300,-2300,2300,-600,2300]);
xlabel('x');
ylabel('y'); 
zlabel('z');
grid on