%This script generates a random array and sorts it from
%least to greatest by a swap algorithm

clear    %Clears workspace
clc     %Clears command window
close all    %Closes all figures

%%%%%%%%%%%%%%%
%%%%%INPUT%%%%% 
%%%%%%%%%%%%%%%
Vector = randi([1 52], 1, 10)    %Creates a 1-by-10 vector of random integers from 1 to 52

%%%%%%%%%%%%%%
%%%%%CODE%%%%%
%%%%%%%%%%%%%%
SwapMade = 1;    %Swap variable keeps track if a swap was completed
while SwapMade > 0    %Loop to continue swapping until complete
    SwapMade = 0;    %Reset swap variable
    for n = 1:(length(Vector) - 1)    %Go through all elements of Vector
        if Vector(n) > Vector(n + 1)    %Checks if swap is needed
            Temp = Vector(n);    %Temp variable to hold current element
            Vector(n) = Vector(n + 1);    %Assign next element to current element
            Vector(n + 1) = Temp;    %Assign temp value to next element
            SwapMade = 1;    %Indicate a swap was completed
        end
    end
end
a=2;
%%%%%%%%%%%%%%
%%%%OUTPUT%%%%
%%%%%%%%%%%%%%
Vector    %Output completed sort