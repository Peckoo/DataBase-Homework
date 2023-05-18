CREATE DATABASE SEDCACADEMYDB

USE SEDCACADEMYDB

CREATE TABLE Student
(
	ID int identity(1,1),
	FirstName nvarchar(100) not null,
	LastName nvarchar(100) not null,
	DateOfBirth datetime2,
	EnrolledDate datetime2,
	Gender nchar(1),
	NationalIdNumber char(13),
	StudentCardNumber char(10)
)

CREATE TABLE Teacher
(
	ID int identity(1,1),
	FirstName nvarchar(100) not null,
	LastName nvarchar(100) not null,
	DateOfBirth datetime2,
	AcademicRank nvarchar(255) not null,
	HireDate datetime2
)

CREATE TABLE Grade
(
	ID int identity(1,1),
	StudentID int not null,
	CourseID int not null,
	TeacherID int not null,
	Grade char(2) not null,
	Comment nvarchar(MAX),
	CreatedDate datetime2
)

CREATE TABLE Course
(
	ID int identity(1,1),
	[Name] nvarchar(255) not null,
	Credit int not null,
	AcademicYear char(9) not null,
	Semester nvarchar(15) not null
)

CREATE TABLE GradeDetails
(
	ID int identity(1,1),
	GradeID int not null,
	AchievementTypeID nvarchar(10),
	AchievementPoints int not null,
	AchievementMaxPoints int not null,
	AchievementDate datetime2
)

CREATE TABLE AchievementType
(
	ID int identity(1,1),
	[Name] nvarchar(255) not null,
	[Description] nvarchar(MAX),
	ParticipationRate int not null
)
