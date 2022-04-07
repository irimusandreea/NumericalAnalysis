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
## @deftypefn {} {@var{retval} =} NewthonMethod (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: ThinkPad <ThinkPad@DESKTOP-C2NUQ2S>
## Created: 2022-03-14

function N = NewtonMethod (x, f, xx)
  
  n = length(x)-1;
  m = dd_table(x, f);

  lx=length(xx);
  p=ones(1,lx);
  s=m(1,2)*ones(1,lx);
  for j=1:lx
    for i=1:n
      p(j) = p(j) * (xx(j) - x(i));
      s(j) = s(j) + p(j) * m(1,i+2);
    endfor
  endfor
  
  N=s;

endfunction
