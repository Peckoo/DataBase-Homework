USE SEDCACADEMYDB

CREATE TABLE Students 
(
	Id int identity(1,1),
	[FirstName] nvarchar(100) not null,
	[LastName] nvarchar(100) not null,
	DateOfBirth datetime2,
	EnrolledDate datetime2,
	Gender nchar(1),
	NationalIdNumber char(13),
	StudentCardNumber char(10)
)

CREATE TABLE Teachers
(
	Id int identity(1,1),
	[FirstName] nvarchar(100) not null,
	[LastName] nvarchar(100) not null,
	DateOfBirth datetime2,
	AcademicRank nvarchar(255) not null,
	HireDate datetime2
)

CREATE TABLE Grade
(
	Id int identity(1,1),
	StudentID nvarchar(15),
	TeacherID nvarchar(15),
	Grade char(2) not null,
	Comment nvarchar(MAX),
	CreatedDate datetime2
)

CREATE TABLE Course
(
	Id int identity(1,1),
	[Name] nvarchar(255) not null,
	Credit int not null,
	AcademicYear char(1) not null,
	Semestar char(2) not null
)

CREATE TABLE AchievementTypes
(
	Id int identity(1,1),
	GradeID nvarchar(10),
	AchievementTypeID nvarchar(10),
	AchievementPoints int not null,
	AchievementMaxPoints int not null,
	AchievementDate datetime2
)

CREATE TABLE GradeDetails
(
	Id int identity(1,1),
	[Name] nvarchar(255) not null,
	Description nvarchar(MAX),
	ParticipationRate decimal(3,2)
)