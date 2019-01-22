%模拟运动
n = 240;
x = zeros(4,n);
y = zeros(4,n);
dt = 0.05; %时间间隔
v = 10; %速度
x(1,1) = 100; y(1,1) = 0; %第一个人初始坐标
x(2,1) = 0; y(2,1) = 0; %第二个人初始坐标
x(3,1) = 0; y(3,1) = 100; %第三个人初始坐标
x(4,1) = 100; y(4,1) = 100; %第四个人初始坐标

for j = 1:n-1
    for i = 1:3
        d = sqrt((x(i+1,j) - x(i,j))^2 + (y(i+1,j) - y(i,j))^2);%第i个人和第i+1个人之间的距离
        cosx = (x(i+1,j)-x(i,j))/d;
        sinx = (y(i+1,j)-y(i,j))/d;
        x(i,j+1) = x(i,j) + v*dt*cosx;
        y(i,j+1) = y(i,j) + v*dt*sinx;
    end %前三个人的运动
    d = sqrt((x(1,j) - x(4,j))^2 + (y(1,j) - y(4,j))^2);%第1个人和第4个人之间的距离
    cosx = (x(1,j)-x(4,j))/d;
    sinx = (y(1,j)-y(4,j))/d;
    x(4,j+1) = x(4,j) + v*dt*cosx;
    y(4,j+1) = y(4,j) + v*dt*sinx;
    plot(x(1,j),y(1,j),'ro',x(2,j),y(2,j),'bo',x(3,j),y(3,j),'go',x(4,j),y(4,j),'yo') %做点图
    hold on
    pause(0.1)
end