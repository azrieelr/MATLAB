function result = optimumpoints(x, choice, epsilon)
point_list = [x];
index = 1;
switch choice
    case 1
        while 1
            grad = -grad_func(x(1), x(2));
            if norm(grad) <= epsilon || index == 100
                break
            end
            x = x + rootfinder(x(1), x(2), grad(1), grad(2))*grad;
            print = [num2str(index), 'th iteration: x = [', num2str(x(1)), ' ', num2str(x(2)), ']'];
            disp(print);
            index = index + 1;
            point_list = [point_list; x];
        end
    case 2
        d = [];
        norm_grad_before = [];
        while 1
            if isempty(d)
                d = grad_func(x(1), x(2));
                norm_grad_before = norm(d);
            else
                norm_grad = norm(grad_func(x(1), x(2)));
                d = -grad_func(x(1), x(2)) + (norm_grad/norm_grad_befor)^2*d;
                norm_grad_before = norm_grad;
            end
            x = x + d;
            print = [num2str(index), 'th iteration: x = [', num2str(x(1)), ' ', num2str(x(2)), ']'];
            disp(print);
            if norm(d) <= epsilon || index == 100
                break
            end
            index = index + 1;
            point_list = [point_list; x];
        end
    case 3
        while 1
            grad = grad_func(x(1), x(2));
            if norm(grad) <= epsilon || index == 100
                break
            end
            x = x - traspose(hesian_inverse(x(1), x(2))*transpose(grad_func(x(1), x(2))));
            print = [num2str(index), 'th iteration : x = [', num2str(x(1)), ' ', num2str(x(2)), ']'];
            disp(print);
            index = index + 1;
            point_list = [point_list; x];
        end
end
result = point_List;
end
        
        
                
                