A1=[0.4,0.3;
    -0.325,1.2];
[pc,lambda] = eig(A1); %��A ������ֵ�Ͷ�Ӧ����������
[Y,I] = sort(diag(abs(lambda)),'descend');%������ֵ�ľ���ֵ��������
temp = diag(lambda);
lambda = temp(I);     %���������ֵ�ľ���ֵ�������е�����ֵ
pc = pc(:,I);        %������ֵ��Ӧ����������

%{
  lambda =

    1.0500
    0.5500


pc =

   -0.4191   -0.8944
   -0.9080   -0.4472

%}

A2=[0.4,0.3;
    -0.5,1.2];
[pc,lambda] = eig(A2); %��A ������ֵ�Ͷ�Ӧ����������
[Y,I] = sort(diag(abs(lambda)),'descend');%������ֵ�ľ���ֵ��������
temp = diag(lambda);
lambda = temp(I) %���������ֵ�ľ���ֵ�������е�����ֵ
pc = pc(:,I) %������ֵ��Ӧ����������

%{
  lambda =

    0.9000
    0.7000


pc =

   -0.5145   -0.7071
   -0.8575   -0.7071

%}
syms p;
Ap=[0.4,0.3;
    -p,1.2];
[pc,lambda] = eig(Ap);
[Y,I] = sort(diag(abs(lambda)),'descend');%������ֵ�ľ���ֵ��������
temp = diag(lambda);
lambda = temp(I) %���������ֵ�ľ���ֵ�������е�����ֵ
p=solve(lambda(1)==1)
Ap=[0.4,0.3;
    -p,1.2];
[pc,lambda] = eig(Ap);
[Y,I] = sort(diag(abs(lambda)),'descend');%������ֵ�ľ���ֵ��������
temp = diag(lambda);
lambda = temp(I) %���������ֵ�ľ���ֵ�������е�����ֵ
pc = pc(:,I) %������ֵ��Ӧ����������