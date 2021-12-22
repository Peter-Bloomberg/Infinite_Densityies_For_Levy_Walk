clear


alpha = 1.5;

ta = 1;
d = 0.2;
tb = 10;

x0 = 0;
v0 = 1;
w = 1;




counter = 0;
V = zeros;
W = zeros;

counter2 = 0;


for t = ta:d:tb
    n = 5d4; %n是轨迹的个数。
    X = zeros(1,n);
    parfor i = 1:n
        t
        i
        %clearvars -except x0 t0 i X n r V W t counter ta d tb alpha v0 Av Mq
        %F0 w 
        [k,MM]=levy_walk_HP(x0, v0, w, t, alpha);
        %[k,MM]=levy_walk_HP_real(omega,x0,v0,t,alpha);
        %[k,MM] = levy_walk_HP_2(x0, v0, F0, t, alpha);
        x = MM(2, k + 1);
        X(1, i) = x;
    end
    varx = 0;
    avr = 0;
    mq = 0;
    for j = 1:n
        varx = varx + X(1,j)^2;
        avr = avr + X(1,j);        
    end
    varx = varx / n;
    avr = avr / n;    
    counter = counter + 1;
    %     V(1,counter)=log(t);
    %     W(1,counter)=log(varx);
    V(1,counter) = t;
    W(1,counter) = varx;  
    Av(1,counter) = avr;
    

%     hold on;
%     plot(t,varx,'*');
    
end

H = v0^2/w^2 - W;

sigma = W - Av.^2;

hold on;
loglog(V, H, '*');