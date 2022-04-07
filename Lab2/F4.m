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
## @deftypefn {} {@var{retval} =} F4 (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: ThinkPad <ThinkPad@DESKTOP-C2NUQ2S>
## Created: 2022-02-28

function F4 
h = 0.25;
i = 0:1:6;
x = 1 + i.*h;
f = sqrt(5.*x.^2+1);
for i=1:7
    diff(i, 1) = f(i);
endfor
for j=2:7
    for i = 1:7-j+1
        diff(i,j) = diff(i+1, j-1) - diff(i, j-1);
    endfor
endfor
fprintf('\n\tx\t        f(x)\t    D1\t        D2\t        D3\t        D4\t        D5\t        D6\t');
for i=1:7
    fprintf('\n    %.4f',x(i));
    for j = 1:7-i+1
        fprintf('\t    %.4f', diff(i,j));
    endfor
endfor

endfunction
