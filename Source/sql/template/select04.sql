SELECT distinct word, worddescription, wordreplacement
FROM Words
WHERE wordindexed like '%s%'
and   ActionListID > 0
LIMIT 10
-- you need to reload the script after each change. be careful by changing the ware statment. its will later parsed by script.
