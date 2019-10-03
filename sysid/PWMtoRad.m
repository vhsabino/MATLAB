function [Rad] = PWMtoRad(data)
    a1_pos = 0.5216;
    a0_pos = 8.973;
    a1_neg = 0.5188;
    a0_neg = -8.572;
    for i = 1:(length(data))
        if (data(i,1) > -8 && data(i,1) < 8)
            Rad(i,1) = 0;
        elseif data(i,1) <= -8
            Rad(i,1) = (data(i,1) - a0_neg) / a1_neg;
        else
            Rad(i,1) = (data(i,1) - a0_pos) / a1_pos;
        end
    end
end