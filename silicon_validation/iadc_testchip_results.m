clear; close all;

data = dlmread('test.log', '\n', 2, 0)(1:end-1);
data = (data - 22500864/2) / (22500864/2) * 1.8;
plot(data)
ylim([-1.8 1.8])
yticks(-1.8:0.2:1.8+0.2)
xlabel("Samples")
ylabel("Input Differential Voltage (V)")
set(gca, "fontsize", 18)


