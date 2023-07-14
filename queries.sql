-- Write a query to display the name of the students who have participated in the seminar on 2020-01-01

SELECT Student.Student_FName, Student.Student_LName FROM Student INNER JOIN Participate ON Student.Student_ID = Participate.Student_ID WHERE Participate.Part_Date = '2020-01-01';

-- Write a query to display the unique name of the students who have participated in the seminar in C203

SELECT DISTINCT Student.Student_FName, Student.Student_LName FROM Student INNER JOIN Participate ON Student.Student_ID = Participate.Student_ID INNER JOIN Seminar ON Participate.Seminar_ID = Seminar.Seminar_ID WHERE Seminar.Seminar_Loc = 'C203';

-- Write a query to display the unique name of Professors who have more than 2 seminars 

SELECT DISTINCT Professor.Prof_FName, Professor.Prof_LName FROM Professor INNER JOIN Seminar ON Professor.Prof_ID = Seminar.Prof_ID GROUP BY Professor.Prof_FName, Professor.Prof_LName HAVING COUNT(Seminar.Seminar_ID) > 1;

-- Write a query to display the unique name of Advisors who have more than 2 students

SELECT DISTINCT Advisor.Advisor_FName, Advisor.Advisor_LName FROM Advisor INNER JOIN Student ON Advisor.Advisor_ID = Student.Advisor_ID GROUP BY Advisor.Advisor_FName, Advisor.Advisor_LName HAVING COUNT(Student.Student_ID) > 1;

-- Write a query to display the unique name of Graduated who is in department with code CIVENG

SELECT DISTINCT Graduated.Grad_FName, Graduated.Grad_LName FROM Graduated INNER JOIN Department ON Graduated.Grad_Dept_ID = Department.Dept_ID WHERE Department.Dept_Code = 'CIVENG';

-- Write a query to display the unique name of Student who is in department with code CENG

SELECT DISTINCT Student.Student_FName, Student.Student_LName FROM Student INNER JOIN Department ON Student.dept_id = Department.Dept_ID WHERE Department.Dept_Code = 'CENG';

-- Write a query to display the unique name of Student who is in department with code CENG and has participated in the seminar on 2020-01-01

SELECT DISTINCT Student.Student_FName, Student.Student_LName FROM Student INNER JOIN Department ON Student.dept_id = Department.Dept_ID INNER JOIN Participate ON Student.Student_ID = Participate.Student_ID WHERE Department.Dept_Code = 'CENG' AND Participate.Part_Date = '2020-01-01';

-- Write a query to display the unique name of Student who is in department with code CENG and has participated in the seminar on 2020-01-01 and has contacted the graduated on 2020-01-01

SELECT DISTINCT Student.Student_FName, Student.Student_LName FROM Student INNER JOIN Department ON Student.dept_id = Department.Dept_ID INNER JOIN Participate ON Student.Student_ID = Participate.Student_ID INNER JOIN Contact ON Student.Student_ID = Contact.Student_ID WHERE Department.Dept_Code = 'CENG' AND Participate.Part_Date = '2020-01-01' AND Contact.Cont_Date = '2020-01-01';


