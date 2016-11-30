function [ determinant, inverse ] = invanddet2by2sol( A )
% INVANDDET2BY2 Calculates the determinant and the inverse of a 2 X 2 matrix

determinant = A(1,1)*A(2,2)- A(1,2)* A(2,1); % calculates the determinant

if determinant ==0 % if the matrix is singular
    inverse = []; % inverse does not exist
else    
    inverse = [A(2,2)  -A(1,2); -A(2,1) A(1,1)]./determinant; % calculates the inverse
end



