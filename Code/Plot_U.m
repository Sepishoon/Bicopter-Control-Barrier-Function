figure;

% Plot LQR control input
plot(out.tout, out.uz_lqr, 'r-', 'MarkerSize', 12, 'LineWidth', 2.5); 
hold on;

% Plot CBF-modified control input
plot(out.tout, out.uz_cbf, 'b--', 'MarkerSize', 12, 'LineWidth', 2.5);

% Axes formatting (keep tick numbers at default size, just change font)
ax = gca;
ax.FontSize = 16;                 % same as your original code
ax.FontName = 'Times New Roman';  % match font
ax.LineWidth = 1.2;
set(gcf, 'Color', 'White');

% Labels (bigger font size in Times New Roman)
xlabel('Time (s)', 'Interpreter', 'latex', 'FontSize', 18, 'FontName','Times New Roman');
ylabel('Control input $u_z$', 'Interpreter', 'latex', 'FontSize', 18, 'FontName','Times New Roman');

% Legend (bigger font size in Times New Roman)
legend({'Nominal LQR input $u_{z,LQR}$', ...
        'CBF-safe input $u_{z,CBF}$'}, ...
       'Interpreter', 'latex', 'FontSize', 14, 'FontName','Times New Roman', 'Location','best');

grid on;