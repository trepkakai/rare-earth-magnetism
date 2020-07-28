%% Settings for plotting
RedAccent =[229/255,20/255,0/255];
BlueAccent =[76/255,174/255,227/255];
GreenAccent =[51/255,153/255,51/255];
White=[1 1 1];
Black=[0 0 0];
DefaultBlue=[0    0.4470    0.7410];
DefaultOrange=[0.8500    0.3250    0.0980];
DefaultYellow=[0.9290    0.6940    0.1250];
DefaultPurple=[0.4940    0.1840    0.5560];
DefaultGreen=[0.4660    0.6740    0.1880];
DefaultLightBlue=[0.3010    0.7450    0.9330];
DefaultCrimson=[0.6350    0.0780    0.1840];
MarkerSize=7;
LineWidth=2.5;
PlotLineWidth=3;
MarkerLineWidth=2;
% Scatter plot Marker size (squared)
sz = 25;
% Font size
fs = 20;

%% Plotting
% Import size data
Dy = [36.07 37.64 38.42 25.34 16.13 29.18 14.59 25.45 16.04 19.2 19.97 70.63 73.1 174.7 66.91 48.32 88.13 92.85 25.18 33.05 120.4 15.74 114.5 92.02 81.25 39.16 65.59 23.49 50.9 48.95 66.01 149.8 114.3 55.86 47.32 55.23 38.44 44.36 26.41 23.24 20.78 25 41.4 34.01 29.57 26.61 53.23 28.09 29.57 66.54 44.47 33.06 19.38 70.69 15.96 38.77 69.55 78.67 22.5 13.62 54.49 27.83 46.6 36.96 43.38 35.35 41.78 38.56 43.4 35.45 41.79 38.4 27.32 78.74 99.62 49.81 61.06 57.85 35 39.37 38.28 42.65 52.5 26.25 32.26 28.44 30.62 42.65 30.63 20.78 26.75 29.3 19.75 21.66].';
Gd = [50.182 22.81 20.9852 20.43776 18.248 15.8973 29.198 24.706 16.845 22.46 14.599 39.305 19.091 21.337 15.722 33.69 11.6168 17.872 7.1488 11.6168 21.4464 25.0208 51.8288 67.9136 22.34 38.4248 47.3608 40.212 22.7864 14.6484 14.6484 13.8346 29.2968 32.552 30.1106 41.5038 21.1588 16.276 52.0832 34.1796 9.678 8.2263 14.0331 31.4535 24.195 28.0662 23.2272 38.4693 30.3705 14.8478 28.3458 29.0207 24.9678 18.1584 21.9414 15.8886 12.8622 15.132 23.4546 24.9678 26.481 28.7508 9.0792 22.698 8.5866 31.224 27.321 21.0762 58.545 52.3002 56.2032 30.7234 38.0703 46.753 46.753 33.395 35.3987 37.4024 36.0666 74.822 23.628 68.915 19.978 32.821 64.215 58.507 20.0728 16.4232 12.7736 11.8612 24.6348 20.0728 29.8284 37.842 16.9176 22.7052 25.3764 17.808 24.486 18.6984 20.4792 17.9396 21.7838 32.6757 16.4232 16.4232 18.248 51.0944 39.2332 31.0216 29.1968 40.1456 34.6712 33.7588 23.2175 28.2375 28.865 60.8675 8.1575 14.4325 15.06 8.785 12.55 10.6675 9.4125 6.275 11.9225 15.6875 15.6875 33.885].';
Ho = [23.19 16.37 35.46 28.64 34.1 36.82 43.64 30 21.82 54.55 43.64 47.73 10.87 27.18 21.75 23.78 32.62 12.91 25.14 14.95 24.46 26.5 12.91 20.39 26.71 20.48 29.39 35.62 33.84 17.81 31.17 50.76 16.37 60.95 41.54 83.64 18.57 20.42 17.64 18.57 31.56 30.63 11.14 23.21 25.06 19.49 30.63 28.78 28.86 17.57 26.35 20.08 22.4 36.55 25.94 18.87 47.76 22.39 28.36 23.13 27.61 15.67 21.64 11.19 17.03 23.11 20.68 29.19 41.36 37.71 25.55 38.93 19.46 17.03 29.19 27.98 49.95 39.76 43.83 68.3 34.65 78.49 58.1 25.48 31.3 27.29 40.13 27.29 19.26 21.67 19.26 24.08 17.97 41.93 55.91 34.61 23.3 22.63 15.31 25.29 22.63 21.3 19.3 14.64].';
Er = [43.49 65.24 32.62 39.87 39.58 24.9 21.71 17.88 37.79 30.82 30.83 30.82 26.75 30.23 29.07 30.82 33.99 29.46 35.54 33.99 54.08 35.54 41.72 24.72 18.76 36.58 37.52 29.08 25.4 26.22 19.67 20.49 31.79 26.21 25.1 29 30.68 21.19 26.77 29.56 27.69 30.1 25.28 26.49 27.69 28.89 30.1 24.08 33.71 20.47 27.69 37.32 32.5 31.3 36.12 26.49 30.1 31.3 28.89 28.89 27.69 38.52 30.1 63.8 45.75 36.12 34.91 28.89 36.77 23.87 26.45 22.58 41.29 46.45 38.06 79.35 55.84 33.29 26.84 41.88 36.51 35.43 26.84 32.21 60.82 26.78 27.98 37.71 30.41 42.58 57.17 36.49 29.65 21.53 26.47 24 19.41 18.71 20.12 17.65 19.84 16.77 9.58 48.58 12.66 21.56 33.53 32.5 22.44 25.89 18.99 25.03 30.21 34.53 26.76 34.53 30.21 21.58 28.48 25.89 27.74 22.58 27.1 30.97 36.13 38.71 34.19 30.32].';
% Convert to radii
Dy = Dy/2;
Gd = Gd/2;
Ho = Ho/2;
Er = Er/2;

% Kernel density estimators 
% Kernel bandwidth
kbw = 3.5;
pdDy = fitdist(Dy,'Kernel','BandWidth',kbw);
pdGd = fitdist(Gd,'Kernel','BandWidth',kbw);
pdHo = fitdist(Ho,'Kernel','BandWidth',kbw);
pdEr = fitdist(Er,'Kernel','BandWidth',kbw);

% Prepare x for Kernel Density fitting
x = 0:.2:100;
% Perform Kernel density fits
yDy = pdf(pdDy,x);
yGd = pdf(pdGd,x);
yHo = pdf(pdHo,x);
yEr = pdf(pdEr,x);

% Plot the results
pd = plot(x,yDy,'k-','LineWidth',2)
set(pd,'LineWidth',MarkerLineWidth,'Color',DefaultGreen)
hold on
pg = plot(x,yGd,'r-','LineWidth',2)
set(pg,'LineWidth',MarkerLineWidth,'Color',DefaultOrange)
hold on
ph = plot(x,yHo,'b-','LineWidth',2)
set(ph,'LineWidth',MarkerLineWidth,'Color',DefaultBlue)
hold on
pe = plot(x,yEr,'g-','LineWidth',2)
set(pe,'LineWidth',MarkerLineWidth,'Color',DefaultCrimson)
hold on

% Scatter original datapoints
alph = -.006
sd = scatter(Dy,ones(size(Dy))*alph*1,sz,'^')
set(sd,'MarkerEdgeColor',DefaultGreen,'MarkerFaceColor',White,'Linewidth',MarkerLineWidth,'MarkerFaceAlpha',0,'MarkerEdgeAlpha',0.3);
hold on
sg = scatter(Gd,ones(size(Gd))*alph*2,sz,'s')
set(sg,'MarkerEdgeColor',DefaultOrange,'MarkerFaceColor',White,'Linewidth',MarkerLineWidth,'MarkerFaceAlpha',0,'MarkerEdgeAlpha',0.3);
hold on
sh = scatter(Ho,ones(size(Ho))*alph*3,sz,'o')
set(sh,'MarkerEdgeColor',DefaultBlue,'MarkerFaceColor',White,'Linewidth',MarkerLineWidth,'MarkerFaceAlpha',0,'MarkerEdgeAlpha',0.3);
hold on
se = scatter(Er,ones(size(Er))*alph*4,sz,'>')
set(se,'MarkerEdgeColor',DefaultCrimson,'MarkerFaceColor',White,'Linewidth',MarkerLineWidth,'MarkerFaceAlpha',0,'MarkerEdgeAlpha',0.3);

% Legend and limits
leg = legend([sd sg sh se],{'Dy_2O_3 radius','Gd_2O_3 radius','Ho_2O_3 radius','Er_2O_3 radius'});
set(leg,'Location', 'northeast','Fontsize',fs)
set(leg, 'Box', 'off')
ylim([-0.03,0.08])
xlim([0,100])
xticks([0,20,40,60,80,100])
yticks([0,0.02,0.04,0.06,0.08])
xlabel('r (nm)','Fontsize',fs)
ylabel('Kernel density','Fontsize',fs)

set(gca,'Fontsize',fs,'LineWidth',LineWidth);
pbaspect([1.618 1 1])

a=axes('position',get(gca,'position'),'visible','off');
leg2 = legend(a,[pd pg ph pe],{'Dy_2O_3 KDE','Gd_2O_3 KDE','Ho_2O_3 KDE','Er_2O_3 KDE'})
set(leg2,'Location', 'north','Fontsize',fs)
set(leg2, 'Box', 'off')


% Exporting
fh = figure(1); % returns the handle to the figure object
set(fh, 'color', 'white'); % sets the color to white 
set(gcf, 'PaperPosition', [0 0 12 6.75]) % make paper larger
print(gcf, 'sizedist.png', '-dpng', '-r300' ) % save 300 dpi file


