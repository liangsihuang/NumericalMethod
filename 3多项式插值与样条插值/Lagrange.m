% 课本上的程序，理论无误，但是把xh，yh当成矩阵不好理解
% x,y是一系列的数据点，xh是要计算的数据点，yh是插值多项式计算出的xh处的函数值
function yh=Lagrange(x,y,xh)
% 参数x,y是向量，xh是矩阵
n=length(y);%返回向量（array）的长度，默认n>=2，至少有两个数据才能插值
yh=zeros(size(xh));%size返回一个行数和列数的向量
% zeros的参数为行数和列数，yh为矩阵
for k=1:n
    pt=ones(size(xh)); %连乘项，x的n-1次方项，pt为矩阵
    for j = [1:k-1 k+1:n]%j是一个向量从1到n，跳过了k
        %j还可以这样写？？
        pt = pt.*(xh-x(j))/(x(k)-x(j));
        %%xh也是矩阵，pt也是矩阵，对应位置相乘
    end
    yh = yh+y(k)*pt;
end

% function yh = Lagrange(x,y,xh)
% % 参数x,y,xh都是向量（array）
% n=length(y);%数据列的个数，也是插值多项式的次数
% m=length(xh);%近似计算点的个数
% yh=zeros(m,1);%matlab默认处理列向量
% for i =1:m
%     for k=1:n
%         pt=1;
%         for j=[1:k-1 k+1:n]
%             pt=pt*(xh-x(j))/(x(k)-x(j));
%         end
%         yh(i)=yh(i)+y(k)*pt;
%     end
% end
% end