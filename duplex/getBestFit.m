function [fitting,gof] = getBestFit(motorData, inputData, motorName)
%CREATEFIT1(M1_POS,IN_POS)
%  Create a fit.
%
%  Data for 'untitled fit 1' fit:
%      X Input : motorData
%      Y Output: inputData
%  Output:
%      fitresult : a fit object representing the fit.
%      gof : structure with goodness-of fit info.
%
%  See also FIT, CFIT, SFIT.

%  Auto-generated by MATLAB on 04-Sep-2019 16:40:44


%% Fit: 'untitled fit 1'.
[xData, yData] = prepareCurveData(motorData, inputData);

% Set up fittype and options.
ft = fittype( 'poly1' );
opts = fitoptions( 'Method', 'LinearLeastSquares' );
opts.Robust = 'Bisquare';

% Fit model to data.
[fitting, gof] = fit( xData, yData, ft, opts );

% Loop
fprintf('Testing %s: poly1',motorName);
bestPol = 1;
for i=2:7
        st = i;
        ft = ['poly' num2str(st)];
        pol = fittype( ft );
        fprintf(', poly%d',st);
        [tempFitting,tempGof] = fit(motorData, inputData, pol, opts);
        if (gof.sse - tempGof.sse) > 10
            [fitting,gof] = fit(motorData, inputData, pol, opts);
            bestPol = st;
        end        
    end
fprintf('.\nFor %s, poly%d is better\n',motorName,bestPol);

% Create a figure for the plots.
figure( 'Name', 'Fitting Curve','WindowState','minimized');

title(motorName)
% Plot fit with data.
subplot( 2, 1, 1 );
h = plot( fitting, xData, yData, 'predobs' );
legend( h, 'inputData vs. motorData', 'untitled fit 1', 'Lower bounds (untitled fit 1)', 'Upper bounds (untitled fit 1)', 'Location', 'NorthEast' );
% Label axes
xlabel motorData
ylabel inputData
grid on

% Plot residuals.
subplot( 2, 1, 2 );
h = plot( fitting, xData, yData, 'residuals' );
legend( h, 'Fitting Curve', 'Zero Line', 'Location', 'NorthEast' );
% Label axes
xlabel Speed
ylabel PWM
grid on


