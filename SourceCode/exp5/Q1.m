% ����
M=[13,18,27,8,9,12,12,27;
13,1,4,5,27,20,8,9;
19,27,3,15,4,5,28,27;
]
% ��Կ
K=[12 16 5; 8 3 5; 7 9 3];

det(K) %��֤��������Ƿ����

C = mod(K * M,28) %����
INV_K = inv(K);
INV_K = round(INV_K); %��������ʽ��������
K2 = mod(INV_K,28) %���ܵ�Կ��
Y = mod(K2 * C,28) %�ָ�����


% ============= K2 ============= 
M=[13,18,27,8,9,12;
12,27,13,1,4,5;
27,20,8,9,19,27;
3,15,4,5,28,0;]
% ��Կ
K=[5,2,3,4;
8,5,5,4;
1,1,3,3;
5,4,3,1;];

det(K) %��֤��������Ƿ����
C = mod(K * M,28) %����
INV_K = inv(K);
INV_K = round(INV_K); %��������ʽ��������
K2 = mod(INV_K,28) %���ܵ�Կ��
Y = mod(K2 * C,28) %�ָ�����



