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
MarkerSize=6;
LineWidth=2.5;
PlotLineWidth=3;
MarkerLineWidth=2;

%% Define the range of fields over which to plot
% Dysprosium
Tlow_Dy = linspace(16,50.2);
Thigh_Dy = linspace(50.2,297);
funlow_Dy = @(x)(x*.119./(12.57E-07));
funhigh_Dy = @(x)(299./(x*(12.57E-07)));

p1_Dy = plot(Tlow_Dy, funlow_Dy(Tlow_Dy));
set(p1_Dy,'Color',DefaultGreen,'LineWidth',PlotLineWidth,'MarkerFaceColor',DefaultBlue,'Markersize',MarkerSize);
hold all
p2_Dy = plot(Thigh_Dy, funhigh_Dy(Thigh_Dy));
set(p2_Dy,'Color',DefaultGreen,'LineWidth',PlotLineWidth,'MarkerFaceColor',DefaultBlue,'Markersize',MarkerSize);
hold on

% Gadolinium
Tlow_Gd = linspace(16,18.3);
Thigh_Gd = linspace(18.3,297);
funlow_Gd = @(x)(x*.364./(12.57E-07));
funhigh_Gd = @(x)(122./(x*(12.57E-07)));

p1_Gd = plot(Tlow_Gd, funlow_Gd(Tlow_Gd));
set(p1_Gd,'Color',DefaultOrange,'LineWidth',PlotLineWidth,'MarkerFaceColor',DefaultBlue,'Markersize',MarkerSize);
hold all
p2_Gd = plot(Thigh_Gd, funhigh_Gd(Thigh_Gd));
set(p2_Gd,'Color',DefaultOrange,'LineWidth',PlotLineWidth,'MarkerFaceColor',DefaultBlue,'Markersize',MarkerSize);
hold on

% Holmium
Tlow_Ho = linspace(16,44.7);
Thigh_Ho = linspace(44.7,297);
funlow_Ho = @(x)(x*.191./(12.57E-07));
funhigh_Ho = @(x)(383./(x*(12.57E-07)));

p1_Ho = plot(Tlow_Ho, funlow_Ho(Tlow_Ho));
set(p1_Ho,'Color',DefaultBlue,'LineWidth',PlotLineWidth,'MarkerFaceColor',DefaultBlue,'Markersize',MarkerSize);
hold all
p2_Ho = plot(Thigh_Ho, funhigh_Ho(Thigh_Ho));
set(p2_Ho,'Color',DefaultBlue,'LineWidth',PlotLineWidth,'MarkerFaceColor',DefaultBlue,'Markersize',MarkerSize);
hold on

% Erbium
Tlow_Er = linspace(16,45.5);
Thigh_Er = linspace(45.5,297);
funlow_Er = @(x)(x*.142./(12.57E-07));
funhigh_Er = @(x)(294./(x*(12.57E-07)));

p1_Er = plot(Tlow_Er, funlow_Er(Tlow_Er));
set(p1_Er,'Color',DefaultCrimson,'LineWidth',PlotLineWidth,'MarkerFaceColor',DefaultBlue,'Markersize',MarkerSize);
hold all
p2_Er = plot(Thigh_Er, funhigh_Er(Thigh_Er));
set(p2_Er,'Color',DefaultCrimson,'LineWidth',PlotLineWidth,'MarkerFaceColor',DefaultBlue,'Markersize',MarkerSize);

leg = legend([p1_Dy p1_Gd p1_Ho p1_Er],{'Dy_2O_3','Gd_2O_3','Ho_2O_3','Er_2O_3'});
set(leg,'Location', 'northeast','Fontsize',fs)
set(leg, 'Box', 'off')


xlim([15 297]);
ylim([0 8E6]);
set(gca,'FontSize',20,'LineWidth',LineWidth);
set(gca,'YTick',[2E6 4E6 6E6 8E6])
set(gca,'XTick',[15 100 200 297])
fh = figure(1); % returns the handle to the figure object
set(fh, 'color', 'white'); % sets the color to white 
pbaspect([1.618 1 1])

xlabel('Temperature (K)','Fontsize',22);
ylabel('E_{lin} (J/m^3)','Fontsize',22);

% Save the result
set(fh,'Units','Inches');
set(fh, 'color', 'white'); % sets the color to white 
set(gcf, 'PaperPosition', [0 0 12 7.75]) % make paper larger
print(gcf, 'maxlinNP.png', '-dpng', '-r300' ) % save 300 dpi file
