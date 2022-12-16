function [y,occurs,index] = arrayContain(A,x)
% contains searches for a value within an array and returns a logical answer.
% INPUTS:
% - A: The array to be searched
% - x: The value to be searched for
% OUTPUTS:
% - y: The answer. This will either be a 1 (true) or a 0 (false).
% - index: The index or indeces where this value is located.
% - occurs: The number of times the value occurs in the array.

if nargin < 2 % This makes sure that the user inputs enough arguments
    error('This function requires exactly two inputs');
end

% Setting all of our values to blanks so they can be edited later
y = 0;
index = 0;
occurs = 0;
[n,m] = size(A);

% This sets it up for the iteration counts inside the loops
u = 1;
z = 1;
index = [];

% This is the loop that calculates the values for the function
for r = 1:n % Runs through rows and columns
    for c = 1:m
        if x == A(r,c) % Detects if the value is found in the array
            y = 1;
            if n > 1 && m > 1% Adjusts the index count depending on the type of array present
                index(u) = (m*(c-1))+r);
                u = u + 1;
            else
                index(z) = c;
                z = z +1;
            end
            occurs = occurs + 1;
        end
    end
end

end  
