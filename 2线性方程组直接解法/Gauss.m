% 最一般的高斯消去法
function [x,newA,newb]=Gauss(A,b)
len=length(A);%行数和列数的最大值，方阵两者相同
for i=1:1:len
    for j=i+1:1:len
        if A(i,i)~=0 %如果主对角线元素等于0，就要使用列主元素的高斯消去
            m=-A(j,i)/A(i,i);
            A(j,i)=0;
            for k=i+1:1:len
                A(j,k)=A(j,k)+m*A(i,k);
            end
            b(j)=b(j)+m*b(i);
        end
    end
end
[m,n]=size(A);%m是行，n是列
x=zeros(m,1);
for i=m:-1:1
    x(i)=b(i)/A(i,i);
    if i==n
        continue
    else
        for j=n:-1:(i+1)
            x(i)=x(i)-x(j)*A(i,j)/A(i,i);
        end
    end
end
newA=A;
newb=b;
end

