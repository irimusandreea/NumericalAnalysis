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
## @deftypefn {} {@var{retval} =} F2 (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: ThinkPad <ThinkPad@DESKTOP-C2NUQ2S>
## Created: 2022-02-28

function [Res] = F2(Value)
  t = -1:0.1:1;
if Value == 0
    Res = 1;
    plot(t,Res);
    hold off;
end
if Value == 1
    Res = t;
    plot(t,Res);
end
if Value > 1
    Res = 2.*t.*F2(Value-1)-F2(Value-2);
    plot(t,Res);
    hold on;
end

endfunction
