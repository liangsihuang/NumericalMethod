% �α��ϵĳ����������󣬵��ǰ�xh��yh���ɾ��󲻺����
% x,y��һϵ�е����ݵ㣬xh��Ҫ��������ݵ㣬yh�ǲ�ֵ����ʽ�������xh���ĺ���ֵ
function yh=Lagrange(x,y,xh)
% ����x,y��������xh�Ǿ���
n=length(y);%����������array���ĳ��ȣ�Ĭ��n>=2���������������ݲ��ܲ�ֵ
yh=zeros(size(xh));%size����һ������������������
% zeros�Ĳ���Ϊ������������yhΪ����
for k=1:n
    pt=ones(size(xh)); %�����x��n-1�η��ptΪ����
    for j = [1:k-1 k+1:n]%j��һ��������1��n��������k
        %j����������д����
        pt = pt.*(xh-x(j))/(x(k)-x(j));
        %%xhҲ�Ǿ���ptҲ�Ǿ��󣬶�Ӧλ�����
    end
    yh = yh+y(k)*pt;
end

% function yh = Lagrange(x,y,xh)
% % ����x,y,xh����������array��
% n=length(y);%�����еĸ�����Ҳ�ǲ�ֵ����ʽ�Ĵ���
% m=length(xh);%���Ƽ����ĸ���
% yh=zeros(m,1);%matlabĬ�ϴ���������
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