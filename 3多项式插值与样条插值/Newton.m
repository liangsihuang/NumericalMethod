function yh=Newton(x,y,xh)
n=length(y);%返回向量（array）的长度，默认n>=2，至少有两个数据才能插值
% 参数x,y,xh都是向量（array）
m=length(xh);%计算插值点的个数
yh=zeros(m,1);
% zeros的参数为行数和列数，yh为向量
[~,q]=chashang(x,y);
for k=1:m
    yh(k)=q(1);
    temp=1;
    for j=2:length(q)
        temp=temp*(xh(k)-x(j-1));
        yh(k) = yh(k)+q(j)*temp;
    end
end