% Note - this file calls "polyparci.m" to determine the chi values

%% Import Variables
% response is in emu per g
field_ho_4k = [5.00E+03 5.00E+03 4.00E+03 3.00E+03 2.00E+03 1.00E+03 0.00E+00 0.00E+00 -1.00E+03 -2.00E+03 -3.00E+03 -4.00E+03 -5.00E+03 -5.00E+03 -5.00E+03 -5.00E+03 -4.00E+03 -3.00E+03 -2.00E+03 -1.00E+03 0.00E+00 0.00E+00 1.00E+03 2.00E+03 3.00E+03 4.00E+03 5.00E+03 5.00E+03];
response_ho_4k = [36.61817143 36.3586 29.2488 22.38512571 15.07628857 7.44554 -0.112293829 -0.112326857 -7.557677143 -14.98111143 -22.36018571 -29.49465714 -36.4686 -36.50194286 -39.20222857 -38.75871429 -31.3304 -23.66536571 -15.7076 -7.67124 0.121916514 0.121227286 7.649402857 15.11452571 22.47206857 29.65845714 36.64788571 36.67768571];

field_ho_16k = [0 1000 2000 3000 4000 5000 5000 4000 3000 1000 0 -1000 -2000 -3000 -5000 -5000 -3000 -1000 0];
response_ho_16k = [0.006121503 3.267471429 6.514248571 9.795562857 13.06177429 16.34243143 16.35164 13.06726286 9.75932 3.241494286 -0.033292286 -3.300168571 -6.539688571 -9.800357143 -16.41476286 -16.421 -9.841182857 -3.26596 0.007039491]; 

field_ho_64k = [0 1000 2000 5000 5000 4000 3000 2000 0 -1000 -2000 -4000 -4000 -3000 ];
response_ho_64k = [0.001034502 1.0281 2.046291714 5.06164 5.058457143 4.055577143 3.037517143 2.017152571 -0.009428329 -1.035868 -2.054411429 -4.065268571 -4.061551429 -3.048048571];

field_ho_295k = [5.00E+03 5.00E+03 4.00E+03 3.00E+03 2.00E+03 1.00E+03 0.00E+00 0.00E+00 -1.00E+03 -2.00E+03 -3.00E+03 -4.00E+03 -5.00E+03 -5.00E+03 -5.00E+03 -5.00E+03 -4.00E+03 -3.00E+03 -2.00E+03 -1.00E+03 0.00E+00 0.00E+00 1.00E+03 2.00E+03 3.00E+03 4.00E+03 5.00E+03 5.00E+03];
response_ho_295k = [1.201362 1.205361143 0.967743429 0.725887429 0.482511429 0.241034543 -0.003087477 -0.003133243 -0.247821943 -0.492759143 -0.736602 -0.981452857 -1.225815714 -1.225816286 -1.215408857 -1.212668857 -0.975894857 -0.732360286 -0.486748286 -0.242318286 0.003436506 0.003451551 0.2490864 0.492088857 0.736714571 0.980801714 1.225433714 1.225295429];

field_er_4k = [0.00E+00 1.00E+03 2.00E+03 3.00E+03 4.00E+03 5.00E+03 5.00E+03 5.00E+03 5.00E+03 4.00E+03 3.00E+03 2.00E+03 0.00E+00 0.00E+00 -1.00E+03 -2.00E+03 -3.00E+03 -4.00E+03 -5.00E+03 -5.00E+03];
response_er_4k = [0.081006837 5.395457338 10.47547782 15.28741752 19.69602958 24.41134243 24.10464164 23.69711035 23.69071672 19.06365188 14.35774744 9.978004551 -0.081512924 -0.081472378 -5.222970421 -10.28163481 -15.07796359 -19.95632537 -24.09430034 -24.10045506];

field_er_16k = [0 1000 2000 3000 4000 5000 5000 4000 2000 0 -2000 -5000 -5000 -4000 -3000 0];
response_er_16k = [0.006326067 2.244237778 4.479996296 6.7354 8.996537037 11.22427778 11.22653333 8.971155556 4.488944444 -0.02488733 -4.506662963 -11.28375556 -11.28237407 -9.013096296 -6.756651852 0.003253727];

field_er_64k = [0 3000 4000 5000 5000 4000 0 -1000 -2000 -3000 -4000 -3000 -2000 -1000 0];
response_er_64k = [-0.000999427 2.394914815 3.200997407 4.007644444 4.000922222 3.201267778 -0.0058896 -0.81113963 -1.609265926 -2.407124444 -3.20953037 -2.402072593 -1.603732222 -0.804657778 -0.001045224];

field_er_295k = [0.00E+00 1.00E+03 2.00E+03 3.00E+03 4.00E+03 5.00E+03 5.00E+03 5.00E+03 5.00E+03 4.00E+03 3.00E+03 2.00E+03 1.00E+03 0.00E+00 0.00E+00 -1.00E+03 -2.00E+03 -3.00E+03 -4.00E+03 -5.00E+03 -5.00E+03 -5.00E+03 -5.00E+03 -4.00E+03 -3.00E+03 -2.00E+03 -1.00E+03 0.00E+00];
response_er_295k = [0.000634204 0.196527593 0.390927407 0.587519259 0.781504444 0.976204815 0.976561111 0.976441852 0.97524037 0.781100741 0.600087037 0.390974444 0.197121481 -0.002210232 -0.002496231 -0.19878663 -0.392380741 -0.588492593 -0.78228 -0.977465556 -0.978394815 -0.978875556 -0.976259259 -0.780473704 -0.586467407 -0.390097037 -0.197639333 0.003095866];

field_dy_4k = [5.00E+03 5.00E+03 4.00E+03 3.00E+03 2.00E+03 1.00E+03 0.00E+00 0.00E+00 -1.00E+03 -2.00E+03 -3.00E+03 -4.00E+03 -5.00E+03 -5.00E+03 -5.00E+03 -5.00E+03 -4.00E+03 -3.00E+03 -2.00E+03 -1.00E+03 0.00E+00 0.00E+00 1.00E+03 2.00E+03 3.00E+03 4.00E+03 5.00E+03 5.00E+03];
response_dy_4k = [28.61178182 28.28321818 23.39992727 17.63637818 11.88914364 5.961738182 -0.084946855 -0.086471727 -5.963225455 -11.81916 -17.48570727 -23.16989091 -28.79998182 -28.87861818 -29.002 -28.4866 -23.11898182 -17.75932909 -12.05638545 -5.98794 0.092400364 0.094006891 6.015918182 11.89367818 17.54708 23.18754545 28.82687273 28.93934545];

field_dy_16k = [0 1000 2000 3000 4000 5000 5000 4000 3000 2000 1000 0 -1000 -2000 -3000 -4000 -5000 -5000 -4000 -3000 -2000 -1000 0];
response_dy_16k = [0.004027511 2.762185455 5.514752727 8.267849091 11.03189273 13.81189273 13.81530182 11.05424909 8.278021818 5.503010909 2.742916364 -0.0283722 -2.798647273 -5.554310909 -8.323483636 -11.09163455 -13.85918727 -13.86443636 -11.10124182 -8.323087273 -5.555018182 -2.773703636 0.00954208];

field_dy_64k = [0 1000 2000 3000 4000 5000 5000 4000 3000 2000 1000 0 -2000 -3000 -4000 -5000 -5000 -4000 -3000 -2000 -1000 0];
response_dy_64k = [0.002263911 0.964835818 1.921827273 2.863203636 3.824974545 4.781718182 4.776916364 3.820381818 2.863485455 1.906063636 0.955329455 -0.010729015 -1.924094545 -2.879987273 -3.8325 -4.790114545 -4.785732727 -3.828554545 -2.874894545 -1.915127273 -0.964146727 0.002244453];

field_dy_295k = [5.00E+03 5.00E+03 4.00E+03 3.00E+03 2.00E+03 1.00E+03 0.00E+00 0.00E+00 -1.00E+03 -2.00E+03 -3.00E+03 -4.00E+03 -5.00E+03 -5.00E+03 -5.00E+03 -5.00E+03 -4.00E+03 -3.00E+03 -2.00E+03 -1.00E+03 0.00E+00 0.00E+00 1.00E+03 2.00E+03 3.00E+03];
response_dy_295k = [1.205431091 1.204976 0.961475455 0.725666909 0.484254 0.264043636 -0.002802415 -0.003267742 -0.246376545 -0.488512182 -0.731239091 -0.974495273 -1.217382545 -1.217516909 -1.209796182 -1.208977455 -0.967240727 -0.727805273 -0.484756545 -0.240742182 0.0036547 0.003658213 0.247684 0.489943636 0.73317];

field_gd_4k = [0.00E+00 1.00E+03 2.00E+03 3.00E+03 4.00E+03 5.00E+03 5.00E+03 5.00E+03 5.00E+03 4.00E+03 3.00E+03 2.00E+03 1.00E+03 0.00E+00 0.00E+00 -1.00E+03 -2.00E+03 -3.00E+03 -4.00E+03 -5.00E+03 -5.00E+03 -5.00E+03 -5.00E+03 -4.00E+03 -3.00E+03 -2.00E+03 -1.00E+03 0.00E+00];
response_gd_4k = [-0.002827058 2.825417222 5.727205556 8.684444444 11.68940556 14.72396667 14.78980556 15.29643889 15.25530556 12.22091667 9.238416667 6.156516667 3.074877222 -0.049411772 -0.049821122 -3.127726667 -6.234 -9.339283333 -12.45097778 -15.54752222 -15.55645556 -14.23805556 -14.24268333 -11.96227778 -8.955233333 -6.072538889 -3.060124444 0.052817839];

field_gd_16k = [0 1000 2000 3000 4000 5000 5000 4000 3000 2000 1000 0 -1000 -2000 -3000 -4000 -5000 -5000 -4000 -3000 -2000 -1000 0];
response_gd_16k = [-0.002273433 1.449465 2.887557778 4.332394444 5.783661111 7.201505556 7.203227778 5.75085 4.302793889 2.869185556 1.434059444 -0.011663389 -1.459645 -2.900483333 -4.350757222 -5.804555556 -7.213094444 -7.221927778 -5.770344444 -4.323110556 -2.877405 -1.444521111 -0.00252405];

field_gd_64k = [0 1000 2000 3000 4000 5000 5000 3000 2000 1000 0 -1000 -2000 -3000 -4000 -5000 -5000 -4000 -3000 -2000 -1000 0];
response_gd_64k = [-0.00335456 0.478852333 0.95262 1.423200556 1.895902222 2.369374444 2.364459444 1.424437778 0.955461111 0.476817111 -0.002464223 -0.483505278 -0.959435 -1.429637778 -1.900836667 -2.371532222 -2.368855556 -1.900667222 -1.370226111 -0.955477778 -0.480659111 -0.003860888];

field_gd_295k = [0.00E+00 1.00E+03 2.00E+03 3.00E+03 4.00E+03 5.00E+03 5.00E+03 5.00E+03 5.00E+03 4.00E+03 3.00E+03 2.00E+03 1.00E+03 0.00E+00 0.00E+00 -1.00E+03 -2.00E+03 -3.00E+03 -4.00E+03 -5.00E+03 -5.00E+03 -5.00E+03 -5.00E+03 -4.00E+03 -3.00E+03 -2.00E+03 -1.00E+03 0.00E+00];
response_gd_295k = [0.000186767 0.109637778 0.216711222 0.326270278 0.433286444 0.541519722 0.542913667 0.548961833 0.544766056 0.435612444 0.328095 0.231728222 0.128217278 -0.001560792 -0.003126575 -0.108873444 -0.216845889 -0.325739556 -0.434987667 -0.542446 -0.543029944 -0.549071222 -0.544959778 -0.436016167 -0.328500222 -0.218055833 -0.108642389 0.000884052];

%% Fitting with standard error 

%[p,S] = polyfit(Heat, O2, 1); %p is coefficients of polynomial, S is structure
%CI = polyparci(p,S); %returns confidence interval of fit

[p_er_4k,S_er_4k] = polyfit(field_er_4k,response_er_4k,1);
chi_er_4k = p_er_4k(1);  %in units of emu/g Oe of slope
CI_er_4k = polyparci(p_er_4k,S_er_4k); 

[p_er_16k,S_er_16k] = polyfit(field_er_16k,response_er_16k,1);
chi_er_16k = p_er_16k(1);
CI_er_16k = polyparci(p_er_16k,S_er_16k);

[p_er_64k,S_er_64k] = polyfit(field_er_64k,response_er_64k,1);
chi_er_64k = p_er_64k(1);
CI_er_64k = polyparci(p_er_64k,S_er_64k);

[p_er_295k,S_er_295k] = polyfit(field_er_295k,response_er_295k,1);
chi_er_295k = p_er_295k(1);
CI_er_295k = polyparci(p_er_295k,S_er_295k);

%KEEP FORMATTING BELOW TO LOOK LIKE ABOVE; ADD SPACE FOR CHI AND COLLECT
%THE CONFIDENCE INTERVALS; PUT ALL STUFF IN A MATRIX; WE ARE ONLY
%INTERESTED IN THE FIRST COLUMN OF THE CONFIDENCE INTERVAL MATRICES, which
%is entries 1 and 2 (the lower and upper bounds, respectively)
[p_gd_4k,S_gd_4k] = polyfit(field_gd_4k,response_gd_4k,1);
CI_gd_4k = polyparci(p_gd_4k,S_gd_4k);
chi_gd_4k = p_gd_4k(1);

[p_gd_16k,S_gd_16k] = polyfit(field_gd_16k,response_gd_16k,1);
CI_gd_16k = polyparci(p_gd_16k,S_gd_16k);
chi_gd_16k = p_gd_16k(1);

[p_gd_64k,S_gd_64k] = polyfit(field_gd_64k,response_gd_64k,1);
CI_gd_64k = polyparci(p_gd_64k,S_gd_64k);
chi_gd_64k = p_gd_64k(1);

[p_gd_295k,S_gd_295k] = polyfit(field_gd_295k,response_gd_295k,1);
CI_gd_295k = polyparci(p_gd_295k,S_gd_295k);
chi_gd_295k = p_gd_295k(1);

[p_ho_4k,S_ho_4k] = polyfit(field_ho_4k,response_ho_4k,1);
CI_ho_4k = polyparci(p_ho_4k,S_ho_4k);
chi_ho_4k = p_ho_4k(1);

[p_ho_16k,S_ho_16k] = polyfit(field_ho_16k,response_ho_16k,1);
CI_ho_16k = polyparci(p_ho_16k,S_ho_16k);
chi_ho_16k = p_ho_16k(1);

[p_ho_64k,S_ho_64k] = polyfit(field_ho_64k,response_ho_64k,1);
CI_ho_64k = polyparci(p_ho_64k,S_ho_64k);
chi_ho_64k = p_ho_64k(1); 

[p_ho_295k,S_ho_295k] = polyfit(field_ho_295k,response_ho_295k,1);
CI_ho_295k = polyparci(p_ho_295k,S_ho_295k);
chi_ho_295k = p_ho_295k(1);

[p_dy_4k,S_dy_4k] = polyfit(field_dy_4k,response_dy_4k,1);
CI_dy_4k = polyparci(p_dy_4k,S_dy_4k);
chi_dy_4k = p_dy_4k(1);

[p_dy_16k,S_dy_16k] = polyfit(field_dy_16k,response_dy_16k,1);
CI_dy_16k = polyparci(p_dy_16k,S_dy_16k);
chi_dy_16k = p_dy_16k(1);

[p_dy_64k,S_dy_64k] = polyfit(field_dy_64k,response_dy_64k,1);
CI_dy_64k = polyparci(p_dy_64k,S_dy_64k);
chi_dy_64k = p_dy_64k(1);

[p_dy_295k,S_dy_295k] = polyfit(field_dy_295k,response_dy_295k,1);
CI_dy_295k = polyparci(p_dy_295k,S_dy_295k);
chi_dy_295k = p_dy_295k(1);


%% Import all variables in a matrix to transfer to other side and test graph

%matrix: [temp, chi, lowerbound, upperbound]; rows are 4, 16, 64, 256
chi_er = [4 chi_er_4k CI_er_4k(1) CI_er_4k(2); 16 chi_er_16k CI_er_16k(1) CI_er_16k(2); 64 chi_er_64k CI_er_64k(1) CI_er_64k(2); 295 chi_er_295k CI_er_295k(1) CI_er_295k(2)];
chi_gd = [4 chi_gd_4k CI_gd_4k(1) CI_gd_4k(2); 16 chi_gd_16k CI_gd_16k(1) CI_gd_16k(2); 64 chi_gd_64k CI_gd_64k(1) CI_gd_64k(2); 295 chi_gd_295k CI_gd_295k(1) CI_gd_295k(2)];
chi_ho = [4 chi_ho_4k CI_ho_4k(1) CI_ho_4k(2); 16 chi_ho_16k CI_ho_16k(1) CI_ho_16k(2); 64 chi_ho_64k CI_ho_64k(1) CI_ho_64k(2); 295 chi_ho_295k CI_ho_295k(1) CI_ho_295k(2)];
chi_dy = [4 chi_dy_4k CI_dy_4k(1) CI_dy_4k(2); 16 chi_dy_16k CI_dy_16k(1) CI_dy_16k(2); 64 chi_dy_64k CI_dy_64k(1) CI_dy_64k(2); 295 chi_dy_295k CI_dy_295k(1) CI_dy_295k(2)];

%Values without 4K datapoints
% chi_er = [16 chi_er_16k CI_er_16k(1) CI_er_16k(2); 64 chi_er_64k CI_er_64k(1) CI_er_64k(2); 295 chi_er_295k CI_er_295k(1) CI_er_295k(2)];
% chi_gd = [16 chi_gd_16k CI_gd_16k(1) CI_gd_16k(2); 64 chi_gd_64k CI_gd_64k(1) CI_gd_64k(2); 295 chi_gd_295k CI_gd_295k(1) CI_gd_295k(2)];
% chi_ho = [16 chi_ho_16k CI_ho_16k(1) CI_ho_16k(2); 64 chi_ho_64k CI_ho_64k(1) CI_ho_64k(2); 295 chi_ho_295k CI_ho_295k(1) CI_ho_295k(2)];
% chi_dy = [16 chi_dy_16k CI_dy_16k(1) CI_dy_16k(2); 64 chi_dy_64k CI_dy_64k(1) CI_dy_64k(2); 295 chi_dy_295k CI_dy_295k(1) CI_dy_295k(2)];


figure(1)
er = plot(chi_er(:,1),1./chi_er(:,2),'b*-');
hold on
gd = plot(chi_gd(:,1),1./chi_gd(:,2),'r*-');
hold on
dy = plot(chi_dy(:,1),1./chi_dy(:,2),'g*-');
hold on
ho = plot(chi_ho(:,1),1./chi_ho(:,2),'m*-');
hold on 
legend([er gd dy ho],{'Er_2O_3','Gd_2O_3','Dy_2O_3','Ho_2O_3'},'Location','southeast')
title('Curie-Weiss Plots')
xlabel('Temperature (K)')
ylabel('\chi^{-1} (Oe g/emu)')

%% Calculation of Curie and Weiss constants for the investigated nanoparticles

%chi_molar = c/(T+theta) -> T = c/chi_molar-theta; T = aX + b, where X =
%1/chi_molar

%C = curie constant
%theta = Weiss constant

% First, we convert the measured susceptibility values from 
% emu/g Oe to emu/cm^3 and take the inverse
%chi_er_SI_inv = [4 1/(chi_er_4k*4*pi*8.64) ; 16 1/(chi_er_16k*4*pi*8.64) ; 64 1/(chi_er_64k*4*pi*8.64) ; 295 1/(chi_er_295k*4*pi*8.64) ];
%chi_gd_SI_inv = [4 1/(chi_gd_4k*4*pi*7.41) ; 16 1/(chi_gd_16k*4*pi*7.41) ; 64 1/(chi_gd_64k*4*pi*7.41) ; 295 1/(chi_gd_295k*4*pi*7.41) ];
%chi_ho_SI_inv = [4 1/(chi_ho_4k*4*pi*8.41) ; 16 1/(chi_ho_16k*4*pi*8.41) ; 64 1/(chi_ho_64k*4*pi*8.41) ; 295 1/(chi_ho_295k*4*pi*8.41) ];
%chi_dy_SI_inv = [4 1/(chi_dy_4k*4*pi*7.8) ; 16 1/(chi_dy_16k*4*pi*7.8) ; 64 1/(chi_dy_64k*4*pi*7.8) ; 295 1/(chi_dy_295k*4*pi*7.8) ];

%Values without 4K datapoints
chi_er_SI_inv = [16 1/(chi_er_16k*4*pi*8.64) ; 64 1/(chi_er_64k*4*pi*8.64) ; 295 1/(chi_er_295k*4*pi*8.64) ];
chi_gd_SI_inv = [16 1/(chi_gd_16k*4*pi*7.41) ; 64 1/(chi_gd_64k*4*pi*7.41) ; 295 1/(chi_gd_295k*4*pi*7.41) ];
chi_ho_SI_inv = [16 1/(chi_ho_16k*4*pi*8.41) ; 64 1/(chi_ho_64k*4*pi*8.41) ; 295 1/(chi_ho_295k*4*pi*8.41) ];
chi_dy_SI_inv = [16 1/(chi_dy_16k*4*pi*7.8) ; 64 1/(chi_dy_64k*4*pi*7.8) ; 295 1/(chi_dy_295k*4*pi*7.8) ];

%Values without 16K or 4K datapoints
% chi_er_SI_inv = [64 1/(chi_er_64k*4*pi*8.64) ; 295 1/(chi_er_295k*4*pi*8.64) ];
% chi_gd_SI_inv = [64 1/(chi_gd_64k*4*pi*7.41) ; 295 1/(chi_gd_295k*4*pi*7.41) ];
% chi_ho_SI_inv = [64 1/(chi_ho_64k*4*pi*8.41) ; 295 1/(chi_ho_295k*4*pi*8.41) ];
% chi_dy_SI_inv = [64 1/(chi_dy_64k*4*pi*7.8) ; 295 1/(chi_dy_295k*4*pi*7.8) ];


%next, we carry out the fits and extract values of C and theta for each
%substance in question

[p_er,S_er] = polyfit(chi_er_SI_inv(:,2),chi_er_SI_inv(:,1),1);
C_er = p_er(1); %units: SI, K emu/cm^3; to get CGS, divide by 4*pi
theta_er = -p_er(2); %units: K 
CI_er = polyparci(p_er,S_er);
C_er_err = (CI_er(2)-CI_er(1))/2;
theta_er_err = (CI_er(4)-CI_er(3))/2;

[p_gd,S_gd] = polyfit(chi_gd_SI_inv(:,2),chi_gd_SI_inv(:,1),1);
C_gd = p_gd(1); %units: SI, cm^3 K/emu; to get CGS, divide by 4*pi
theta_gd = -p_gd(2); %units: K 
CI_gd = polyparci(p_gd,S_gd);
C_gd_err = (CI_gd(2)-CI_gd(1))/2;
theta_gd_err = (CI_gd(4)-CI_gd(3))/2;

[p_ho,S_ho] = polyfit(chi_ho_SI_inv(:,2),chi_ho_SI_inv(:,1),1);
C_ho = p_ho(1); %units: SI, cm^3 K/emu; to get CGS, divide by 4*pi
theta_ho = -p_ho(2); %units: K 
CI_ho = polyparci(p_ho,S_ho);
C_ho_err = (CI_ho(2)-CI_ho(1))/2;
theta_ho_err = (CI_ho(4)-CI_ho(3))/2;

[p_dy,S_dy] = polyfit(chi_dy_SI_inv(:,2),chi_dy_SI_inv(:,1),1);
C_dy = p_dy(1); %units: SI, cm^3 K/emu; to get CGS, divide by 4*pi
theta_dy = -p_dy(2); %units: K 
CI_dy = polyparci(p_dy,S_dy);
C_dy_err = (CI_dy(2)-CI_dy(1))/2;
theta_dy_err = (CI_dy(4)-CI_dy(3))/2;

%in supporting info, include information on how to convert between chi in
%different systems. 




%% Chi Conversions

%molar densities:
%ho: 377.86 g/mol -> 0.37786
%dys: 372.997 g/mol -> 0.372997
%er: 382.56 g/mol -> 0.38256
%gd: 362.497 g/mol -> 0.362497

%densities: 
%ho2o3: 8.41 g/cm^3
%dy2o3: 7.8 g/cm^3
%er2o3: 8.64 g/cm^3
%gd2o3: 7.41 g/cm^3

%SI (m^3/mol): 4*pi*density/10^3*slope, where density is in kg/mol
%SI (cm^3/mol): 4*pi*density*10^3*slope, where density is in kg/mol
%cgs (cm^3/mol): density*10^3*slope; or, SI/4 pi, where density is in
%kg/mol

alpha = 4*pi/(10^3); %gives mass susceptibility in m^3/kg; 4*Pi converts field, m*10^3 gives right units
beta_ho = alpha*.377; %gives molar susceptibility in m^3/mol; 0.377 kg/mol for Ho2O3
gamma_ho = 4*pi*8.41; %gives volume susceptibility, unitless; 8.41 for Ho
beta_dy = alpha*.372997;
gamma_dy = 4*pi*7.8;
beta_er = alpha*.38256;
gamma_er = 4*pi*8.64;
beta_gd = alpha*.362497;
gamma_gd = 4*pi*7.41;

beta = 0; %set alpha to appropriate element alpha
gamma = 0; %set beta to appropriate element beta
data = 0; %set data to the slope of the graph, which has units of emu/g Oe

%to do this, just use chi_er, chi_gd, chi_ho, chi_dy in this order for 1,2,3,4.
%These go in order of
%temperature: 
%matrix: [temp, chi, lowerbound, upperbound]; rows are 4, 16, 64, 297 

% chi_mass_SI = alpha*data %m^3/kg
% chi_molar_SI = beta*data %m^3/mol
% chi_volume_SI = gamma*data %unitless
% chi_mass_cgs = chi_mass_SI*10^3/(4*pi)  %cm^3/g
% chi_molar_cgs = chi_molar_SI*10^6/(4*pi) %cm^3/mol; this one is typically used on the giant chart https://www.reade.com/reade-resources/reference-educational/reade-reference-chart-particle-property-briefings/31-magnetic-properties-a-susceptibilities-chart
% chi_volume_cgs = chi_volume_SI/(4*pi) %emu
% %for viewing simplicity
% chi_mass_cgs_per = chi_mass_cgs*10^6 %chi mass per 10^(-6); same units as above
% chi_molar_cgs_per = chi_molar_cgs*10^6
% chi_volume_cgs_per = chi_volume_cgs*10^6

%to convert to cgs, multiply chi_mole by 10^6/4pi,chi_mass by 10^3/4pi,and
%chi_volume by 1/4pi






