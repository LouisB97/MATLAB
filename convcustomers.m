function [X] = convcustomers(C,t,initdistr)
n = length(C)

X = zeros(n,t+1);

X(:,1) = initdistr;

for j = 1:t
X(:,j+1) = C * X(:,j);

figure(1);
plot(1:1:t+1, X(1,:),'r-',1:1:t+1,X(n,:),'b-');
xlabel('Time');
ylabel('Customers');
title('Customer populations over time');
c={1;n}
legend(c);
end