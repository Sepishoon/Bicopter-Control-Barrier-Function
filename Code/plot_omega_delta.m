%% --- Omega1 (RPM) ---
figure;
plot(out.tout, out.omega1_lqr.Data, 'r-', 'MarkerSize', 12, 'LineWidth', 2.5); hold on;
plot(out.tout, out.omega1_cbf.Data, 'b--', 'MarkerSize', 12, 'LineWidth', 2.5);

ax = gca; ax.FontSize = 16; ax.FontName = 'Times New Roman'; ax.LineWidth = 1.2;
set(gcf, 'Color', 'White');

xlabel('Time (s)', 'Interpreter', 'latex', 'FontSize', 18, 'FontName','Times New Roman');
ylabel('$\Omega_1$ (RPM)', 'Interpreter', 'latex', 'FontSize', 18, 'FontName','Times New Roman');
legend({'$\Omega_{1,LQR}$','$\Omega_{1,CBF}$'}, 'Interpreter','latex','FontSize',14,'FontName','Times New Roman','Location','northeast');
grid on;

%% --- Omega2 (RPM) ---
figure;
plot(out.tout, out.omega2_lqr.Data, 'r-', 'MarkerSize', 12, 'LineWidth', 2.5); hold on;
plot(out.tout, out.omega2_cbf.Data, 'b--', 'MarkerSize', 12, 'LineWidth', 2.5);

ax = gca; ax.FontSize = 16; ax.FontName = 'Times New Roman'; ax.LineWidth = 1.2;
set(gcf, 'Color', 'White');

xlabel('Time (s)', 'Interpreter', 'latex', 'FontSize', 18, 'FontName','Times New Roman');
ylabel('$\Omega_2$ (RPM)', 'Interpreter', 'latex', 'FontSize', 18, 'FontName','Times New Roman');
legend({'$\Omega_{2,LQR}$','$\Omega_{2,CBF}$'}, 'Interpreter','latex','FontSize',14,'FontName','Times New Roman','Location','northeast');
grid on;

%% --- Delta1 (deg) ---
figure;
plot(out.tout, out.delta1_lqr.Data, 'r-', 'MarkerSize', 12, 'LineWidth', 2.5); hold on;
plot(out.tout, out.delta1_cbf.Data, 'b--', 'MarkerSize', 12, 'LineWidth', 2.5);

ax = gca; ax.FontSize = 16; ax.FontName = 'Times New Roman'; ax.LineWidth = 1.2;
set(gcf, 'Color', 'White');

xlabel('Time (s)', 'Interpreter', 'latex', 'FontSize', 18, 'FontName','Times New Roman');
ylabel('$\delta_1$ (deg)', 'Interpreter', 'latex', 'FontSize', 18, 'FontName','Times New Roman');
legend({'$\delta_{1,LQR}$','$\delta_{1,CBF}$'}, 'Interpreter','latex','FontSize',14,'FontName','Times New Roman','Location','northeast');
grid on;

%% --- Delta2 (deg) ---
figure;
plot(out.tout, out.delta2_lqr.Data, 'r-', 'MarkerSize', 12, 'LineWidth', 2.5); hold on;
plot(out.tout, out.delta2_cbf.Data, 'b--', 'MarkerSize', 12, 'LineWidth', 2.5);

ax = gca; ax.FontSize = 16; ax.FontName = 'Times New Roman'; ax.LineWidth = 1.2;
set(gcf, 'Color', 'White');

xlabel('Time (s)', 'Interpreter', 'latex', 'FontSize', 18, 'FontName','Times New Roman');
ylabel('$\delta_2$ (deg)', 'Interpreter', 'latex', 'FontSize', 18, 'FontName','Times New Roman');
legend({'$\delta_{2,LQR}$','$\delta_{2,CBF}$'}, 'Interpreter','latex','FontSize',14,'FontName','Times New Roman','Location','northeast');
grid on;