function [newA,newb]=Gauss(A,b)
len=length(A);%行数和列数的最大值，方阵两者相同
for i=1:1:len
    for j=i+1:1:len
        if A(i,i)~=0
            m=-A(j,i)/A(i,i);
            A(j,i)=0;
            for k=i+1:1:len
                A(j,k)=A(j,k)+m*A(i,k);
            end
            b(j)=b(j)+m*b(i);
        end
    end
end
newA=A;
newb=b;
end

