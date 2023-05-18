SELECT * FROM Student
WHERE FirstName = 'Antonio'

SELECT * FROM Student
WHERE DateOfBirth >= '01.01.1999'

SELECT * FROM Student
WHERE LastName Like 'J%'
AND EnrolledDate >= '01.01.1998' AND EnrolledDate <= '01.31.1998'

SELECT * FROM Student
Order By FirstName

SELECT LastName FROM Teacher
UNION
SELECT LastName FROM Student

ALTER TABLE Grade
ADD CONSTRAINT PK_ID
Primary Key(ID)

ALTER TABLE Student
ADD CONSTRAINT PK_ID_Student
Primary Key(ID)

ALTER TABLE Student
ADD CONSTRAINT FK_Student_Grade
FOREIGN KEY(ID) references Grade(ID)