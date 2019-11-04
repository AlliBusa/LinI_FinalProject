compare=csvread(’C:\Users\abusa\Documents\finaldata.csv’);
X=compare(:,1:3).’;%the data is transposed so that the results correspond to county
%centeringthedate
n=size(X,2);%returns the size of the dimension of X specified by scalardim.
Xmean=mean(X,2);
%find mean for 2 dimensions
A=X́Xmean∗ones(1,n);
%making a matrix of the data subtracted by the mean
%SVD
[U,S,V]=svd(A,’econ’);
sigma=diag(S)
%find singular value decomposition
%singular values
%calculating total variation
rho=norm(A,’fro’)ˆ2
%total variation of data 
%frombeniusnorm
rho=norm(sigma)ˆ2%
q2=norm(sigma(1:2))ˆ2/rho %part of variation captured by first 2 components
%calculating all principal components
C=S(1:3,1:3)∗V(:,1:3)’;
%first 3 coefficients for each point,sameasU(:,1:3)’∗A;
[m,n]=size(C);
%creating a figure
figure(2);
scatter(C(1,:),C(2,:),17,’filled’)
xlabel(’PC1’);ylabel(’PC2’)
title(sprintf(’2components,captures%.4g%%oftotalvariation’,100∗q2))
%3DGraph
figure(3);
quiver3(0,0,0,U(1,1)∗S(1,1),U(1,2)∗S(2,2),U(1,3)∗S(3,3));
holdon
quiver3(0,0,0,U(2,1)∗S(1,1),U(2,2)∗S(2,2),U(2,3)∗S(3,3));
holdon
quiver3(0,0,0,U(3,1)∗S(1,1),U(3,2)∗S(2,2),U(3,3)∗S(3,3));
holdon
fork=1:62
holdon
scatter3(A(1,k),A(2,k),A(3,k));
end
view(́35,45)
