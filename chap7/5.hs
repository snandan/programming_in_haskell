-- Explain why the following definition is invalid:
-- sumssqeven = compose [sum, map(^2), filter even]    

-- Ans:
--  The type of compose function is 
--      compose :: [a -> a] -> (a -> a)
--  All the functions in the list need to be of same type: [a -> a]

--  In this case map(^2) and filter even are of same type but 
--  the type of 'sum' is different than those.


