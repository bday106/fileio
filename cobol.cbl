IDENTIFICATION DIVISION.
PROGRAM-ID.  WriteDemo.
AUTHOR.  Mark Mullin.
* Hey, I don't even have a cobol compiler

ENVIRONMENT DIVISION.
INPUT-OUTPUT SECTION.
FILE-CONTROL.
    SELECT StudentFile ASSIGN TO "STUDENTS.DAT"
        ORGANIZATION IS LINE SEQUENTIAL.

DATA DIVISION.
FILE SECTION.
FD TestFile.
01 TestData.
   02  LineNum        PIC X.
   02  LineText       PIC X(72).

PROCEDURE DIVISION.
Begin.
    OPEN OUTPUT TestFile
    DISPLAY "This language is still around."

    PERFORM GetFileDetails
    PERFORM UNTIL TestData = SPACES
       WRITE TestData 
       PERFORM GetStudentDetails
    END-PERFORM
    CLOSE TestFile
    STOP RUN.

GetFileDetails.
    DISPLAY "Enter - Line number, some text"
    DISPLAY "NXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
    ACCEPT  TestData.
