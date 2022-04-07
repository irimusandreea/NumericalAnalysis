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
## @deftypefn {} {@var{retval} =} dd_table (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: ThinkPad <ThinkPad@DESKTOP-C2NUQ2S>
## Created: 2022-03-14

function res = dd_table (x, f)
  
   [~, n] = size(x);
    table = zeros(n, n+1);
    
    table(:, 1) = x';
    table(:, 2) = f';
    for column = 3 : n+1
        order = column - 2;
        for row = 1 : n
            if row <= n - order
                table(row, column) = ...
                    (table(row + 1, column - 1) - table(row, column - 1)) ...
                    / ( x(1, row + order) - x(1, row) );
            else
                table(row, column) = 0;
            end
        end
    end
  
    res = table;

endfunction
