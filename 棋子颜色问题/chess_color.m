%������ɫ����
%1----���ӣ�-1----����
n = 4; %������
times = 6; %��������
x0 = zeros(n,1);
x1 = zeros(n,1); %��������

for i = 1:n
    k = rand(1,1);
    if(k > 0.5) 
        x0(i) = 1;
    else
        x0(i) = -1;
    end
end %����ֵ
x0
for i = 1:times
    i
    for k = 1:n-1
        x1(k) = x0(k) * x0(k+1);
    end
    x1(n) = x0(n) * x0(1);
    x1 %��ʾ���ν��
    x0 = x1;
end
