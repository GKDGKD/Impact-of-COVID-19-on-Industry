% �ع����Ԥ�⹤ҵ����ֵ�仯����

clear all; clc;
% ��ȡ����
file = '�¶�����.xls';
[NUM,TXT,RAW]=xlsread(file);

% ȱʧֵ����������Բ岹��
d2 = fillmissing(NUM,'linear');
d22 = fillmissing(NUM,'movmedian')

% ��������
%xlswrite('�¶����ݡ��岹��.xls',d2)

d3 = d2;
d3(:,end-4:end-1) = [];