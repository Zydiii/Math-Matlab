dt=0.01;
n=151;
d=10;
u=8;
v=12;
T=d*v/(v*v-u*u); %����ʱ��
x1=zeros(n,1); y1=zeros(n,1);
x2=zeros(n,1); y2=zeros(n,1);
x1(1)=0; y1(1)=0; %��˽����ʼλ��
x2(1)=d; y2(1)=0; %��˽����ʼλ��
%��������
for j=1:n-1
    x1(j+1)=0; %��˽��������
    y1(j+1)=(j+1)*dt*u; %��˽��������
    ct=(x1(j)-x2(j))/sqrt((x1(j)-x2(j))^2+(y1(j)-y2(j))^2);
    st=(y1(j)-y2(j))/sqrt((x1(j)-x2(j))^2+(y1(j)-y2(j))^2);
    x2(j+1)=x2(j)+v*dt*ct; %��˽��������
    y2(j+1)=y2(j)+v*dt*st; %��˽��������
end
%��������
x=d:-0.01:0;
k=u/v;
y=d/2*((x/d).^(1+k)/(1+k)-(x/d).^(1-k)/(1-k))+d*k/(1-k^2);
plot(x1,y1,'r',x2,y2,'-r',x,y,'b');