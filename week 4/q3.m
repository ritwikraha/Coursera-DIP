a=[1 1 2 2; 1 1 2 2; 2 2 3 4; 2 2 5 6];
b=[2 2 1 1; 2 2 2 2; 2 2 6 4; 2 2 5 3];
%calculating mse of two matrices
D = abs(a-b).^2;
MSE = sum(D(:))/numel(b)
