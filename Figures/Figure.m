% % Load the data from the .DAT file
% data = readmatrix('Fourier(10uF,0R,Audio).DAT');  % Automatically handles the comma delimiter
% 
% % Extract Frequency and Output Voltage columns
% frequency = data(:,1);  % First column is frequency (Hz)
% voltage = data(:,2);     % Second column is Vo (Output Voltage)
% 
% % Select only the last half of the data
% half_index = ceil(length(frequency) / 2);  % Find the midpoint index
% frequency = frequency(half_index:end);     % Keep only the last half of frequencies
% voltage = voltage(half_index:end);         % Keep only the last half of voltages
% 
% % Plotting the data
% figure;
% plot(frequency, voltage, '-o', 'LineWidth', 1.5, 'MarkerSize', 6, 'Color', [0.2, 0.6, 0.8]);
% xlabel('Frequency (Hz)');
% ylabel('Output Voltage (Vo)');
% title('Frequency vs. Output Voltage (Last Half)');
% grid on;


% Load the data from the first .DAT file
data1 = readmatrix('Fourier_220uF_Audio.DAT');  % Replace 'File1.DAT' with your first filename
frequency1 = data1(:,1);           % First column is frequency (Hz)
voltage1 = data1(:,2);              % Second column is Vo (Output Voltage)

% Load the data from the second .DAT file
data2 = readmatrix('Fourier(10uF,0R,Audio).DAT');  % Replace 'File2.DAT' with your second filename
frequency2 = data2(:,1);
voltage2 = data2(:,2);

data3 = readmatrix('Fourier_100uF_Audio.DAT');  % Replace 'File2.DAT' with your second filename
frequency3 = data3(:,1);
voltage3 = data3(:,2);

% Plotting both datasets on the same figure
figure;
plot(frequency1, voltage1, '-o', 'LineWidth', 1.5, 'MarkerSize', 6, 'Color', [0.2, 0.6, 0.8]);
hold on;
plot(frequency2, voltage2, '-s', 'LineWidth', 1.5, 'MarkerSize', 6, 'Color', [0.8, 0.2, 0.6]);
hold on;
plot(frequency3, voltage3, '-s', 'LineWidth', 1.5, 'MarkerSize', 6, 'Color', [0.9, 0.6, 0.6]);
hold off;

xlabel('Frequency (Hz)');
ylabel('Output Voltage (Vo)');
title('Frequency vs. Output Voltage Plot for Two Datasets');
legend('220uF', '10uF', '100uF');
grid on;
