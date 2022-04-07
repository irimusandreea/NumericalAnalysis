## Copyright (C) 2022 ThinkPad
##
## This program is free software: you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <https://www.gnu.org/licenses/>.

## -*- texinfo -*-
## @deftypefn {} {@var{retval} =} F3 (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: ThinkPad <ThinkPad@DESKTOP-C2NUQ2S>
## Created: 2022-02-28

function F3
x = 2:2:8;
f = ([4 8 14 16]);
for i=1:4
    diff(i, 1) = f(i);
endfor
k = 1;
for j=2:4
    for i = 1:4-j+1
        diff(i,j) = (diff(i+1, j-1) - diff(i, j-1)) / (x(i+k) - x(i));
    endfor
    k = k+1;
endfor
fprintf('\n\tx\t        f(x)\t    D1\t        D2\t        D3\t');
for i=1:4
    fprintf('\n    %.4f',x(i));
    for j = 1:4-i+1
        fprintf('\t    %.4f', diff(i,j));
    endfor
endfor

endfunction
