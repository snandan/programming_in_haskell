-- Correct the syntex errors and check result

-- div should be in backquote `div`
-- function should begin with lowercase letter 'n' not 'N'
-- 'a' and 'xs' should have the same indentation inside the 
-- 'where' scope

n = a `div` length xs
        where 
          a  = 10
          xs = [1, 2, 3, 4, 5]