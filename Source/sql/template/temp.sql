REPLACE INTO temp (fileModiTime, key, value) VALUES ('20181128134837', 'select0','[{"listID":{"len":3,"pos":156},"sql":"SELECT distinct ltrim(word), ltrim(worddescription), ltrim(wordreplacement)
     FROM Words
     WHERE word LIKE ''s%''  ESCAPE ''~''
     and ActionListID > 0
      order by ActionListID, word
     LIMIT 2;
-- seLECT * FROM ActionLists l where l.ActionList like "%isNotAProject%";
-- An underscore ("_") in the LIKE pattern matches any single character in the string.
-- you need to reload the script after each change. be careful by changing the ware statment. its will later parsed by script.
-- prp probab ür probab pro proba qahk s changin pro probab pro probab p proba","word":{"len":1,"pos":117}},{"listID":{"len":3,"pos":166},"sql":"SELECT distinct ltrim(word), ltrim(worddescription), ltrim(wordreplacement)
     FROM Words
     WHERE wordindexed GLOB upper(''c'') || ''*''
     and   ActionListID > 0
 order by ActionListID, ltrim(word)
     LIMIT 8
-- you need to reload the script after each change. be careful by changing the ware statment. its will later parsed by script.
-- prp probab ür probab pro proba qahk s changin pro probab pro probab p proba","word":{"len":1,"pos":130}},{"listID":{"len":3,"pos":132},"sql":"SELECT distinct word, worddescription, wordreplacement
     FROM Words
     WHERE wordindexed LIKE ''s%''
     and   ActionListID > 0
     order by ActionListID, ROWID asc
     LIMIT 10
-- you need to reload the script after each change. be careful by changing the ware statment. its will later parsed by script.
","word":{"len":1,"pos":103}},{"listID":{"len":3,"pos":133},"sql":"SELECT distinct word, worddescription, wordreplacement
     FROM Words
     WHERE wordindexed GLOB ''%s%''
     and   ActionListID > 0
     order by ActionListID, ROWID desc
     LIMIT 10
-- you need to reload the script after each change. be careful by changing the ware statment. its will later parsed by script.
","word":{"len":1,"pos":104}},{"listID":{"len":3,"pos":118},"sql":"SELECT distinct word, worddescription, wordreplacement
FROM Words
WHERE wordindexed like ''%s%''
and   ActionListID > 0
LIMIT 10
-- you need to reload the script after each change. be careful by changing the ware statment. its will later parsed by script.
","word":{"len":1,"pos":94}},{"listID":,"sql":"SELECT distinct word, worddescription, wordreplacement
FROM Words
WHERE wordindexed like ''s%''
LIMIT 10
-- you need to reload the script after each change. be careful by changing the ware statment. its will later parsed by script.
","word":{"len":1,"pos":93}},{"listID":,"sql":"SELECT distinct word, worddescription, wordreplacement
FROM Words
WHERE wordindexed like ''%s%''
LIMIT 10
-- you need to reload the script after each change. be careful by changing the ware statment. its will later parsed by script.
","word":{"len":1,"pos":94}}]');