function [filtered_blackbox_output] = filter_blackbox_output(blackbox_output)
    windowSize = 5;
    transfer_function = [(1/windowSize)*ones(1,windowSize) 1];
    filtered_blackbox_output = filter(transfer_function(1), ...
        transfer_function(2), blackbox_output);
end