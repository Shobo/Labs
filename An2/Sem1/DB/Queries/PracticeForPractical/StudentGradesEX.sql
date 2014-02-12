CREATE TABLE Students (
	id int IDENTITY(1,1) NOT NULL
	, name nchar(15) NOT NULL
	, group_id int NOT NULL
)

CREATE TABLE Groups (
	id int IDENTITY(1,1) NOT NULL
	, name nchar(5) NOT NULL
)

CREATE TABLE Tasks (
	id int IDENTITY(1,1) NOT NULL
	, name nchar(15) NOT NULL
)

CREATE TABLE StudentTasks (
	student_id int NOT NULL
	, task_id int NOT NULL 
	, grade int 
)

CREATE TABLE Comments (
	id int IDENTITY(1,1) NOT NULL
	, status nchar(10) NOT NULL
) 

CREATE TABLE CommentsGrades (
	student_id int NOT NULL
	, task_id int NOT NULL
	, status_id int NOT NULL
)

-- PRIMARY KEYS CONSTRAINTS
ALTER TABLE Students
ADD CONSTRAINT PK_Students PRIMARY KEY (id)

ALTER TABLE Groups
ADD CONSTRAINT PK_Groups PRIMARY KEY (id)

ALTER TABLE Tasks
ADD CONSTRAINT PK_Tasks PRIMARY KEY (id)

ALTER TABLE StudentTasks
ADD CONSTRAINT PK_StudentTasks PRIMARY KEY (student_id, task_id)

ALTER TABLE Comments
ADD CONSTRAINT PK_Comments PRIMARY KEY (id)

-- FORIEGN KEYS CONSTRAINTS
ALTER TABLE Students
ADD CONSTRAINT FK_StudentsGroups FOREIGN KEY (group_id)
REFERENCES Groups (id)

ALTER TABLE StudentTasks
ADD CONSTRAINT FK_Students_StudentTasks FOREIGN KEY (student_id)
REFERENCES Students (id)

ALTER TABLE StudentTasks
ADD CONSTRAINT FK_Tasks_StudentTasks FOREIGN KEY (task_id)
REFERENCES Tasks (id)

ALTER TABLE CommentsGrades
ADD CONSTRAINT FK_StudentTasks_CommentsGrades FOREIGN KEY (student_id, task_id)
REFERENCES StudentTasks (student_id, task_id)

ALTER TABLE CommentsGrades
ADD CONSTRAINT FK_Comments_CommentsGrades FOREIGN KEY (status_id)
REFERENCES Comments (id)


-- Part 2: Stored Procedure

CREATE PROCEDURE StudentTasks_InsertGrade
	@student_id int
	, @task_id int
	, @grade int
	, @status_id int

AS
BEGIN
	DECLARE @duplicate int
	SET @duplicate = 0

	SELECT @duplicate = COUNT(*)
	FROM StudentTasks
	WHERE @student_id = student_id AND @task_id = task_id

	IF @duplicate = 0
		INSERT INTO StudentTasks
		VALUES (@student_id, @task_id, @grade)
	ELSE
		UPDATE StudentTasks
		SET grade = @grade
		WHERE student_id = @student_id AND task_id = @task_id
			
	INSERT INTO CommentsGrades
	VALUES (@student_id, @task_id, @status_id)

END


exec StudentTasks_InsertGrade @student_id = 5, @task_id = 1, @grade = 10, @status_id = 2