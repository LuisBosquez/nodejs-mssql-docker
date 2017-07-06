select *
from Comments
for json path

select *
from Comments
where id = 1
for json path, without_array_wrapper

declare @p nvarchar(4000) = N'[{"author":"John","text":"I like it too!"},{"author":"Jane","text":"Thanks!"},{"author":"Jane","text":"Buy :)"}]'

select *
from openjson(@p)
	with ( author nvarchar(20), text nvarchar(200))

go

declare @p nvarchar(4000) = N'[{"author":"John","text":"I like it too!"},{"author":"Jane","text":"Thanks!"},{"author":"Jane","text":"Buy :)"}]'

insert into Comments(author, text)
select *
from openjson(@p)
	with ( author nvarchar(20), text nvarchar(200))

select *
from Comments

select author, count(*) comments
from Comments
group by author
for json path

delete Comments where id > 2
