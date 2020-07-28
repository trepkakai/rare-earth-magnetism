%%File Notes

%Run NPChi before running
%All generated chi values are in cgs units (dyne cm/g) 
%To convert cgs to other cgs or SI, see the section about conversions 

%% Plot settings
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

%% %Import Variables
er_field_oe_4k = [0.00E+00 1.00E+03 2.00E+03 3.00E+03 4.00E+03 5.00E+03 5.00E+03 7.50E+03 1.00E+04 1.25E+04 1.50E+04 1.75E+04 2.00E+04 2.00E+04 2.50E+04 3.00E+04 3.50E+04 4.00E+04 4.50E+04 5.00E+04 5.50E+04 6.00E+04 6.50E+04 7.00E+04 7.00E+04 6.50E+04 6.00E+04 5.50E+04 5.00E+04 4.50E+04 4.00E+04 3.50E+04 3.00E+04 2.50E+04 2.00E+04 2.00E+04 1.75E+04 1.50E+04 1.25E+04 1.00E+04 7.50E+03 5.00E+03 5.00E+03 4.00E+03 3.00E+03 2.00E+03 0.00E+00 0.00E+00 -1.00E+03 -2.00E+03 -3.00E+03 -4.00E+03 -5.00E+03 -5.00E+03 -7.50E+03 -1.00E+04 -1.25E+04 -1.50E+04 -1.75E+04 -2.00E+04 -2.00E+04 -2.50E+04 -3.00E+04 -3.50E+04 -4.00E+04 -4.50E+04 -5.00E+04 -5.50E+04 -6.00E+04 -6.50E+04 -7.00E+04 -7.00E+04 -6.50E+04 -6.00E+04 -5.50E+04 -5.00E+04 -4.50E+04];
er_moment_emuperg_4k = [8.10E-02 5.40E+00 1.05E+01 1.53E+01 1.97E+01 2.44E+01 2.41E+01 3.52E+01 4.58E+01 5.55E+01 6.48E+01 7.32E+01 8.09E+01 8.11E+01 9.42E+01 1.05E+02 1.13E+02 1.20E+02 1.23E+02 1.25E+02 1.26E+02 1.29E+02 1.29E+02 1.30E+02 1.29E+02 1.31E+02 1.27E+02 1.29E+02 1.25E+02 1.23E+02 1.20E+02 1.13E+02 1.05E+02 9.41E+01 8.06E+01 8.05E+01 7.28E+01 6.45E+01 5.53E+01 4.54E+01 3.48E+01 2.37E+01 2.37E+01 1.91E+01 1.44E+01 9.98E+00 -8.15E-02 -8.15E-02 -5.22E+00 -1.03E+01 -1.51E+01 -2.00E+01 -2.41E+01 -2.41E+01 -3.53E+01 -4.60E+01 -5.58E+01 -6.50E+01 -7.34E+01 -8.11E+01 -8.11E+01 -9.44E+01 -1.05E+02 -1.12E+02 -1.18E+02 -1.23E+02 -1.24E+02 -1.27E+02 -1.29E+02 -1.30E+02 -1.31E+02 -1.29E+02 -1.29E+02 -1.29E+02 -1.25E+02 -1.25E+02 -1.23E+02];

er_field_oe_rt = [0.00E+00 1.00E+03 2.00E+03 3.00E+03 4.00E+03 5.00E+03 5.00E+03 7.50E+03 1.00E+04 1.25E+04 1.50E+04 1.75E+04 2.00E+04 2.00E+04 2.50E+04 3.00E+04 3.50E+04 4.00E+04 4.50E+04 5.00E+04 5.50E+04 6.00E+04 6.50E+04 7.00E+04 7.00E+04 6.50E+04 6.00E+04 5.50E+04 5.00E+04 4.50E+04 4.00E+04 3.50E+04 3.00E+04 2.50E+04 2.00E+04 2.00E+04 1.75E+04 1.50E+04 1.25E+04 1.00E+04 7.50E+03 5.00E+03 5.00E+03 4.00E+03 3.00E+03 2.00E+03 1.00E+03 0.00E+00 0.00E+00 -1.00E+03 -2.00E+03 -3.00E+03 -4.00E+03 -5.00E+03 -5.00E+03 -7.50E+03 -1.00E+04 -1.25E+04 -1.50E+04 -1.75E+04 -2.00E+04 -2.00E+04 -2.50E+04 -3.00E+04 -3.50E+04 -4.00E+04 -4.50E+04 -5.00E+04 -5.50E+04 -6.00E+04 -6.50E+04 -7.00E+04 -7.00E+04 -6.50E+04 -6.00E+04 -5.50E+04 -5.00E+04 -4.50E+04 -4.00E+04 -3.50E+04 -3.00E+04 -2.50E+04 -2.00E+04 -2.00E+04 -1.75E+04 -1.50E+04 -1.25E+04 -1.00E+04 -7.50E+03 -5.00E+03 -5.00E+03 -4.00E+03 -3.00E+03 -2.00E+03 -1.00E+03 0.00E+00];
er_moment_emuperg_rt = [6.34E-04 1.97E-01 3.91E-01 5.88E-01 7.82E-01 9.76E-01 9.77E-01 1.46E+00 1.95E+00 2.43E+00 2.92E+00 3.41E+00 3.90E+00 3.90E+00 4.86E+00 5.85E+00 6.83E+00 7.85E+00 8.79E+00 9.70E+00 1.07E+01 1.16E+01 1.25E+01 1.34E+01 1.34E+01 1.25E+01 1.16E+01 1.07E+01 9.70E+00 8.77E+00 7.80E+00 6.80E+00 5.82E+00 4.86E+00 3.89E+00 3.88E+00 3.40E+00 2.91E+00 2.43E+00 1.94E+00 1.46E+00 9.76E-01 9.75E-01 7.81E-01 6.00E-01 3.91E-01 1.97E-01 -2.21E-03 -2.50E-03 -1.99E-01 -3.92E-01 -5.88E-01 -7.82E-01 -9.77E-01 -9.78E-01 -1.46E+00 -1.95E+00 -2.44E+00 -2.91E+00 -3.37E+00 -3.88E+00 -3.88E+00 -4.86E+00 -5.86E+00 -6.86E+00 -7.83E+00 -8.81E+00 -9.75E+00 -1.07E+01 -1.17E+01 -1.25E+01 -1.34E+01 -1.34E+01 -1.25E+01 -1.16E+01 -1.07E+01 -9.81E+00 -8.78E+00 -7.79E+00 -6.80E+00 -5.83E+00 -4.87E+00 -3.89E+00 -3.89E+00 -3.40E+00 -2.92E+00 -2.43E+00 -1.95E+00 -1.47E+00 -9.79E-01 -9.76E-01 -7.80E-01 -5.86E-01 -3.90E-01 -1.98E-01 3.10E-03];

er_temp_k = [2.00 7.01E+00 1.20E+01 1.70E+01 2.20E+01 2.70E+01 3.20E+01 3.70E+01 4.20E+01 4.70E+01 5.20E+01 5.70E+01 6.20E+01 6.70E+01 7.20E+01 7.70E+01 8.20E+01 8.70E+01 9.21E+01 9.71E+01 1.02E+02 1.07E+02 1.12E+02 1.17E+02 1.22E+02 1.27E+02 1.32E+02 1.37E+02 1.42E+02 1.47E+02 1.52E+02 1.57E+02 1.62E+02 1.67E+02 1.72E+02 1.77E+02 1.82E+02 1.87E+02 1.92E+02 1.97E+02 2.02E+02 2.07E+02 2.12E+02 2.17E+02 2.22E+02 2.27E+02 2.32E+02 2.37E+02 2.42E+02 2.47E+02 2.52E+02 2.57E+02 2.62E+02 2.67E+02 2.72E+02 2.77E+02 2.82E+02 2.87E+02 2.92E+02 2.97E+02];
er_moment_emuperg_temp = [1.27E+02 1.31E+02 1.20E+02 1.09E+02 9.87E+01 8.94E+01 8.26E+01 7.61E+01 7.01E+01 6.51E+01 6.02E+01 5.62E+01 5.21E+01 4.91E+01 4.62E+01 4.38E+01 4.18E+01 3.97E+01 3.78E+01 3.60E+01 3.43E+01 3.29E+01 3.16E+01 3.03E+01 2.91E+01 2.81E+01 2.72E+01 2.61E+01 2.52E+01 2.45E+01 2.38E+01 2.31E+01 2.25E+01 2.20E+01 2.14E+01 2.12E+01 2.06E+01 2.01E+01 1.95E+01 1.92E+01 1.87E+01 1.83E+01 1.79E+01 1.75E+01 1.71E+01 1.68E+01 1.66E+01 1.62E+01 1.59E+01 1.56E+01 1.54E+01 1.50E+01 1.47E+01 1.45E+01 1.42E+01 1.39E+01 1.37E+01 1.35E+01 1.33E+01 1.30E+01];

gd_field_oe_4k = [0.00E+00 1.00E+03 2.00E+03 3.00E+03 4.00E+03 5.00E+03 5.00E+03 7.50E+03 1.00E+04 1.25E+04 1.50E+04 1.75E+04 2.00E+04 2.00E+04 2.50E+04 3.00E+04 3.50E+04 4.00E+04 4.50E+04 5.00E+04 5.50E+04 6.00E+04 6.50E+04 7.00E+04 7.00E+04 6.50E+04 6.00E+04 5.50E+04 5.00E+04 4.50E+04 4.00E+04 3.50E+04 3.00E+04 2.00E+04 2.00E+04 1.75E+04 1.50E+04 1.25E+04 1.00E+04 7.50E+03 5.00E+03 5.00E+03 4.00E+03 3.00E+03 2.00E+03 1.00E+03 0.00E+00 0.00E+00 -1.00E+03 -2.00E+03 -3.00E+03 -4.00E+03 -5.00E+03 -5.00E+03 -7.50E+03 -1.00E+04 -1.25E+04 -1.50E+04 -1.75E+04 -2.00E+04 -2.00E+04 -2.50E+04 -3.00E+04 -3.50E+04 -4.00E+04 -4.50E+04 -5.00E+04 -5.50E+04 -6.00E+04 -6.50E+04 -7.00E+04 -7.00E+04 -6.50E+04 -6.00E+04 -5.50E+04 -5.00E+04 -4.50E+04 -4.00E+04 -3.50E+04 -3.00E+04 -2.50E+04 -2.00E+04 -2.00E+04 -1.75E+04 -1.50E+04 -1.25E+04 -1.00E+04 -7.50E+03 -5.00E+03 -5.00E+03 -4.00E+03 -3.00E+03 -2.00E+03 -1.00E+03 0.00E+00];
gd_moment_emuperg_4k = [-2.83E-03 2.83E+00 5.73E+00 8.68E+00 1.17E+01 1.47E+01 1.48E+01 2.21E+01 2.94E+01 3.66E+01 4.30E+01 4.96E+01 5.58E+01 5.58E+01 6.74E+01 7.57E+01 8.57E+01 9.54E+01 1.04E+02 1.10E+02 1.19E+02 1.26E+02 1.33E+02 1.38E+02 1.38E+02 1.33E+02 1.26E+02 1.19E+02 1.12E+02 1.04E+02 9.48E+01 8.55E+01 7.55E+01 5.64E+01 5.64E+01 5.02E+01 4.38E+01 3.70E+01 3.00E+01 2.27E+01 1.53E+01 1.53E+01 1.22E+01 9.24E+00 6.16E+00 3.07E+00 -4.94E-02 -4.98E-02 -3.13E+00 -6.23E+00 -9.34E+00 -1.25E+01 -1.55E+01 -1.56E+01 -2.32E+01 -3.03E+01 -3.74E+01 -4.43E+01 -5.06E+01 -5.68E+01 -5.68E+01 -6.72E+01 -7.77E+01 -8.78E+01 -9.15E+01 -1.00E+02 -1.08E+02 -1.16E+02 -1.22E+02 -1.29E+02 -1.34E+02 -1.34E+02 -1.28E+02 -1.23E+02 -1.17E+02 -1.09E+02 -1.00E+02 -9.24E+01 -8.33E+01 -7.40E+01 -6.38E+01 -5.22E+01 -5.22E+01 -4.64E+01 -4.05E+01 -3.43E+01 -2.78E+01 -2.11E+01 -1.42E+01 -1.42E+01 -1.20E+01 -8.96E+00 -6.07E+00 -3.06E+00 5.28E-02];

gd_field_oe_rt = [0.00E+00 1.00E+03 2.00E+03 3.00E+03 4.00E+03 5.00E+03 5.00E+03 7.50E+03 1.00E+04 1.25E+04 1.50E+04 1.75E+04 2.00E+04 2.00E+04 2.50E+04 3.00E+04 3.50E+04 4.00E+04 4.50E+04 5.00E+04 5.50E+04 6.00E+04 6.50E+04 7.00E+04 7.00E+04 6.50E+04 6.00E+04 5.50E+04 5.00E+04 4.50E+04 4.00E+04 3.50E+04 3.00E+04 2.50E+04 2.00E+04 2.00E+04 1.75E+04 1.50E+04 1.25E+04 1.00E+04 7.50E+03 5.00E+03 5.00E+03 4.00E+03 3.00E+03 2.00E+03 1.00E+03 0.00E+00 0.00E+00 -1.00E+03 -2.00E+03 -3.00E+03 -4.00E+03 -5.00E+03 -5.00E+03 -7.50E+03 -1.00E+04 -1.25E+04 -1.50E+04 -1.75E+04 -2.00E+04 -2.00E+04 -2.50E+04 -3.00E+04 -3.50E+04 -4.00E+04 -4.50E+04 -5.00E+04 -5.50E+04 -6.00E+04 -6.50E+04 -7.00E+04 -7.00E+04 -6.50E+04 -6.00E+04 -5.50E+04 -5.00E+04 -4.50E+04 -4.00E+04 -3.50E+04 -3.00E+04 -2.50E+04 -2.00E+04 -2.00E+04 -1.75E+04 -1.50E+04 -1.25E+04 -1.00E+04 -7.50E+03 -5.00E+03 -5.00E+03 -4.00E+03 -3.00E+03 -2.00E+03 -1.00E+03 0.00E+00];
gd_moment_emuperg_rt = [1.87E-04 1.10E-01 2.17E-01 3.26E-01 4.33E-01 5.42E-01 5.43E-01 8.14E-01 1.08E+00 1.36E+00 1.63E+00 1.90E+00 2.17E+00 2.17E+00 2.71E+00 3.26E+00 3.79E+00 4.34E+00 4.89E+00 5.43E+00 5.97E+00 6.51E+00 7.07E+00 7.53E+00 7.53E+00 7.01E+00 6.47E+00 5.93E+00 5.39E+00 4.86E+00 4.32E+00 3.78E+00 3.24E+00 2.70E+00 2.16E+00 2.17E+00 1.90E+00 1.63E+00 1.36E+00 1.09E+00 8.19E-01 5.49E-01 5.45E-01 4.36E-01 3.28E-01 2.32E-01 1.28E-01 -1.56E-03 -3.13E-03 -1.09E-01 -2.17E-01 -3.26E-01 -4.35E-01 -5.42E-01 -5.43E-01 -8.15E-01 -1.09E+00 -1.36E+00 -1.63E+00 -1.90E+00 -2.17E+00 -2.17E+00 -2.72E+00 -3.26E+00 -3.80E+00 -4.35E+00 -4.90E+00 -5.44E+00 -5.98E+00 -6.53E+00 -7.07E+00 -7.56E+00 -7.55E+00 -7.03E+00 -6.48E+00 -5.94E+00 -5.39E+00 -4.86E+00 -4.32E+00 -3.79E+00 -3.25E+00 -2.71E+00 -2.17E+00 -2.18E+00 -1.91E+00 -1.64E+00 -1.36E+00 -1.09E+00 -8.14E-01 -5.49E-01 -5.45E-01 -4.36E-01 -3.29E-01 -2.18E-01 -1.09E-01 8.84E-04];

gd_temp_k = [2.00 7.00E+00 1.20E+01 1.70E+01 2.20E+01 2.70E+01 3.20E+01 3.70E+01 4.20E+01 4.70E+01 5.20E+01 5.70E+01 6.20E+01 6.70E+01 7.20E+01 7.70E+01 8.20E+01 8.71E+01 9.21E+01 9.71E+01 1.02E+02 1.07E+02 1.12E+02 1.17E+02 1.22E+02 1.27E+02 1.32E+02 1.37E+02 1.42E+02 1.47E+02 1.52E+02 1.57E+02 1.62E+02 1.67E+02 1.72E+02 1.77E+02 1.82E+02 1.87E+02 1.92E+02 1.97E+02 2.02E+02 2.07E+02 2.12E+02 2.17E+02 2.22E+02 2.27E+02 2.32E+02 2.37E+02 2.42E+02 2.47E+02 2.52E+02 2.57E+02 2.62E+02 2.67E+02 2.72E+02 2.77E+02 2.82E+02 2.87E+02 2.92E+02 2.97E+02];
gd_moment_emuperg_temp = [1.48E+02 1.24E+02 1.01E+02 8.47E+01 7.25E+01 6.40E+01 5.62E+01 5.08E+01 4.58E+01 4.20E+01 3.87E+01 3.54E+01 3.28E+01 3.07E+01 2.89E+01 2.72E+01 2.58E+01 2.45E+01 2.33E+01 2.22E+01 2.12E+01 2.03E+01 1.94E+01 1.86E+01 1.79E+01 1.71E+01 1.66E+01 1.60E+01 1.55E+01 1.49E+01 1.44E+01 1.40E+01 1.36E+01 1.32E+01 1.28E+01 1.24E+01 1.21E+01 1.18E+01 1.14E+01 1.12E+01 1.09E+01 1.06E+01 1.03E+01 1.01E+01 9.90E+00 9.65E+00 9.43E+00 9.24E+00 9.03E+00 8.83E+00 8.65E+00 8.49E+00 8.33E+00 8.17E+00 8.02E+00 7.88E+00 7.74E+00 7.60E+00 7.47E+00 7.35E+00];

dys_field_oe_4k = [7.00E+04 6.50E+04 6.00E+04 5.50E+04 5.00E+04 4.50E+04 4.00E+04 3.50E+04 3.00E+04 2.50E+04 2.00E+04 2.00E+04 1.75E+04 1.50E+04 1.25E+04 1.00E+04 7.50E+03 5.00E+03 5.00E+03 4.00E+03 3.00E+03 2.00E+03 1.00E+03 0.00E+00 0.00E+00 -1.00E+03 -2.00E+03 -3.00E+03 -4.00E+03 -5.00E+03 -5.00E+03 -7.50E+03 -1.00E+04 -1.25E+04 -1.50E+04 -1.75E+04 -2.00E+04 -2.00E+04 -2.50E+04 -3.00E+04 -3.50E+04 -4.00E+04 -4.50E+04 -5.00E+04 -5.50E+04 -6.00E+04 -6.50E+04 -7.00E+04 -7.00E+04 -6.50E+04 -6.00E+04 -5.50E+04 -5.00E+04 -4.50E+04 -4.00E+04 -3.50E+04 -3.00E+04 -2.50E+04 -2.00E+04 -2.00E+04 -1.75E+04 -1.50E+04 -1.25E+04 -1.00E+04 -7.50E+03 -5.00E+03 -5.00E+03 -4.00E+03 -3.00E+03 -2.00E+03 -1.00E+03 0.00E+00 0.00E+00 1.00E+03 2.00E+03 3.00E+03 4.00E+03 5.00E+03 5.00E+03 7.50E+03 1.00E+04 1.25E+04 1.50E+04 1.75E+04 2.00E+04 2.00E+04 2.50E+04 3.00E+04 3.50E+04 4.00E+04 4.50E+04 5.00E+04 5.50E+04 6.00E+04 6.50E+04 7.00E+04];
dys_moment_emuperg_4k = [1.38E+02 1.38E+02 1.35E+02 1.33E+02 1.31E+02 1.28E+02 1.25E+02 1.18E+02 1.12E+02 1.01E+02 8.97E+01 8.80E+01 7.90E+01 7.15E+01 6.17E+01 5.24E+01 4.13E+01 2.86E+01 2.83E+01 2.34E+01 1.76E+01 1.19E+01 5.96E+00 -8.49E-02 -8.65E-02 -5.96E+00 -1.18E+01 -1.75E+01 -2.32E+01 -2.88E+01 -2.89E+01 -4.07E+01 -5.16E+01 -6.25E+01 -6.91E+01 -7.87E+01 -8.36E+01 -8.42E+01 -9.71E+01 -1.08E+02 -1.16E+02 -1.20E+02 -1.26E+02 -1.29E+02 -1.33E+02 -1.35E+02 -1.38E+02 -1.40E+02 -1.40E+02 -1.39E+02 -1.36E+02 -1.33E+02 -1.31E+02 -1.28E+02 -1.23E+02 -1.19E+02 -1.11E+02 -1.02E+02 -8.90E+01 -8.83E+01 -7.96E+01 -7.19E+01 -6.21E+01 -5.27E+01 -4.12E+01 -2.90E+01 -2.85E+01 -2.31E+01 -1.78E+01 -1.21E+01 -5.99E+00 9.24E-02 9.40E-02 6.02E+00 1.19E+01 1.75E+01 2.32E+01 2.88E+01 2.89E+01 4.06E+01 5.21E+01 6.21E+01 6.96E+01 7.90E+01 8.33E+01 8.52E+01 9.63E+01 1.08E+02 1.15E+02 1.22E+02 1.26E+02 1.30E+02 1.32E+02 1.35E+02 1.37E+02 1.40E+02];

dys_field_oe_rt = [7.00E+04 6.50E+04 6.00E+04 5.50E+04 5.00E+04 4.50E+04 4.00E+04 3.50E+04 3.00E+04 2.50E+04 2.00E+04 2.00E+04 1.75E+04 1.50E+04 1.25E+04 1.00E+04 7.50E+03 5.00E+03 5.00E+03 4.00E+03 3.00E+03 2.00E+03 1.00E+03 0.00E+00 0.00E+00 -1.00E+03 -2.00E+03 -3.00E+03 -4.00E+03 -5.00E+03 -5.00E+03 -7.50E+03 -1.00E+04 -1.25E+04 -1.50E+04 -1.75E+04 -2.00E+04 -2.00E+04 -2.50E+04 -3.00E+04 -3.50E+04 -4.00E+04 -4.50E+04 -5.00E+04 -5.50E+04 -6.00E+04 -6.50E+04 -7.00E+04 -7.00E+04 -6.50E+04 -6.00E+04 -5.50E+04 -5.00E+04 -4.50E+04 -4.00E+04 -3.50E+04 -2.50E+04 -2.00E+04 -2.00E+04 -1.75E+04 -1.50E+04 -1.25E+04 -1.00E+04 -7.50E+03 -5.00E+03 -5.00E+03 -4.00E+03 -3.00E+03 -2.00E+03 -1.00E+03 0.00E+00 0.00E+00 1.00E+03 2.00E+03 3.00E+03];
dys_moment_emuperg_rt = [1.66E+01 1.55E+01 1.43E+01 1.31E+01 1.19E+01 1.07E+01 9.54E+00 8.34E+00 7.18E+00 6.00E+00 4.81E+00 4.81E+00 4.21E+00 3.61E+00 3.01E+00 2.41E+00 1.81E+00 1.21E+00 1.20E+00 9.61E-01 7.26E-01 4.84E-01 2.64E-01 -2.80E-03 -3.27E-03 -2.46E-01 -4.89E-01 -7.31E-01 -9.74E-01 -1.22E+00 -1.22E+00 -1.83E+00 -2.42E+00 -3.03E+00 -3.64E+00 -4.24E+00 -4.84E+00 -4.84E+00 -6.05E+00 -7.27E+00 -8.48E+00 -9.68E+00 -1.09E+01 -1.20E+01 -1.32E+01 -1.44E+01 -1.55E+01 -1.67E+01 -1.66E+01 -1.55E+01 -1.43E+01 -1.32E+01 -1.20E+01 -1.08E+01 -9.66E+00 -8.46E+00 -6.06E+00 -4.85E+00 -4.84E+00 -4.24E+00 -3.64E+00 -3.03E+00 -2.42E+00 -1.82E+00 -1.21E+00 -1.21E+00 -9.67E-01 -7.28E-01 -4.85E-01 -2.41E-01 3.65E-03 3.66E-03 2.48E-01 4.90E-01 7.33E-01];

dys_temp_k = [2.00 7.00E+00 1.20E+01 1.70E+01 2.20E+01 2.70E+01 3.20E+01 3.70E+01 4.20E+01 4.70E+01 5.20E+01 5.70E+01 6.20E+01 6.70E+01 7.20E+01 7.70E+01 8.20E+01 8.70E+01 9.20E+01 9.70E+01 1.02E+02 1.07E+02 1.12E+02 1.17E+02 1.22E+02 1.27E+02 1.32E+02 1.37E+02 1.42E+02 1.47E+02 1.52E+02 1.57E+02 1.62E+02 1.67E+02 1.72E+02 1.77E+02 1.82E+02 1.87E+02 1.92E+02 1.97E+02 2.02E+02 2.07E+02 2.12E+02 2.17E+02 2.22E+02 2.27E+02 2.32E+02 2.37E+02 2.42E+02 2.47E+02 2.52E+02 2.57E+02 2.62E+02 2.67E+02 2.72E+02 2.77E+02 2.82E+02 2.87E+02 2.92E+02 2.97E+02];
dys_moment_emuperg_temp = [1.40E+02 1.38E+02 1.30E+02 1.20E+02 1.13E+02 1.04E+02 9.36E+01 8.75E+01 8.22E+01 7.50E+01 7.06E+01 6.72E+01 6.32E+01 5.89E+01 5.62E+01 5.32E+01 5.06E+01 4.85E+01 4.58E+01 4.36E+01 4.22E+01 4.04E+01 3.89E+01 3.77E+01 3.62E+01 3.51E+01 3.40E+01 3.28E+01 3.18E+01 3.10E+01 3.02E+01 2.93E+01 2.84E+01 2.77E+01 2.70E+01 2.63E+01 2.57E+01 2.51E+01 2.45E+01 2.39E+01 2.33E+01 2.28E+01 2.23E+01 2.18E+01 2.15E+01 2.10E+01 2.06E+01 2.02E+01 1.97E+01 1.94E+01 1.90E+01 1.87E+01 1.84E+01 1.81E+01 1.78E+01 1.75E+01 1.73E+01 1.70E+01 1.67E+01 1.64E+01];

ho_field_oe_4k = [7.00E+04 6.50E+04 6.00E+04 5.50E+04 5.00E+04 4.50E+04 4.00E+04 3.50E+04 3.00E+04 2.50E+04 2.00E+04 2.00E+04 1.75E+04 1.50E+04 1.25E+04 1.00E+04 7.50E+03 5.00E+03 5.00E+03 4.00E+03 3.00E+03 2.00E+03 1.00E+03 0.00E+00 0.00E+00 -1.00E+03 -2.00E+03 -3.00E+03 -4.00E+03 -5.00E+03 -5.00E+03 -7.50E+03 -1.00E+04 -1.25E+04 -1.50E+04 -1.75E+04 -2.00E+04 -2.00E+04 -2.50E+04 -3.00E+04 -3.50E+04 -4.00E+04 -4.50E+04 -5.00E+04 -5.50E+04 -6.00E+04 -6.50E+04 -7.00E+04 -7.00E+04 -6.50E+04 -6.00E+04 -5.50E+04 -5.00E+04 -4.50E+04 -4.00E+04 -3.50E+04 -3.00E+04 -2.50E+04 -2.00E+04 -2.00E+04 -1.75E+04 -1.50E+04 -1.25E+04 -1.00E+04 -7.50E+03 -5.00E+03 -5.00E+03 -4.00E+03 -3.00E+03 -2.00E+03 -1.00E+03 0.00E+00 0.00E+00 1.00E+03 2.00E+03 3.00E+03 4.00E+03 5.00E+03 5.00E+03 7.50E+03 1.00E+04 1.25E+04 1.50E+04 1.75E+04 2.00E+04 2.00E+04 2.50E+04 3.00E+04 3.50E+04 4.00E+04 4.50E+04 5.00E+04 5.50E+04 6.00E+04 6.50E+04 7.00E+04];
ho_moment_emuperg_4k = [1.82E+02 1.77E+02 1.76E+02 1.72E+02 1.69E+02 1.64E+02 1.58E+02 1.51E+02 1.41E+02 1.30E+02 1.14E+02 1.14E+02 1.04E+02 9.33E+01 8.04E+01 6.74E+01 5.30E+01 3.66E+01 3.64E+01 2.92E+01 2.24E+01 1.51E+01 7.45E+00 -1.12E-01 -1.12E-01 -7.56E+00 -1.50E+01 -2.24E+01 -2.95E+01 -3.65E+01 -3.65E+01 -5.31E+01 -6.83E+01 -8.06E+01 -9.29E+01 -1.03E+02 -1.12E+02 -1.13E+02 -1.28E+02 -1.42E+02 -1.51E+02 -1.60E+02 -1.65E+02 -1.69E+02 -1.73E+02 -1.76E+02 -1.79E+02 -1.80E+02 -1.78E+02 -1.79E+02 -1.79E+02 -1.72E+02 -1.70E+02 -1.64E+02 -1.59E+02 -1.51E+02 -1.41E+02 -1.32E+02 -1.18E+02 -1.17E+02 -1.07E+02 -9.61E+01 -8.43E+01 -7.06E+01 -5.57E+01 -3.92E+01 -3.88E+01 -3.13E+01 -2.37E+01 -1.57E+01 -7.67E+00 1.22E-01 1.21E-01 7.65E+00 1.51E+01 2.25E+01 2.97E+01 3.66E+01 3.67E+01 5.31E+01 6.86E+01 8.06E+01 9.21E+01 1.04E+02 1.14E+02 1.15E+02 1.30E+02 1.40E+02 1.49E+02 1.56E+02 1.62E+02 1.67E+02 1.72E+02 1.76E+02 1.78E+02 1.80E+02];

ho_field_oe_rt = [7.00E+04 6.50E+04 6.00E+04 5.50E+04 5.00E+04 4.50E+04 4.00E+04 3.00E+04 2.50E+04 2.00E+04 2.00E+04 1.75E+04 1.50E+04 1.25E+04 1.00E+04 5.00E+03 5.00E+03 4.00E+03 3.00E+03 2.00E+03 1.00E+03 0.00E+00 0.00E+00 -1.00E+03 -2.00E+03 -3.00E+03 -4.00E+03 -5.00E+03 -5.00E+03 -7.50E+03 -1.00E+04 -1.25E+04 -1.75E+04 -2.00E+04 -2.00E+04 -2.50E+04 -3.00E+04 -3.50E+04 -4.00E+04 -4.50E+04 -5.00E+04 -5.50E+04 -6.00E+04 -6.50E+04 -7.00E+04 -7.00E+04 -6.50E+04 -6.00E+04 -5.50E+04 -5.00E+04 -4.50E+04 -4.00E+04 -3.00E+04 -2.50E+04 -2.00E+04 -2.00E+04 -1.75E+04 -1.50E+04 -1.25E+04 -1.00E+04 -7.50E+03 -5.00E+03 -5.00E+03 -4.00E+03 -3.00E+03 -2.00E+03 -1.00E+03 0.00E+00 0.00E+00 1.00E+03 2.00E+03 3.00E+03 4.00E+03 5.00E+03 5.00E+03 7.50E+03 1.00E+04 1.25E+04 1.50E+04 1.75E+04 2.00E+04 2.00E+04 2.50E+04 3.00E+04 3.50E+04 4.00E+04 5.00E+04 5.50E+04 6.00E+04 6.50E+04 7.00E+04];
ho_moment_emuperg_rt = [1.68E+01 1.56E+01 1.43E+01 1.31E+01 1.19E+01 1.07E+01 9.53E+00 7.22E+00 6.02E+00 4.81E+00 4.81E+00 4.21E+00 3.61E+00 3.01E+00 2.40E+00 1.20E+00 1.21E+00 9.68E-01 7.26E-01 4.83E-01 2.41E-01 -3.09E-03 -3.13E-03 -2.48E-01 -4.93E-01 -7.37E-01 -9.81E-01 -1.23E+00 -1.23E+00 -1.84E+00 -2.43E+00 -3.04E+00 -4.26E+00 -4.87E+00 -4.86E+00 -6.09E+00 -7.31E+00 -8.53E+00 -9.75E+00 -1.10E+01 -1.22E+01 -1.34E+01 -1.46E+01 -1.58E+01 -1.70E+01 -1.68E+01 -1.57E+01 -1.44E+01 -1.33E+01 -1.21E+01 -1.09E+01 -9.69E+00 -7.30E+00 -6.09E+00 -4.87E+00 -4.86E+00 -4.26E+00 -3.65E+00 -3.04E+00 -2.43E+00 -1.82E+00 -1.22E+00 -1.21E+00 -9.76E-01 -7.32E-01 -4.87E-01 -2.42E-01 3.44E-03 3.45E-03 2.49E-01 4.92E-01 7.37E-01 9.81E-01 1.23E+00 1.23E+00 1.84E+00 2.43E+00 3.04E+00 3.65E+00 4.26E+00 4.87E+00 4.86E+00 6.08E+00 7.32E+00 8.52E+00 9.74E+00 1.22E+01 1.34E+01 1.46E+01 1.58E+01 1.69E+01];

ho_temp_k = [2.00 7.00E+00 1.20E+01 1.70E+01 2.20E+01 2.70E+01 3.20E+01 3.70E+01 4.20E+01 4.70E+01 5.20E+01 5.70E+01 6.20E+01 6.70E+01 7.20E+01 7.70E+01 8.20E+01 8.71E+01 9.21E+01 9.71E+01 1.02E+02 1.07E+02 1.12E+02 1.17E+02 1.22E+02 1.27E+02 1.32E+02 1.37E+02 1.42E+02 1.47E+02 1.52E+02 1.57E+02 1.62E+02 1.67E+02 1.72E+02 1.77E+02 1.82E+02 1.87E+02 1.92E+02 1.97E+02 2.02E+02 2.07E+02 2.12E+02 2.17E+02 2.22E+02 2.27E+02 2.32E+02 2.37E+02 2.42E+02 2.47E+02 2.52E+02 2.57E+02 2.62E+02 2.67E+02 2.72E+02 2.77E+02 2.82E+02 2.87E+02 2.92E+02 2.97E+02];
ho_moment_emuperg_temp = [1.78E+02 1.77E+02 1.62E+02 1.47E+02 1.32E+02 1.20E+02 1.08E+02 9.90E+01 9.11E+01 8.37E+01 7.78E+01 7.37E+01 6.98E+01 6.39E+01 6.02E+01 5.63E+01 5.37E+01 5.09E+01 4.83E+01 4.62E+01 4.41E+01 4.26E+01 4.09E+01 3.91E+01 3.76E+01 3.64E+01 3.51E+01 3.39E+01 3.28E+01 3.20E+01 3.10E+01 3.00E+01 2.91E+01 2.83E+01 2.76E+01 2.68E+01 2.62E+01 2.58E+01 2.51E+01 2.44E+01 2.39E+01 2.34E+01 2.29E+01 2.24E+01 2.19E+01 2.15E+01 2.10E+01 2.06E+01 2.02E+01 2.00E+01 1.94E+01 1.91E+01 1.87E+01 1.83E+01 1.80E+01 1.78E+01 1.75E+01 1.72E+01 1.68E+01 1.66E+01];



%% %%Erbium Hysteresis

xdata1 = er_field_oe_4k;
ydata1 = er_moment_emuperg_4k;
xdata2 = er_field_oe_rt;
ydata2 = er_moment_emuperg_rt;
x0 = [130,1E-4];

fun4ker = @(x,xdata1)x(1)*tanh(x(2)*xdata1+1E-8); %tanh fit, https://en.wikipedia.org/wiki/Superparamagnetism; better than langevin fit
[erx1,erresnorm,~,erexitflag,eroutput]=lsqcurvefit(fun4ker,x0,xdata1,ydata1);

funrter = @(x,xdata2)x(1)*(coth(x(2)*xdata2+1E-8)-1./(x(2)*xdata2+ 1E-8)); %langevin fit
[erx2,erresnorm2,~,erexitflag2,eroutput2]=lsqcurvefit(funrter,x0,xdata2,ydata2);

funrtX = @(x,xdata2)x(1)*xdata2; %linear fit to extract chi
[erX,erresnormerX,~,erexitflagerX,eroutputerX]=lsqcurvefit(funrtX,x0,xdata2,ydata2);

chi_er_rt = erX(1); %units: dyne cm/g, cgs

chi_er_4k = erx1(1)*erx1(2)/3; %units: dyne cm/g, cgs

fieldser = linspace(-70000,70000);



%% %%Erbium Temp

xdata3 = er_temp_k(2:end);
ydata3 = er_moment_emuperg_temp(2:end);

funer = @(x,xdata3)x(1)*(coth(x(2)./xdata3)-xdata3/(x(2))); %langevin fit is way better

x0 = [130,30];
x3=lsqcurvefit(funer,x0,xdata3,ydata3);

tempser = linspace(0,297);


%% %%Gd Hysteresis 

xdata4 = gd_field_oe_4k;
ydata4 = gd_moment_emuperg_4k;
xdata5 = gd_field_oe_rt;
ydata5 = gd_moment_emuperg_rt;
x0 = [200,4E-5];

fun4kgd = @(x,xdata4)x(1)*(coth(x(2)*xdata4+1E-8)-1./(x(2)*xdata4+ 1E-8)); %langevin fit
[x4,resnorm4,~,exitflag4,output4]=lsqcurvefit(fun4kgd,x0,xdata4,ydata4);

funrtgd = @(x,xdata5)x(1)*(coth(x(2)*xdata5+1E-8)-1./(x(2)*xdata5+ 1E-8)); %langevin fit
[x5,resnorm5,~,exitflag5,output5]=lsqcurvefit(funrtgd,x0,xdata5,ydata5);

funrtXgd = @(x,xdata5)x(1)*xdata5; %linear fit to extract chi
[gdX,gdresnormerX,~,gdexitflagerX,gdoutputerX]=lsqcurvefit(funrtXgd,x0,xdata5,ydata5);

chi_gd_rt = gdX(1); 
chi_gd_4k = x4(1)*x4(2)/3; %VALIDATE THIS by plotting simultaneously; it is NOT QUITE accurate 

fieldsgd = linspace(-70000,70000);


%% %%Gd Temp

xdata6 = gd_temp_k(2:end);
ydata6 = gd_moment_emuperg_temp(2:end);

fungd = @(x,xdata6)x(1)*(coth(x(2)./xdata6)-xdata6/x(2)); %langevin fit is way better

x0 = [150,40];
x6=lsqcurvefit(fungd,x0,xdata6,ydata6);

tempsgd = linspace(0,297);


%% %%Dys Hysteresis

xdata7 = dys_field_oe_4k;
ydata7 = dys_moment_emuperg_4k;
xdata8 = dys_field_oe_rt;
ydata8 = dys_moment_emuperg_rt;
x0 = [100,100];

fun4kdy = @(x,xdata7)x(1)*(coth(x(2)*xdata7+1E-8)-1./(x(2)*xdata7+ 1E-8)); %langevin fit
[x7,resnorm7,~,exitflag7,output7]=lsqcurvefit(fun4kdy,x0,xdata7,ydata7);

funrtdy = @(x,xdata8)x(1)*(coth(x(2)*xdata8+1E-8)-1./(x(2)*xdata8+ 1E-8)); %langevin fit
[x8,resnorm8,~,exitflag8,output8]=lsqcurvefit(funrtdy,x0,xdata8,ydata8);

funrtXdy = @(x,xdata8)x(1)*xdata8; %linear fit to extract chi
[dyX,dyresnormerX,~,dyexitflagerX,dyoutputerX]=lsqcurvefit(funrtXdy,x0,xdata8,ydata8);

chi_gd_rt = dyX(1); 
chi_dys_4k = x7(1)*x7(2)/3;

fieldsdy = linspace(-70000,70000);


%% %%Dys temp

xdata9 = dys_temp_k(2:end);
ydata9 = dys_moment_emuperg_temp(2:end);

fundy = @(x,xdata9)x(1)*(coth(x(2)./xdata9)-xdata9/x(2)); %langevin fit; tanh is abysmal

x0 = [140,90];
x9=lsqcurvefit(fundy,x0,xdata9,ydata9);

tempsdy = linspace(0,297);


%% %%Holmium Hysteresis

xdata10 = ho_field_oe_4k;
ydata10 = ho_moment_emuperg_4k;
xdata11 = ho_field_oe_rt;
ydata11 = ho_moment_emuperg_rt;
x0 = [100,100];

fun4kho = @(x,xdata10)x(1)*(coth(x(2)*xdata10+1E-8)-1./(x(2)*xdata10+ 1E-8)); %langevin fit
[x10,resnorm10,~,exitflag10,output10]=lsqcurvefit(fun4kho,x0,xdata10,ydata10);

funrtho = @(x,xdata11)x(1)*(coth(x(2)*xdata11+1E-8)-1./(x(2)*xdata11+ 1E-8)); %langevin fit
[x11,resnorm11,~,exitflag11,output11]=lsqcurvefit(fun4kho,x0,xdata11,ydata11);

fieldsho = linspace(-70000,70000);

funrtXho = @(x,xdata11)x(1)*xdata11; %linear fit to extract chi
[hoX,horesnormerX,~,hoexitflagerX,hooutputerX]=lsqcurvefit(funrtXho,x0,xdata11,ydata11);

%%  %%Holmium Temp

xdata12 = ho_temp_k(2:end);
ydata12 = ho_moment_emuperg_temp(2:end);

funho = @(x,xdata12)x(1)*(coth(x(2)./xdata12)-xdata12/x(2)); %langevin fit

x0 = [190,20];
x12=lsqcurvefit(funho,x0,xdata12,ydata12);

tempsho = linspace(0,297);

%% Tesla Conversion

%this is how you do it: 

%tesla = emu/g * density (g/cm^3)*4*pi*10^(-4)

%for there to be a linear relationship between the axes, we will need the
%magnetization to be in emu/cm^3, which is emu/g*density(g/cm^3)





%% Magnetic properties


figure(1)
subplot(4,1,4)

% New fits
fun4kdy_new = @(x)( 25.2*0.01165*.8714*4.777*(coth(4.777*0.672*(x/4))-1./(4.777*0.672*(x/4))) + 25.2*0.01165*10.65*(1-.8714)*(coth(10.65*.672*(x/4))-1./(10.65*.672*(x/4))) );
fun4kgd_new = @(x)( 24.6*0.01165*6.50*(coth(6.50*.2619*(x/4))-1./(6.50*.2619*(x/4))) );
fun4kho_new = @(x)( 26.8*0.01165*.69*5.657*(coth(5.657*.5356*(x/4))-1./(5.657*.5356*(x/4))) + 26.8*0.01165*(1-.69)*10.6*(coth(10.6*.5356*(x/4))-1./(10.6*.5356*(x/4))) );
fun4ker_new = @(x)( 27.2*0.01165*5.377*(coth(5.377*0.7058*(x/4))-1./(5.377*0.7058*(x/4))) );

%4K Plot
p4ker_fit = plot(fieldser/10000,fun4ker_new(fieldser/10000),'k-');
set(p4ker_fit,'LineWidth',MarkerLineWidth)
hold on
p4ker_data = scatter(er_field_oe_4k/10000,er_moment_emuperg_4k*8.64*4*pi*10^(-4),sz,'>'); %this converts emu/g to T
set(p4ker_data,'MarkerEdgeColor',DefaultCrimson,'MarkerFaceColor',White,'Linewidth',MarkerLineWidth,'MarkerFaceAlpha',0);
hold on
p4kgd_fit = plot(fieldsgd/10000,fun4kgd_new(fieldsgd/10000),'k-');
set(p4kgd_fit,'LineWidth',MarkerLineWidth)
hold on
p4kgd_data = scatter(gd_field_oe_4k/10000,gd_moment_emuperg_4k*7.41*4*pi*10^(-4),sz,'s'); 
set(p4kgd_data,'MarkerEdgeColor',DefaultOrange,'MarkerFaceColor',White,'Linewidth',MarkerLineWidth,'MarkerFaceAlpha',0);
hold on;
p4kdy_fit = plot(fieldsdy/10000,fun4kdy_new(fieldsdy/10000),'k-');
set(p4kdy_fit,'LineWidth',MarkerLineWidth)
hold on
p4kdy_data = scatter(dys_field_oe_4k/10000,dys_moment_emuperg_4k*7.80*4*pi*10^(-4),sz,'^');
set(p4kdy_data,'MarkerEdgeColor',DefaultGreen,'MarkerFaceColor',White,'Linewidth',MarkerLineWidth,'MarkerFaceAlpha',0);
hold on
p4kho_fit = plot(fieldsho/10000,fun4kho_new(fieldsho/10000),'k-');
set(p4kho_fit,'LineWidth',MarkerLineWidth)
hold on
p4kho_data = scatter(ho_field_oe_4k/10000,ho_moment_emuperg_4k*8.41*4*pi*10^(-4),sz,'o');
set(p4kho_data,'MarkerEdgeColor',DefaultBlue,'MarkerFaceColor',White,'Linewidth',MarkerLineWidth,'MarkerFaceAlpha',0);
hold on
xlabel('Applied Field (T)','Fontsize',fs)
xlim([-7,7])
xticks([-5 0 5])
ylabel('Magnetization (T)','Fontsize',fs)

yyaxis right
ylim([-1591 1591]) %convert tesla to emu/cm^3 by multiplying by 10^4/(4 pi)
ylabel('Magnetization (emu/cm^3)','Fontsize',fs)
yticks([-1591 -795.5 0 795.5 1591])
yticklabels({'-1600','-800','0','800','1600'}) %this level of error is <1% and acceptable, given we will include the alternative units in SI and also the full datasets
set(gca,'Fontsize',fs,'LineWidth',LineWidth);
ax = gca;
ax.YColor = 'k'; %Black
ax.XColor = 'k';
pbaspect([1.618 1 1])

% Fits (from fitting file)
funrter_new = @(x)1.11*( 27.2*0.01165*.6095*2.615*(coth(2.615*2*0.672*(x/295)+1E-12)-1./(2.615*2*0.672*(x/295)+ 1E-12)) + 27.2*0.01165*(1-.6095)*9.58*(coth(9.58*0.672*2*(x/295)+1E-12)-1./(9.58*0.672*2*(x/295)+ 1E-12)) );
funrtgd_new = @(x)1.09*( 24.6*0.01165*1*4.608*(coth(4.608*2*0.672*(x/295)+1E-12)-1./(4.608*2*0.672*(x/295)+ 1E-12)) );
funrtdy_new = @(x)1.09*( 25.2*0.01165*.6024*2.234*(coth(2.234*2*0.672*(x/295)+1E-12)-1./(2.234*2*0.672*(x/295)+ 1E-12)) + 25.2*0.01165*10.65*(1-.6024)*(coth(10.65*0.672*2*(x/295)+1E-12)-1./(10.65*0.672*2*(x/295)+ 1E-12))); 
funrtho_new = @(x)1.07*( 26.8*0.01165*.7278*5.279*(coth(5.279*0.672*2*(x/295)+1E-12)-1./(5.279*0.672*2*(x/295)+ 1E-12)) + 26.8*0.01165*(1-.7278)*10.6*(coth(10.6*0.672*2*(x/295)+1E-12)-1./(10.6*0.672*2*(x/295)+ 1E-12)) );


subplot(4,1,3)
prter_fit = plot(fieldser/10000,funrter_new(fieldser/10000),'k-');
set(prter_fit,'LineWidth',MarkerLineWidth)
hold on; 
prter_data = scatter(er_field_oe_rt/10000,er_moment_emuperg_rt*8.64*4*pi*10^(-4),sz,'>');
set(prter_data,'MarkerEdgeColor',DefaultCrimson,'MarkerFaceColor',White,'Linewidth',MarkerLineWidth,'MarkerFaceAlpha',0);
hold on; 
prtgd_fit = plot(fieldsgd/10000,funrtgd_new(fieldser/10000),'k-');
set(prtgd_fit,'LineWidth',MarkerLineWidth)
hold on; 
prtgd_data = scatter(gd_field_oe_rt/10000,gd_moment_emuperg_rt*7.41*4*pi*10^(-4),sz,'s');
set(prtgd_data,'MarkerEdgeColor',DefaultOrange,'MarkerFaceColor',White,'Linewidth',MarkerLineWidth,'MarkerFaceAlpha',0);
hold on; 
prtdy_fit = plot(fieldsdy/10000,funrtdy_new(fieldser/10000),'k-');
set(prtdy_fit,'LineWidth',MarkerLineWidth)
hold on;
prtdy_data = scatter(dys_field_oe_rt/10000,dys_moment_emuperg_rt*7.80*4*pi*10^(-4),sz,'^');
set(prtdy_data,'MarkerEdgeColor',DefaultGreen,'MarkerFaceColor',White,'Linewidth',MarkerLineWidth,'MarkerFaceAlpha',0);
hold on
prtho_fit = plot(fieldsho/10000,funrtho_new(fieldser/10000),'k-');
set(prtho_fit,'LineWidth',MarkerLineWidth)
hold on
prtho_data = scatter(ho_field_oe_rt/10000,ho_moment_emuperg_rt*8.41*4*pi*10^(-4),sz,'o');
set(prtho_data,'MarkerEdgeColor',DefaultBlue,'MarkerFaceColor',White,'Linewidth',MarkerLineWidth,'MarkerFaceAlpha',0);
hold on
xlabel('Applied Field (T)','Fontsize',fs)
xlim([-7,7])
xticks([-5 0 5])
ylabel('Magnetization (T)','Fontsize',fs)

yyaxis right
ylim([-159.1 159.1]) %convert tesla to emu/cm^3 by multiplying by 10^4/(4 pi)
ylabel('Magnetization (emu/cm^3)','Fontsize',fs)
yticks([-159.1 -79.55 0 79.55 159.1])
yticklabels({'160','-80','0','80','160'})
set(gca,'Fontsize',fs,'LineWidth',LineWidth);
ax = gca;
ax.YColor = 'k'; %Black
ax.XColor = 'k';
pbaspect([1.618 1 1])



subplot(4,1,2)

% Fits (from fitting file)
fundy_new = @(x)( 25.2*0.01165*.6734*3.137*(coth(3.137*1.495*(7./x))-1./(3.137*1.495*(7./x))) + 25.2*0.01165*10.65*(1-.6734)*(coth(10.65*1.495*(7./x))-1./(10.65*1.495*(7./x))) );
fungd_new = @(x)( 24.6*0.01165*.7494*3.788*(coth(3.788*1.107*(7./x))-1./(3.788*1.107*(7./x))) + 24.6*0.01165*7.94*(1-.7494)*(coth(7.94*1.107*(7./x))-1./(7.94*1.107*(7./x))) );
funho_new = @(x)( 26.8*0.01165*.6764*4.976*(coth(4.976*1.287*(7./x))-1./(4.976*1.287*(7./x))) + 26.8*0.01165*(1-.6764)*10.6*(coth(10.6*1.287*(7./x))-1./(10.6*1.287*(7./x))) );
funer_new = @(x)( 27.2*0.01165*.8524*4.22*(coth(4.22*1.892*(7./x))-1./(4.22*1.892*(7./x))) + 27.2*0.01165*(1-.8524)*9.58*(coth(9.58*1.892*(7./x))-1./(9.58*1.892*(7./x))) );

%Temp curves
er_temp_fit = plot(tempser,funer_new(tempser),'k-');
set(er_temp_fit,'LineWidth',MarkerLineWidth)
hold on;
er_temp_data = scatter(er_temp_k,er_moment_emuperg_temp*8.64*4*pi*10^(-4),sz,'>');
set(er_temp_data,'MarkerEdgeColor',DefaultCrimson,'MarkerFaceColor',White,'Linewidth',MarkerLineWidth,'MarkerFaceAlpha',0);
hold on
gd_temp_fit = plot(tempsgd,fungd_new(tempsgd),'k-');
set(gd_temp_fit,'LineWidth',MarkerLineWidth)
hold on
gd_temp_data = scatter(gd_temp_k,gd_moment_emuperg_temp*7.41*4*pi*10^(-4),sz,'s');
set(gd_temp_data,'MarkerEdgeColor',DefaultOrange,'MarkerFaceColor',White,'Linewidth',MarkerLineWidth,'MarkerFaceAlpha',0);
hold on
dy_temp_fit = plot(tempsdy,fundy_new(tempsdy),'k-');
set(dy_temp_fit,'LineWidth',MarkerLineWidth)
hold on
dy_temp_data = scatter(dys_temp_k,dys_moment_emuperg_temp*7.80*4*pi*10^(-4),sz,'^');
set(dy_temp_data,'MarkerEdgeColor',DefaultGreen,'MarkerFaceColor',White,'Linewidth',MarkerLineWidth,'MarkerFaceAlpha',0);
hold on
ho_temp_fit = plot(tempsho,funho_new(tempsho),'k-');
set(ho_temp_fit,'LineWidth',MarkerLineWidth)
hold on
ho_temp_data = scatter(ho_temp_k,ho_moment_emuperg_temp*8.41*4*pi*10^(-4),sz,'o');
set(ho_temp_data,'MarkerEdgeColor',DefaultBlue,'MarkerFaceColor',White,'Linewidth',MarkerLineWidth,'MarkerFaceAlpha',0);
hold on
xlabel('Temperature (K)','Fontsize',fs)
ylabel('Magnetization (T)','Fontsize',fs)
ylim([0 2.05])
yticks([0 0.5 1 1.5 2])

yyaxis right
ylim([0 1587.2]) %convert tesla to emu/cm^3 by multiplying by 10^4/(4 pi)
yticks([0 396.8 396.8*2 396.8*3 396.8*4])
yticklabels({'0','400','800','1200','1600'})
ylabel('Magnetization (emu/cm^3)','Fontsize',fs)

set(gca,'Fontsize',fs,'LineWidth',LineWidth);
ax = gca;
ax.YColor = 'k'; %Black
ax.XColor = 'k';
pbaspect([1.618 1 1])


 % Define functions for fitted stuff
fun_chi_dy = @(x)( (x+12.18)/7.29 );
fun_chi_gd = @(x)( (x+6.11)/3.06 );
fun_chi_ho = @(x)( (x+7.44)/7.79 );
fun_chi_er = @(x)( (x+10.57)/6.49 );
ts = linspace(-20,300);

subplot(4,1,1)
  
 erfit = plot(ts,fun_chi_er(ts),'k-');
 set(erfit,'LineWidth',MarkerLineWidth)
 hold on
 gdfit = plot(ts,fun_chi_gd(ts),'k-');
 set(gdfit,'LineWidth',MarkerLineWidth)
 hold on
 dyfit = plot(ts,fun_chi_dy(ts),'k-');
 set(dyfit,'LineWidth',MarkerLineWidth)
 hold on
 hofit = plot(ts,fun_chi_ho(ts),'k-');
 set(hofit,'LineWidth',MarkerLineWidth)
 hold on 
 er = scatter(chi_er(:,1),1./(chi_er(:,2)*4*pi*8.64),sz,'>'); %'MarkerFaceColor','b'
 set(er,'MarkerEdgeColor',DefaultCrimson,'MarkerFaceColor',White,'Linewidth',MarkerLineWidth,'MarkerFaceAlpha',0);
 hold on
 gd = scatter(chi_gd(:,1),1./(chi_gd(:,2)*4*pi*7.41),sz,'s');
 set(gd,'MarkerEdgeColor',DefaultOrange,'MarkerFaceColor',White,'Linewidth',MarkerLineWidth,'MarkerFaceAlpha',0);
 hold on
 dy = scatter(chi_dy(:,1),1./(chi_dy(:,2)*4*pi*7.8),sz,'^');
 set(dy,'MarkerEdgeColor',DefaultGreen,'MarkerFaceColor',White,'Linewidth',MarkerLineWidth,'MarkerFaceAlpha',0);
 hold on
 ho = scatter(chi_ho(:,1),1./(chi_ho(:,2)*4*pi*8.41),sz,'o');
 set(ho,'MarkerEdgeColor',DefaultBlue,'MarkerFaceColor',White,'Linewidth',MarkerLineWidth,'MarkerFaceAlpha',0);
 hold on 
 leg = legend([dy gd ho er],{'Dy_2O_3','Gd_2O_3','Ho_2O_3','Er_2O_3'});
 set(leg,'Location', 'northwest','Fontsize',fs)
 set(leg, 'Box', 'off')
 %title('Curie-Weiss Plots')
 xlabel('Temperature (K)','Fontsize',fs)
 ylabel('\chi^{-1} (SI; cm^3/emu)','Fontsize',fs) 
 yticks([0 50 100])
 
 yyaxis right
 xlim([-20 300])
 xticks([-20 0 50 100 150 200 250 300])
 ylim([0 1257]) 
 yticks([0 628.5 1257])
 yticklabels({'0','630','1260'}) 
 ylabel('\chi^{-1} (cgs; cm^3/emu)','Fontsize',fs) 
 set(gca,'Fontsize',fs,'LineWidth',LineWidth);
 ax = gca;
 ax.YColor = 'k'; %Black
 ax.XColor = 'k';
 pbaspect([1.618 1 1])



%% Export the result

fh = figure(1); % returns the handle to the figure object
set(fh, 'color', 'white'); % sets the color to white 
set(gcf, 'PaperPosition', [0 0 12 27]) % make paper larger (go back to 27 if
% need to put chi graph back in 
print(gcf, 'magnetismpaper.png', '-dpng', '-r300' ) % save 300 dpi file
