function f = normhistfit(x,BC)
% f = normhistfit(x,BC)
%       INPUT: x = dataset in a single column vector
%              BC = Bin Count/Number of Bins
%
    % Creates a normalized histogram with a Gausian Distribution fit to it
    % Must have the Data in a 1 column vector and manually input a desired
    % bincount
   
   f = histfit(x,BC);
    
    % normalizing the axis
    tix = get(gca, 'YTick'); %create a vector of the current ytick values
    nN=round(tix/numel(x),2);% create a vector of normalizd values for y axis
    set(gca, 'Ytick', tix, 'YTickLabel', nN) %set the y axis to normalized values
end