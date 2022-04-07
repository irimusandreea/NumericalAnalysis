function z = Ai_test(i,x)
  m = length(x);
  p = 1;
  for j = 1:m
    if i~=j
        p = p*(x(i)-x(j));
    end
    z = 1/p;
    end
end