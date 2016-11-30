A = [1,2,3;4,5,6;7,9,9]
B = [invanddet2by2sol(A(1:2,1:2)), -1*invanddet2by2sol(A(1:2,2:3)), invanddet2by2sol(A(1:2,[1 3])); -1*invanddet2by2sol(A(2:3,1:2)), invanddet2by2sol(A(2:3,2:3)), -1*invanddet2by2sol(A(2:3,[1 3])); invanddet2by2sol(A([1 3],[1 3])), -1*invanddet2by2sol(A([1 3], 1:2)), invanddet2by2sol(A([1 3], 2:3))]%multiplying by -1 every other element to simulate cofactors
determinant = A(1,1)*B(1,1) + A(1,2)*B(1,2) + A(1,3)*B(1,3)
C = B/determinant