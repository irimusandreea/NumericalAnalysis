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
## @deftypefn {} {@var{retval} =} HermitePol (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: ThinkPad <ThinkPad@DESKTOP-C2NUQ2S>
## Created: 2022-03-28

function [H]=HermitePol(t,d,v,x)

  l=length(t);
   
  z=zeros(1,2*l);  z(1:2:end)=t; z(2:2:end)=t; 
  f=zeros(1,2*l);  f(1:2:end)=d; f(2:2:end)=d; 

  m=zeros(2*l,2*l); 
  m(:,1)=f';
  m(1:2:end,2)=v';
  m(2:2:2*l-1,2)=(d(2:l)-d(1:l-1))./(t(2:l)-t(1:l-1));
  for k=3:2*l
      for i=1:2*l-k+1
          m(i,k)=(m(i+1,k-1)-m(i,k-1))/(z(i+k-1)-z(i));
      end
  end

  lx=length(x);   
  p=ones(lx,1);
  s=m(1,1)*ones(lx,1);  
  for j=1:lx
    for i=1:2*l-1
      p(j)=p(j)*(x(j)-z(i));
      s(j)=s(j)+p(j)*m(1,i+1);
    end
  end

  H=s';
  
 endfunction
