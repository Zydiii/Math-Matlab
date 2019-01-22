%棋子颜色问题
%1----黑子；-1----白子
n = 4; %棋子数
times = 6; %迭代次数
x0 = zeros(n,1);
x1 = zeros(n,1); %定义数组

for i = 1:n
    k = rand(1,1);
    if(k > 0.5) 
        x0(i) = 1;
    else
        x0(i) = -1;
    end
end %赋初值
x0
for i = 1:times
    i
    for k = 1:n-1
        x1(k) = x0(k) * x0(k+1);
    end
    x1(n) = x0(n) * x0(1);
    x1 %显示各次结果
    x0 = x1;
end
