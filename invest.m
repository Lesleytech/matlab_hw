function M = invest(S,r,N)
  a = r / 1200;
  b = (1 + a)^(12 * N) - 1;
  M = S * (a / b);
end

