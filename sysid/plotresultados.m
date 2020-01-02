tile = tiledlayout(2,2);
ax1 = nexttile;
plot(ax1,t,M1_read,'lineWidth', 1.5);
title(ax1,'Motor 1');
grid(ax1,'on')
ax2 = nexttile;
plot(ax2,t,M2_read,'lineWidth', 1.5);
title(ax2,'Motor 2');
grid(ax2,'on')
ax3 = nexttile;
plot(ax3,t,M3_read,'lineWidth', 1.5);
title(ax3,'Motor 3');
grid(ax3,'on')
ax4 = nexttile;
plot(ax4,t,M4_read,'lineWidth', 1.5);
linkaxes([ax1,ax2,ax3,ax4],'x');
title(ax4,'Motor 4');
grid(ax4,'on')

title(tile,'REAL-TIME SPEED MONITORING');
xlabel(tile,'time (s)');
ylabel(tile,'speed (rad/s)');