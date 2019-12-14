--Допустим, что таблица Article имеет колонки: ArticleId, ArticleName,
--Таблица Tags имеет: TagID, TagName,
--И связывающая таблица ArticleTags: ID, ArticleID, TagID.
--Тогда запрос на пары Статья-Тег будет иметь следующий вид:

select 
art.ArticleName, 
(select tg.TagName from Tags as tg where tg.TagID = artTag.TagID)
from Article as art
left outer join ArticleTags as artTag on art.ArticleId = artTag.ArticleID