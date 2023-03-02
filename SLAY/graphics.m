N = [100 200 300 400 500];

for pass = 1:length(N)
    n = N(pass);
    A = Generate(n);
    B = rand(n,1);
    
    tic
    X = Kramer(A,B);
    T1(pass) = toc;
    
    tic
    X = Gauss(A,B);
    T2(pass) = toc;
    
    tic
    X = Holecky(A,B);
    T3(pass) = toc;
    
    tic
    X = Yakobi(A,B,0.001);
    T4(pass) = toc;
    
    tic
    X = Zeidel(A,B,0.001);
    T5(pass) = toc;
    
    tic
    X = Relax(A,B,0.001,0.5);
    T6(pass) = toc;
    
    tic
    X = Gradient(A,B,0.001,0.000001);
    T7(pass) = toc;
end
    
    figure,plot(N,T1,N,T2,N,T3,N,T4,N,T5,N,T6,N,T7);
    legend('Kramer','Gauss','Holecky','Yakobi','Zeidel','Relax','Gradient');
    grid on
    