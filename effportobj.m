function[x,fval,expected_return] = effportobj(procedure, Sigma,mu, mu_p_0,optimisation_options)
%% Solve for efficient portfolio
%% Given set of stocks find:
    %%Expected value
    %%Variance-covariance matrix
    %%Target expected value of investment
%%Min (Sigma)^2 = x'sum(x) s.t
    %% Up = x'U = U and x'1=1

    procedure = quadprog(mu