-- What would happen by replacing '<=' by '<' in the 
-- definition of 'qsort'?

-- Ans: Duplicate values get lost:
-- qort [2, 2, 3, 1, 1] 
-- would result
-- [1, 2, 3]