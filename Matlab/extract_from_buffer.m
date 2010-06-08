% Gesture recognition with Matlab.
% Copyright (C) 2008  Thomas Holleczek, ETH Zurich
% 
% This program is free software: you can redistribute it and/or modify
% it under the terms of the GNU General Public License as published by
% the Free Software Foundation, either version 3 of the License, or
% (at your option) any later version.
% 
% This program is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% GNU General Public License for more details.
% 
% You should have received a copy of the GNU General Public License
% along with this program.  If not, see <http://www.gnu.org/licenses/>.


function x = extract_from_buffer(buffer, start_ind, end_ind)

len = size(buffer);
buffer_len = len(2);

if (start_ind <= end_ind)
    x = buffer(start_ind:end_ind);
else
    partOne = buffer(start_ind:buffer_len);
    partTwo = buffer(1:end_ind);
    x = [partOne, partTwo];
end