% ��һ��ĸ�˹��ȥ��
function [x,newA,newb]=Gauss(A,b)
len=length(A);%���������������ֵ������������ͬ
for i=1:1:len
    for j=i+1:1:len
        if A(i,i)~=0 %������Խ���Ԫ�ص���0����Ҫʹ������Ԫ�صĸ�˹��ȥ
            m=-A(j,i)/A(i,i);
            A(j,i)=0;
            for k=i+1:1:len
                A(j,k)=A(j,k)+m*A(i,k);
            end
            b(j)=b(j)+m*b(i);
        end
    end
end
[m,n]=size(A);%m���У�n����
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

