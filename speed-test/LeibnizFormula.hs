main = do
  print $ 4 * sum [ (-1)**n /(2*n+1) | n <- [0..10^8] ]
