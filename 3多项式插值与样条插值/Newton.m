function yh=Newton(x,y,xh)
n=length(y);%����������array���ĳ��ȣ�Ĭ��n>=2���������������ݲ��ܲ�ֵ
% ����x,y,xh����������array��
m=length(xh);%�����ֵ��ĸ���
yh=zeros(m,1);
% zeros�Ĳ���Ϊ������������yhΪ����
[~,q]=chashang(x,y);
for k=1:m
    yh(k)=q(1);
    temp=1;
    for j=2:length(q)
        temp=temp*(xh(k)-x(j-1));
        yh(k) = yh(k)+q(j)*temp;
    end
end