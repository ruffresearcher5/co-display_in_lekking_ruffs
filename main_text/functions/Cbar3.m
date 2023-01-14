function bar_h = Cbar3(Z,C,b,y)
%function to specify values for color of columns.  Found on Stackoverflow 
%original code by user EBH.
% Z - The data
% C - CData (if other then Z values)
% b - Minimum absolute value to keep colored
% y - y-axis values to order the data by


if nargin<2, C = Z; end
if nargin<3 || isempty(b), b = 0; end
Z(abs(Z)<b) = nan;
C(isnan(Z)) = nan;
if nargin<4 
    bar_h = bar3(Z);
    remove_empty_bars(bar_h)
else
    bar_h = bar3(y,Z);
    remove_empty_bars(bar_h)
end
cdata_sz = size(bar_h(1).CData);
z_color = repelem(C,6,4);
z_color = mat2cell(z_color,...
    cdata_sz(1),ones(1,size(Z,2))*cdata_sz(2));
set(bar_h,{'CData'},z_color.')

function remove_empty_bars(hBars)
  for iSeries = 1:numel(hBars)
    zData = get(hBars(iSeries), 'ZData');  % Get the z data
    index = logical(kron(zData(2:6:end, 2) == 0, ones(6, 1)));  % Find empty bars
    zData(index, :) = nan;                 % Set the z data for empty bars to nan
    set(hBars(iSeries), 'ZData', zData);   % Update the graphics objects
  end
end
end

