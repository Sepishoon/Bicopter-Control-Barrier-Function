figure;

% Plot actual BiCopter response (with CBF)
p1 = plot(out.tout, out.h_LQR, 'Color', [0, 0.6, 0], 'MarkerSize', 12, 'LineWidth', 2.5); 
hold on;

% Plot BiCopter response without CBF
p2 = plot(out.tout, out.h_LQR1, 'r-', 'MarkerSize', 12, 'LineWidth', 2.5);

% Desired reference (8 m)
p3 = yline(8, 'b--', 'LineWidth', 2.5);

% Safety barrier (7 m)
p4 = yline(7, 'k-.', 'LineWidth', 2.5);

% Axes formatting
ylim([0 8.5]);   
ax = gca;
ax.FontSize = 16;                 % tick labels
ax.FontName = 'Times New Roman';  % font style
ax.LineWidth = 1.2;               % normal axis borders
set(gcf, 'Color', 'White');

% Labels
xlabel('Time (s)', 'Interpreter', 'latex', 'FontSize', 18, 'FontName','Times New Roman');
ylabel('BiCopter height (m)', 'Interpreter', 'latex', 'FontSize', 18, 'FontName','Times New Roman');

% Legend (heights first, horizontal lines after)
legend([p1, p2, p3, p4], ...
       {'BiCopter''s height with CBF', ...
        'BiCopter''s height without CBF', ...
        'Desired height (reference)', ...
        'Safety barrier'}, ...
       'Interpreter','latex', 'FontSize', 14, 'FontName','Times New Roman', 'Location','best');

grid on;