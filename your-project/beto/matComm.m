
% xs = x(~isnan(B{:,5}));
% ys = B{:,5}(~isnan(B{:,4}));
% yi = interp1(xs, ys, x, 'Linear');

%idx = ~any(isnan(B{:,5}),1);
%plot(x(idx),y(idx));
%nanmean(B{:,5})

% plot(x,y,'b','LineWidth',2)
% hold on
% plot(x,yi,'r')

% set(hAx(1),'XLim',[x(1) x(end)])
% set(hAx(2),'XLim',[x(1) x(end)])

% set(hAx(1),'XTick',1:20:size(B{:,4},1))
% set(hAx(2),'XTick',1:20:size(B{:,4},1))

% set(hAx(1),'XTickLabel',{B{1,3},B{20,3},B{end,3}})
% set(hAx(1),'XTickLabel',{0:25000:B{end,4}})

% xtickangle(90)

% h = ylabel('$\widetilde{\mathrm{G}}^{m}_{\alpha}\,(\beta^{m})^{\frac{1}{3}}$');
% set(h,'Interpreter','latex','FontSize',16);
% legend;
% set(h,'Interpreter','latex','FontSize',10);
% h = gca;
% set(h,'TickLabelInterpreter','latex');
% set(h,'FontSize',11);
% axis([45 135 -0.8 0.8]);

%plot()
%yyaxis right
%plot()