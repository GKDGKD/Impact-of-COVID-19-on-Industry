function data_standardized = stan(data)
%离差标准化，即min-max标准化，按列进行标准化

% [m, n] = size(data);
% for i = 1:m
%     for j = 1:n
%         data_standardized(i,j) = (data(i,j) - min(data(:,j))) / (max(data(:,j)) - min(data(:,j)));
%     end
% end

MAX = max(data);
MIN = min(data);
difference = MAX - MIN;
data_standardized = (data-MIN)./difference;