inputRaw1 = csvread('Motor1_Suspenso_50Duty_input');
outputRaw1 = csvread('Motor1_Suspenso_50Duty_output');
input1 = (inputRaw1 .* (15/100));   %Mapping to voltage
output1 = (outputRaw1 .* (60 / 380));  %Maxon datasheet 380 rpm/V
ouutputRPM1 = (outputRaw1 .* 60);

inputRaw2 = csvread('Motor1_Ground_50Duty_input');
outputRaw2 = csvread('Motor1_Ground_50Duty_output');
input2 = (inputRaw2 .* (15/100));   %Mapping to voltage
output2 = (outputRaw2 .* (60 / 380));  %Maxon datasheet 380 rpm/V
ouutputRPM2 = (outputRaw2 .* 60);

inputRaw3 = csvread('Motor2_Suspenso_50Duty_input');
outputRaw3 = csvread('Motor2_Suspenso_50Duty_output');
input3 = (inputRaw3 .* (15/100));   %Mapping to voltage
output3 = (outputRaw3 .* (60 / 380));  %Maxon datasheet 380 rpm/V
ouutputRPM3 = (outputRaw3 .* 60);

inputRaw4 = csvread('Motor2_Ground_50Duty_input');
outputRaw4 = csvread('Motor2_Ground_50Duty_output');
input4 = (inputRaw4 .* (15/100));   %Mapping to voltage
output4 = (outputRaw4 .* (60 / 380));  %Maxon datasheet 380 rpm/V
ouutputRPM4 = (outputRaw4 .* 60);