%% Import Plotting Parameters
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

figure1 = figure;
% susceptibility (unitless cgs, emu/cm^3 Oe), magnetization (emu/cm^3) and accessible linear range (T = 10E4 Oe)

% Logarithmic maxes
minflux = 4E-12; maxflux = 1E-06;
minmag = 0.5; maxmag = 1E+04; dmag = 1;

% Constant - we will SET energy TO BE THE CONSTANT TO GET FROM OUR PRODUCT TO
% THE ENERGY IN A MEANINGFUL UNIT. For example, to get from cgs to SI
% susceptibility, need to multiply be 4pi; for energy, need to divide by 2
% times the permeability constant
energy = 4*pi/(2*12.57E-07);
tesla = 4*pi*10^(-4); % constant to convert magnetization in emu/cm^3 to tesla

% Set pointsize
FontSize = 14;
pointsize = 125;
lw = 40; % linewidth
col = [20, 20, 20]/255; % set color


% Counter for labeling
count = 0;

%%NPs
% Parameter import
% They are all rare-earths (Red) nanomaterials ('o')
shape = 'o';
dens_Dy = 4737181.002; dens_Gd = 5304308.305; dens_Ho = 6805527.637; dens_Er = 5137506.158; 
magn_Dy = 1.37; magn_Gd = 1.38; magn_Ho = 1.92; magn_Er = 1.42;

% Dy2O3
info = 'Dy_2O_3, Er_2O_3, Gd_2O_3 NP'; %info = int2str(count); count=count+1; 
color = DefaultGreen; 
scatter(dens_Dy,magn_Dy, pointsize, color, 'filled', shape, 'LineWidth',lw)
hold all
text(dens_Dy*0.17, magn_Dy*dmag*0.75, info, 'FontSize', FontSize,'fontweight','bold','Color',col)

% Gd2O3
info = 'Gd_2O_3 NP'; %info = int2str(count); count=count+1; 
color = DefaultOrange; 
scatter(dens_Gd,magn_Gd, pointsize, color, 'filled', shape, 'LineWidth',lw)
hold all

% Ho2O3
info = 'Ho_2O_3 NP'; %info = int2str(count); count=count+1; 
color = DefaultBlue; 
scatter(dens_Ho,magn_Ho, pointsize, color, 'filled', shape, 'LineWidth',lw)
hold all
text(dens_Ho*.3, magn_Ho*dmag*0.98, info, 'FontSize', FontSize,'fontweight','bold','Color',col)

% Er2O3
info = 'Er_2O_3 NP'; %info = int2str(count); count=count+1; 
color = DefaultCrimson; 
scatter(dens_Er,magn_Er, pointsize, color, 'filled', shape, 'LineWidth',lw)
hold all

% Bhavani 2017, Synthesis of high saturation magnetic iron oxide nanomaterials via low temperature hydrothermal method
% lin units: T. mag units: emu/cm^3. sus units: volume susceptibility (cgs)
%info = 'Fe_3O_4 NP (Bhavani 2017)'; %info = int2str(count); count=count+1; 
%color = Black; 
%sus = .388; mag = 532; lin = .2; shape = 'o';
%scatter(lin*lin*sus*energy, mag*tesla, pointsize, color, shape)
%hold all
%text(lin*lin*sus*energy*0.6, mag*tesla*dmag*1.35, info, 'FontSize', FontSize)


% Ho2O3 nanostructured film, current work, Trepka 2020
info = 'Ho_2O_3 TF (Trepka 2020)'; %info = int2str(count); count=count+1; 
color = DefaultBlue; 
%info = '1'; % label both dots with this one
sus = 0.008625; mag = 1.64E+03; lin = 14; shape = 'o';
% energy is from maximizing python code; magnetization is from 4 K
scatter(lin*lin*sus*energy, mag*tesla, pointsize, color, shape, 'LineWidth',lw)
hold all
text(lin*lin*sus*energy*0.11, mag*tesla*dmag*1.2, info, 'FontSize', FontSize,'Color',col)

% CoO hollow NP, Zhang 2015, Controllable fabrication and magnetic properties of double-shell cobalt oxides hollow particles
info = 'CoO NP (Zhang 2015)'; %info = int2str(count); count=count+1; 
color = Black; 
sus = 1.9E-03; mag = 1.9E+01; lin = 0.2; shape = 'o';
scatter(lin*lin*sus*energy, mag*tesla, pointsize, color, shape, 'LineWidth',lw)
hold all
text(lin*lin*sus*energy*1.1, mag*tesla*dmag*1.1, info, 'FontSize', FontSize,'Color',col)

% MnxCo3O4 Crystallites, Naveen 2014, Tailoring structural, optical and magnetic properties of spinel type cobalt oxide (Co3O4) by manganese doping
%info = 'Mn{0.45}Co_3O_4 NS (Naveen 2014)'; %info = int2str(count); count=count+1; 
%color = Black; 
%sus = 3.05E-04; mag = 1.2; lin = 0.8; shape = 'o';
%scatter(lin*lin*sus*energy, mag*tesla, pointsize, color, shape)
%hold all
%text(lin*lin*sus*energy*1.1, mag*tesla*dmag*1.1, info, 'FontSize', FontSize)

% Dy2O3 Thin Film, Tamm 2014, Dysprosium oxide and dysprosium-oxide-doped
% titanium oxide thin films grown by atomic layer deposition
info = 'Dy_2O_3 TF (Tamm 2014)'; %info = int2str(count); count=count+1; 
color = DefaultGreen; 
sus = 1.5E-03; mag = 5.36; lin = 2.5; shape = 'o';
scatter(lin*lin*sus*energy, mag*tesla, pointsize, color, shape, 'LineWidth',lw)
hold all
text(lin*lin*sus*energy*1.1, mag*tesla*dmag*1.1, info, 'FontSize', FontSize,'Color',col)

% Fe3O4 microspheres, Deng 2005, Monodisperse Magnetic Single-Crystal Ferrite Microspheres
info = 'Fe_3O_4 NP (Deng 2005)';% info = int2str(count); count=count+1; 
color = Black; 
sus = .62; mag = 372; lin = .05; shape = 'o';
scatter(lin*lin*sus*energy, mag*tesla, pointsize, color, shape, 'LineWidth',lw)
hold all
text(lin*lin*sus*energy*1.2, mag*tesla*dmag*0.95, info, 'FontSize', FontSize,'Color',col)

% gamma-Fe2O3 NP, Woo 2004, Easy Synthesis and Magnetic Properties of Iron Oxide Nanoparticles
info = 'Fe_2O_3 NP (Woo 2004)'; %info = int2str(count); count=count+1; 
color = Black; 
sus = .17; mag = 220; lin = .20; shape = 'o';
scatter(lin*lin*sus*energy, mag*tesla, pointsize, color, shape, 'LineWidth',lw)
hold all
text(lin*lin*sus*energy*1.1, mag*tesla*dmag*1.1, info, 'FontSize', FontSize,'Color',col)

% Fe2O3 Fe3O4 mixture nanocube,  Martinez-Boubeta 2013, LearningfromNaturetoImprovetheHeat Generation of Iron-Oxide Nanoparticles forMagnetic Hyperthermia Applications
info = 'Fe_3O_4 NP (Martinez-Boubeta 2013)'; %info = int2str(count); count=count+1; 
color = Black; 
sus = 1.04; mag = 524; lin = .01; shape = 'o';
scatter(lin*lin*sus*energy, mag*tesla, pointsize, color, shape, 'LineWidth',lw)
hold all
text(lin*lin*sus*energy*0.75, mag*tesla*dmag*1.35, info, 'FontSize', FontSize,'Color',col)

% Fe3O4 NP,  Kemp 2016, Monodisperse Magnetite Nanoparticles with Nearly
% Ideal Saturation Magnetization
info = 'Fe_3O_4 NP (Kemp 2016)'; %info = int2str(count); count=count+1; 
color = Black; sus = 6.3; mag = 414; lin = .005; shape = 'o';
scatter(lin*lin*sus*energy, mag*tesla, pointsize, color, shape, 'LineWidth',lw)
hold all
text(lin*lin*sus*energy*0.6, mag*tesla*dmag*0.75, info, 'FontSize', FontSize,'Color',col)

%  La0.72Ca0.25MnOz Thin Films, Chahara 1993
% Magnetoresistance in magnetic manganese oxide with intrinsic
% antiferromagnetic spin structure
info = 'LaCaMnO TF (Chahara 1993)'; %info = int2str(count); count=count+1; 
color = DefaultPurple; 
sus = .16; mag = 400; lin = .1; shape = 'o';
scatter(lin*lin*sus*energy, mag*tesla, pointsize, color, shape, 'LineWidth',lw)
hold all
text(lin*lin*sus*energy*0.6, mag*tesla*dmag*1.3, info, 'FontSize', FontSize,'Color',col)

%  Mn2O3 Mn3O4 NP, Thota 2009
% Formation and magnetic behavior of manganese oxide nanoparticles
info = 'Mn_2O_3 NP (Thota 2009)'; %info = int2str(count); count=count+1; 
color = Black; 
sus = 5.85E-4; mag = 41; lin = 14; shape = 'o';
scatter(lin*lin*sus*energy, mag*tesla, pointsize, color, shape, 'LineWidth',lw)
hold all
text(lin*lin*sus*energy*1.1, mag*tesla*dmag*1.1, info, 'FontSize', FontSize,'Color',col)

%  Mn2O3 Mn3O4 NP, Thota 2009
% Formation and magnetic behavior of manganese oxide nanoparticles
info = 'Mn_3O_4 NP (Thota 2009)'; %info = int2str(count); count=count+1; 
color = Black; 
sus = .0583; mag = 218.7; lin = .25; shape = 'o';
scatter(lin*lin*sus*energy, mag*tesla, pointsize, color, shape, 'LineWidth',lw)
hold all
text(lin*lin*sus*energy*0.75, mag*tesla*dmag*0.75, info, 'FontSize', FontSize,'Color',col)

%  Mn3O4 NP (Shin 2009)
% Hollow Manganese Oxide Nanoparticles as Multifunctional Agents for Magnetic Resonance Imaging and Drug Delivery
info = 'Mn_3O_4 NP (Shin 2009)'; %info = int2str(count); count=count+1; 
color = Black; 
sus = 2.6E-3; mag = 58; lin = 1; shape = 'o';
scatter(lin*lin*sus*energy, mag*tesla, pointsize, color, shape, 'LineWidth',lw)
hold all
text(lin*lin*sus*energy*1.1, mag*tesla*dmag*1.1, info, 'FontSize', FontSize,'Color',col)

%  Nd2O3-Gd2O3 thin film (Mele 2009)
% Synthesis, structure, and magnetic properties in the Nd2O3-Gd2O3 mixed
% system synthesized at 1200C
info = 'NdO/GdO TF (Mele 2009)'; %info = int2str(count); count=count+1; 
color = DefaultOrange; 
sus = 3.4E-3; mag = 238; lin = 14; shape = 'o';
scatter(lin*lin*sus*energy, mag*tesla, pointsize, color, shape, 'LineWidth',lw)
hold all
text(lin*lin*sus*energy*0.25, mag*tesla*dmag*1.3, info, 'FontSize', FontSize,'Color',col)


%  TiO nanostructured thin film (Wei 2009)
% Magnetism of TiO and TiO2Nanoclusters 
%info = 'TiO NS (Wei 2009)'; %info = int2str(count); count=count+1; 
%color = Black; 
%sus = .04; mag = 12.32; lin = 0.025; shape = 'o';
%scatter(lin*lin*sus*energy, mag*tesla, pointsize, color, shape)
%hold all
%text(lin*lin*sus*energy*1.1, mag*tesla*dmag*1.1, info, 'FontSize', FontSize)

% Ho2O3/TiO2 TF (Kukli 2014)
info = 'Ho_2O_3/TiO_2 TF (Kukli 2014)'; %info = int2str(count); count=count+1; 
color = DefaultBlue; 
sus = .0955; mag = 179; lin = .125; shape = 'o';
scatter(lin*lin*sus*energy, mag*tesla, pointsize, color, shape, 'LineWidth',lw)
hold all
text(lin*lin*sus*energy*0.06, mag*tesla*dmag*0.9, info, 'FontSize', FontSize,'Color',col)


% Ho2O3 NW (Lee 2018)
% Paramagnetic Ho2O3 nanowires, nano-square sheets, and nanoplates 
% Note - this was a high-temperature measurement
info = 'Ho_2O_3 NW (Lee 2018)'; %info = int2str(count); count=count+1; 
color = DefaultBlue; 
sus = .002; mag = 139; lin = 14; shape = 'o';
scatter(lin*lin*sus*energy, mag*tesla, pointsize, color, shape, 'LineWidth',lw)
hold all
text(lin*lin*sus*energy*0.5, mag*tesla*dmag*0.75, info, 'FontSize', FontSize,'Color',col)

% Fe (Crangle 1971)
% The magnetization of pure iron and nickel (4K measurements)
info = 'Fe Bulk (Crangle 1971)'; %info = int2str(count); count=count+1; 
color = Black; 
sus = 60; mag = 1745; lin = .003; shape = 'd';
scatter(lin*lin*sus*energy, mag*tesla, pointsize, color, shape, 'LineWidth',lw)
hold all
text(lin*lin*sus*energy*1.1, mag*tesla*dmag*1.1, info, 'FontSize', FontSize,'Color',col)

% Ni bulk (Crangle 1971)
% The magnetization of pure iron and nickel (4K measurements)
info = 'Ni Bulk (Crangle 1971)'; %info = int2str(count); count=count+1; 
color = Black; 
sus = 2.5; mag = 522; lin = .1; shape = 'd';
scatter(lin*lin*sus*energy, mag*tesla, pointsize, color, shape, 'LineWidth',lw)
hold all
text(lin*lin*sus*energy*1.1, mag*tesla*dmag*1.1, info, 'FontSize', FontSize,'Color',col)

% Dy NW (Mamin 2012)
% High field-gradient dysprosium tips for magnetic resonance force microscopy
info = 'Dy nanopillar (Mamin 2012)'; %info = int2str(count); count=count+1; 
color = DefaultGreen; 
sus = .8; mag = 2.39E+3; lin = 0.1; shape = 'o';
scatter(lin*lin*sus*energy, mag*tesla, pointsize, color, shape, 'LineWidth',lw)
hold all
text(lin*lin*sus*energy*1.2, mag*tesla*dmag*1, info, 'FontSize', FontSize,'Color',col)

% Set global plotting parameters
set(gca,'FontSize',22,'LineWidth',LineWidth);
set(gca, 'XScale', 'log')
set(gca, 'YScale', 'log')
pbaspect([1.618 1 1])
ylim([5E-3,4E0])
xlim([3E2,1.2E7])
%xlim([minflux,maxflux]);
%ylim([minmag,maxmag]);
xlabel('Linearity of magnetic energy density (J/m^3)');
% Magnetization at H = 7 T
ylabel('Achievable magnetization (T)'); 
box on

fh = figure(1); % returns the handle to the figure object
set(fh,'Units','Inches');
set(fh, 'color', 'white'); % sets the color to white 
set(gcf, 'PaperPosition', [0 0 12 7.75]) % make paper larger
print(gcf, 'meritfig.png', '-dpng', '-r300' ) % save 300 dpi file
