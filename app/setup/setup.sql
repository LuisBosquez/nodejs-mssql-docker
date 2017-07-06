IF EXISTS(select * from sys.databases where name='CommentsDb')
DROP DATABASE CommentsDb
GO

CREATE DATABASE CommentsDb;
GO

USE CommentsDb;
GO

DROP TABLE IF EXISTS Comments
GO

CREATE TABLE Comments (
	id int IDENTITY PRIMARY KEY,
	author nvarchar(30) NOT NULL,
	text nvarchar(4000)
)
GO

INSERT INTO Comments (author, text)
VALUES
('Luis','Hello DockerCon!'),
('Luis','I''m a whale.')
GO