ackermann 0 n = n + 1
ackermann m 0 = ackermann (m-1) 1
ackermann m n = ackermann (m-1) (ackermann m (n-1))

--入れこの呼び出し->爆発的に増える

-- *Main> ackermann 3 3
--61
-- (0.01 secs, 875,368 bytes)
-- *Main> ackermann 3 8
--2045
-- (2.21 secs, 973,914,632 bytes)
-- *Main> ackermann 3 9
--4093
-- (8.79 secs, 3,906,242,008 bytes)