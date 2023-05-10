%% Multithreading

% Define the number of Fibonacci numbers to compute
n = 10;

% Define a function to compute the nth Fibonacci number
fib = @(n) fib_helper(n);

% Create a parallel pool with 2 workers
pool = gcp('nocreate');
% Compute the Fibonacci sequence using multithreading
fibs = zeros(n,1);
parfor i = 1:n
    fibs(i) = fib(i);
end

% Display the Fibonacci sequence
disp(fibs);


% Define a helper function to compute the nth Fibonacci number recursively
function result = fib_helper(n)
    if n <= 1
        result = n;
    else
        % Compute the nth Fibonacci number recursively
        result = fib_helper(n-1) + fib_helper(n-2);
    end
end




