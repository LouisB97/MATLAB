function[] = financeguru(iterations, myaddress,mypassword,emailaddresses,messages)
%% Setting up the groups depending on whether the cell size can be divisible without remainders.
x=length(emailaddresses);
    if mod(x,2)==0
        A=emailaddresses(1:x/2);
        B=emailaddresses((x/2)+1:end);
    else
        A=emailaddresses(1:(x/2)+0.5);
        B=emailaddresses((x/2)-0.5:end);
end

%% Email Protocols
setpref('Internet','E_mail',myaddress);
setpref('Internet','SMTP_Server','smtp.gmail.com');
setpref('Internet','SMTP_Username',myaddress);
setpref('Internet','SMTP_Password',mypassword);
props = java.lang.System.getProperties;
props.setProperty('mail.smtp.auth','true');
props.setProperty('mail.smtp.socketFactory.class', ...
'javax.net.ssl.SSLSocketFactory');

props.setProperty('mail.smtp.socketFactory.port','465');

%% The Mesages
messages = {'The stock price will go up', 'The stock price will go down'};

%% Main Code
for index = iterations
t=length(A);
i=1:t;
sendmail(A, 'Follow this financial advice', messages(1,1));
u=length(B);
j=1:u;
sendmail(B, 'Follow this financial advice', messages(1,2));
R= randn;

% Given the random number we have the following:
if R>0
if mod(x,2)==0
    x=length(A);
    A=(A(1:x/2));
    B=(A((x/2)+1:end));
else
    x=length(A);
    A=(A(1:(x/2)+0.5));
    B=(A((x/2)-0.5:end));
end

else
if mod(x,2)==0
    x=length(B);
    A=(B(1:x/2));
    B=(B((x/2)+1:end));
else
    x=length(B);
    A=(B(1:(x/2)+0.5));
    B=(B((x/2)-0.5:end));
end
end
end