SELECT word, worddescription, wordreplacement
     FROM Words
     WHERE wordindexed GLOB upper('s') || '*'
     and   ActionListID > 0 order by ROWID desc
     LIMIT 9
-- you need to reload the script after each change. be careful by changing the ware statment. its will later parsed by script.
