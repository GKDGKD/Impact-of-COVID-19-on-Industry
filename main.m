% 回归分析预测工业增加值变化规律

clear all; clc;
% 读取数据
file = '月度数据.xls';
[NUM,TXT,RAW]=xlsread(file);

% 缺失值填补，采用线性插补法
d2 = fillmissing(NUM,'linear');
d22 = fillmissing(NUM,'movmedian')

% 导出数据
%xlswrite('月度数据—插补后.xls',d2)

d3 = d2;
d3(:,end-4:end-1) = [];