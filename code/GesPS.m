function T = GesPS(p,Ri)
%�õ�Ŀ��ĩ��λ����ת����
ni=[Ri(:,1);0]; 
oi=[Ri(:,2);0];
ai=[Ri(:,3);0];
p=[p;1];
T=[ni,oi,ai,p];
end