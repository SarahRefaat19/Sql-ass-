
USE SMPDB;

CREATE TABLE Visitor(
    VisitorID INT PRIMARY KEY,
    UserName VARCHAR(255),
    DOB DATE,
    JoinDate DATE,
    Gender VARCHAR(50),
    Email VARCHAR(255)
);

CREATE TABLE Post (
    PostID INT PRIMARY KEY,
    Content TEXT,
    PostDate DATE,
    VisitorID INT,
    FOREIGN KEY (VisitorID) REFERENCES Visitor(VisitorID)
);

CREATE TABLE Comment (
    CommentID INT PRIMARY KEY,
    CommentDate DATE,
    Content TEXT,
    VisitorID INT,
    PostID INT,
    FOREIGN KEY (VisitorID) REFERENCES Visitor(VisitorID),
    FOREIGN KEY (PostID) REFERENCES Post(PostID)
);

CREATE TABLE Interaction (
    InteractionID INT PRIMARY KEY,
    Type VARCHAR(50),
    InteractionDate DATE,
    VisitorID INT,
    PostID INT,
    FOREIGN KEY (VisitorID) REFERENCES Visitor(VisitorID),
    FOREIGN KEY (PostID) REFERENCES Post(PostID)
);

CREATE TABLE User_Post (
    VisitorID INT,
    PostID INT,
    PRIMARY KEY (VisitorID , PostID),
    FOREIGN KEY (VisitorID) REFERENCES Visitor(VisitorID),
    FOREIGN KEY (PostID) REFERENCES Post(PostID)
);