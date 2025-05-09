
CREATE TABLE Student (
    studentId SERIAL PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE
);

CREATE TABLE StudyTip (
    tipId SERIAL PRIMARY KEY,
    title VARCHAR(100),
    description TEXT,
    category VARCHAR(50)  
);

CREATE TABLE StudySchedule (
    scheduleId SERIAL PRIMARY KEY,
    studentId INT REFERENCES Student(studentId),
    semester VARCHAR(50),
    studyPlan TEXT
);

CREATE TABLE Tasks (
    taskId SERIAL PRIMARY KEY,
    studentId INT REFERENCES Student(studentId),
    taskDescription TEXT,
    deadline DATE
);

CREATE TABLE Reminder (
    reminderId SERIAL PRIMARY KEY,
    studentId INT REFERENCES Student(studentId),
    assignment VARCHAR(255),
    exam VARCHAR(255),
    dueDate DATE
);

CREATE TABLE Goal (
    goalId SERIAL PRIMARY KEY,
    studentId INT REFERENCES Student(studentId),
    goalDescription TEXT,
    targetDate DATE
);

CREATE TABLE StudyBuddy (
    buddyId SERIAL PRIMARY KEY,
    studentId INT REFERENCES Student(studentId),
    peerId INT REFERENCES Student(studentId)
);

SELECT * FROM Student;
SELECT * FROM StudyTip;
SELECT * FROM StudySchedule;
SELECT * FROM Tasks;
SELECT * FROM Reminder;
SELECT * FROM Goal;
SELECT * FROM StudyBuddy;


