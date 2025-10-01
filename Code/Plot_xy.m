% --- Figure 1: x response (Template Style) ---
figure;
plot(out.tout, out.x_LQR, 'r-', 'MarkerSize', 12, 'LineWidth', 2.5); 
hold on;
yline(5, 'b--', 'LineWidth', 2.5); % Desired x=5 line

% Axes formatting
ylim([0 5.5]);   
yticks(1:5);
ax = gca;
ax.FontSize = 16;                 
ax.FontName = 'Times New Roman';  
ax.LineWidth = 1.2;               
set(gcf, 'Color', 'White');

% Labels
xlabel('Time (s)', 'Interpreter', 'latex', 'FontSize', 18, 'FontName','Times New Roman');
ylabel('BiCopter $x$ (m)', 'Interpreter', 'latex', 'FontSize', 18, 'FontName','Times New Roman');

% Legend
legend({'Actual $x(t)$', 'Desired $x=5$ m'}, ...
       'Interpreter','latex', 'FontSize', 14, 'FontName','Times New Roman', 'Location','best');
grid on;


% --- Figure 2: y response (Template Style) ---
figure;
plot(out.tout, out.y_LQR, 'r-', 'MarkerSize', 12, 'LineWidth', 2.5); 
hold on;
yline(4, 'b--', 'LineWidth', 2.5); % Desired y=4 line

% Axes formatting
ylim([0 4.5]);   
ax = gca;
ax.FontSize = 16;                 
ax.FontName = 'Times New Roman';  
ax.LineWidth = 1.2;               
set(gcf, 'Color', 'White');

% Labels
xlabel('Time (s)', 'Interpreter', 'latex', 'FontSize', 18, 'FontName','Times New Roman');
ylabel('BiCopter $y$ (m)', 'Interpreter', 'latex', 'FontSize', 18, 'FontName','Times New Roman');

% Legend
legend({'Actual $y(t)$', 'Desired $y=4$ m'}, ...
       'Interpreter','latex', 'FontSize', 14, 'FontName','Times New Roman', 'Location','best');
grid on;