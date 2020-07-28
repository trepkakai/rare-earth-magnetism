%% New fitting model

% Data

% 4K
%TeslaResponse = [0.386981055 0.384237903 0.309101494 0.236566143 0.159326308 0.078684511 -0.001186722 -0.001187071 -0.079869577 -0.158320475 -0.236302577 -0.311699714 -0.385400384 -0.385752751 -0.414289387 -0.409602325 -0.331099855 -0.250095727 -0.165998011 -0.08106971 0.001288414 0.001281131 0.080838935 0.159730398 0.237484955 0.313430753 0.387295076 0.387610003 1.923377092 1.870537062 1.859969056 1.817697032 1.785993014 1.733152984 1.669744948 1.595768906 1.490088846 1.37384078 1.204752684 1.204752684 1.099072624 0.98599496 0.849667682 0.712283604 0.560104318 0.38678902 0.384675418 0.308585775 0.236723334 0.159576891 0.078731645 -0.001183617 -0.001183617 -0.079894125 -0.15852009 -0.236723334 -0.311756177 -0.385732219 -0.385732219 -0.561161119 -0.72179481 -0.851781284 -0.981767757 -1.088504618 -1.183616672 -1.194184678 -1.352704768 -1.500656852 -1.595768906 -1.69088096 -1.74372099 -1.785993014 -1.828265038 -1.859969056 -1.891673074 -1.90224108 -1.881105068 -1.891673074 -1.891673074 -1.817697032 -1.79656102 -1.733152984 -1.680312954 -1.595768906 -1.490088846 -1.394976792 -1.247024708 -1.236456702 -1.130776642 -1.015585377 -0.890882906 -0.746101224 -0.588637934 -0.414265835 -0.410038633 -0.330778588 -0.250461742 -0.165917694 -0.081056606 0.001289297 0.001278729 0.080845246 0.159576891 0.237780135 0.313869778 0.38678902 0.38784582 0.561161119 0.724965212 0.851781284 0.973313353 1.099072624 1.204752684 1.21532069 1.37384078 1.47952084 1.574632894 1.648608936 1.712016972 1.764857002 1.817697032 1.859969056 1.881105068 1.90224108];
%HoverT = [0.125 0.125 0.1 0.075 0.05 0.025 0 0 -0.025 -0.05 -0.075 -0.1 -0.125 -0.125 -0.125 -0.125 -0.1 -0.075 -0.05 -0.025 0 0 0.025 0.05 0.075 0.1 0.125 0.125 1.75 1.625 1.5 1.375 1.25 1.125 1 0.875 0.75 0.625 0.5 0.5 0.4375 0.375 0.3125 0.25 0.1875 0.125 0.125 0.1 0.075 0.05 0.025 0 0 -0.025 -0.05 -0.075 -0.1 -0.125 -0.125 -0.1875 -0.25 -0.3125 -0.375 -0.4375 -0.5 -0.5 -0.625 -0.75 -0.875 -1 -1.125 -1.25 -1.375 -1.5 -1.625 -1.75 -1.75 -1.625 -1.5 -1.375 -1.25 -1.125 -1 -0.875 -0.75 -0.625 -0.5 -0.5 -0.4375 -0.375 -0.3125 -0.25 -0.1875 -0.125 -0.125 -0.1 -0.075 -0.05 -0.025 0 0 0.025 0.05 0.075 0.1 0.125 0.125 0.1875 0.25 0.3125 0.375 0.4375 0.5 0.5 0.625 0.75 0.875 1 1.125 1.25 1.375 1.5 1.625 1.75];

% >= 12 K
TeslaResponse = [6.46921E-05 0.034530658 0.068842618 0.103519567 0.138036909 0.172706913 0.17280423 0.138094912 0.103136552 0.034256131 -0.000351833 -0.034876201 -0.069111468 -0.103570233 -0.173471312 -0.173537227 -0.104001679 -0.034514685 7.43934E-05 1.09326E-05 0.010864967 0.021625223 0.053491442 0.053457805 0.042859364 0.032100499 0.02131728 -9.96386E-05 -0.010947059 -0.021711032 -0.042961783 -0.0429225 -0.032211796 0.012696001 0.012738264 0.010227118 0.007671183 0.005099184 0.002547254 -3.26285E-05 -3.31121E-05 -0.002618984 -0.005207482 -0.007784414 -0.010372 -0.012954428 -0.012954434 -0.012844448 -0.012815492 -0.010313263 -0.007739588 -0.005143959 -0.002560821 3.6317E-05 3.6476E-05 0.002632347 0.005200398 0.007785604 0.010365118 0.012950391 0.012948929 0.177542501 0.164860894 0.151122486 0.138440879 0.125759271 0.113077664 0.100713097 0.076301003 0.063619396 0.050832109 0.050832109 0.044491305 0.038150502 0.031809698 0.025363214 0.012681607 0.012787287 0.01022983 0.007672372 0.005104347 0.002546889 -3.26551E-05 -3.30779E-05 -0.002620865 -0.005210027 -0.00778862 -0.010367214 -0.012998647 -0.012998647 -0.019445131 -0.025680255 -0.032126738 -0.045019706 -0.051466189 -0.051360509 -0.064359157 -0.077252124 -0.090145091 -0.103038059 -0.116248066 -0.128929673 -0.14161128 -0.154292888 -0.166974495 -0.179656102 -0.177542501 -0.165917694 -0.152179286 -0.14055448 -0.127872873 -0.115191265 -0.102403978 -0.077146444 -0.064359157 -0.051466189 -0.051360509 -0.045019706 -0.038573222 -0.032126738 -0.025680255 -0.019233771 -0.012892967 -0.012787287 -0.010314374 -0.00773578 -0.005146619 -0.002557457 3.63539E-05 3.64596E-05 0.002631433 0.005199459 0.00778862 0.010367214 0.012998647 0.012998647 0.019445131 0.025680255 0.032126738 0.038573222 0.045019706 0.051466189 0.051360509 0.064253476 0.077357804 0.090039411 0.102932378 0.128929673 0.14161128 0.154292888 0.166974495 0.178599301 1.712016972 1.553496882 1.394976792 1.26816072 1.141344648 1.046232594 0.962745347 0.884542102 0.822190867 0.778862042 0.737646819 0.675295583 0.636193961 0.594978738 0.567501922 0.537911505 0.51043469 0.488241877 0.466049065 0.450197056 0.432231445 0.413209035 0.397357026 0.384675418 0.370937011 0.358255403 0.346630597 0.338176192 0.327608186 0.31704018 0.307528975 0.29907457 0.291676966 0.283222561 0.276881757 0.272654555 0.265256951 0.257859346 0.252575343 0.24729134 0.242007337 0.236723334 0.231439331 0.227212129 0.221928126 0.217700924 0.213473721 0.21136012 0.205019316 0.201848915 0.197621712 0.19339451 0.190224108 0.188110507 0.184940105 0.181769703 0.177542501 0.1754289];
HoverT = [0 0.00625 0.0125 0.01875 0.025 0.03125 0.03125 0.025 0.01875 0.00625 0 -0.00625 -0.0125 -0.01875 -0.03125 -0.03125 -0.01875 -0.00625 0 0 0.0015625 0.003125 0.0078125 0.0078125 0.00625 0.0046875 0.003125 0 -0.0015625 -0.003125 -0.00625 -0.00625 -0.0046875 0.001694915 0.001694915 0.001355932 0.001016949 0.000677966 0.000338983 0 0 -0.000338983 -0.000677966 -0.001016949 -0.001355932 -0.001694915 -0.001694915 -0.001694915 -0.001694915 -0.001355932 -0.001016949 -0.000677966 -0.000338983 0 0 0.000338983 0.000677966 0.001016949 0.001355932 0.001694915 0.001694915 0.023728814 0.022033898 0.020338983 0.018644068 0.016949153 0.015254237 0.013559322 0.010169492 0.008474576 0.006779661 0.006779661 0.005932203 0.005084746 0.004237288 0.003389831 0.001694915 0.001694915 0.001355932 0.001016949 0.000677966 0.000338983 0 0 -0.000338983 -0.000677966 -0.001016949 -0.001355932 -0.001694915 -0.001694915 -0.002542373 -0.003389831 -0.004237288 -0.005932203 -0.006779661 -0.006779661 -0.008474576 -0.010169492 -0.011864407 -0.013559322 -0.015254237 -0.016949153 -0.018644068 -0.020338983 -0.022033898 -0.023728814 -0.023728814 -0.022033898 -0.020338983 -0.018644068 -0.016949153 -0.015254237 -0.013559322 -0.010169492 -0.008474576 -0.006779661 -0.006779661 -0.005932203 -0.005084746 -0.004237288 -0.003389831 -0.002542373 -0.001694915 -0.001694915 -0.001355932 -0.001016949 -0.000677966 -0.000338983 0 0 0.000338983 0.000677966 0.001016949 0.001355932 0.001694915 0.001694915 0.002542373 0.003389831 0.004237288 0.005084746 0.005932203 0.006779661 0.006779661 0.008474576 0.010169492 0.011864407 0.013559322 0.016949153 0.018644068 0.020338983 0.022033898 0.023728814 0.583333333 0.411764706 0.318181818 0.259259259 0.21875 0.189189189 0.166666667 0.14893617 0.134615385 0.122807018 0.112903226 0.104477612 0.097222222 0.090909091 0.085365854 0.080367394 0.076004343 0.072090628 0.068627451 0.065420561 0.0625 0.05982906 0.057377049 0.05511811 0.053030303 0.051094891 0.049295775 0.047619048 0.046052632 0.044585987 0.043209877 0.041916168 0.040697674 0.039548023 0.038461538 0.037433155 0.036458333 0.035532995 0.034653465 0.033816425 0.033018868 0.032258065 0.031531532 0.030837004 0.030172414 0.029535865 0.02892562 0.028340081 0.027777778 0.027237354 0.026717557 0.026217228 0.025735294 0.025270758 0.024822695 0.024390244 0.023972603 0.023569024];


% muB/kB = 0.672 (so that parameter in Langevin is dimensionless)
% alpha = 0.01165 (so that N is in units of 1/nm^3

% Define a fit model with a the fraction of surface atoms and (1-a) the
% fraction of interior atoms, and b the moment of surface atoms

% For each new element, need to modify the moment (9 here) and overall N
% (24 here). c in the parentheses comes from adjustments to make the units
% correct and possibly from anisotropy
fo = fitoptions('Method','NonlinearLeastSquares',...
               'Lower',[0,0],...
               'Upper',[1,10.6],...
               'StartPoint',[1,6.8]);          
% Use for low T
%ft = fittype('26.8*0.01165*a*b*(coth(b*.672*(x))-1./(b*.672*(x))) + 26.8*0.01165*(1-a)*10.6*(coth(10.6*.672*(x))-1./(10.6*.672*(x)))','options',fo);
% Use for high T
ft = fittype('26.8*0.01165*a*b*(coth(b*.672*1.6*(x))-1./(b*.672*1.6*(x))) + 26.8*0.01165*(1-a)*10.6*(coth(10.6*.672*1.6*(x))-1./(10.6*.672*1.6*(x)))','options',fo);


% Parameters
moment = 10.6;
N = 26.8;

% Perform nonlinear fitting. Need to jitter data first so no divide by zero
% errors
HoverT = HoverT + 0.0000000000001;
TeslaResponse = TeslaResponse + 0.00000000001;
[fitobject,gof,output]=fit(HoverT.',TeslaResponse.',ft);

% For extraction
coeff = coeffvalues(fitobject);
CI = confint(fitobject);

% Fraction that are surface
s = coeff(1);
s_err = (CI(2)-CI(1))/2;

% mu internal (bohr magnetons)
mu = coeff(2);
mu_err = (CI(4)-CI(3))/2; % MINIMUM REPORTED ERROR IS 0.1; we round up to 0.1

% Ms (T)
Ms = N*0.01165*(mu*s+moment*(1-s));
Ms_err = ( N*0.01165*((mu+mu_err)*s+moment*(1-s)) - N*0.01165*((mu-mu_err)*s+moment*(1-s)) )/2;
