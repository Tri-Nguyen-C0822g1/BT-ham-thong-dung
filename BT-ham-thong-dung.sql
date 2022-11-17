use quanlysinhvien;

-- Hiển thị các thôn gtin các môn học có credit lớn nhất;

select subject.SubID, subject.SubName, max(subject.credit) MaxCredit
from subject; 


-- hiển thị thông tin môn học có điểm thi lớn nhất;
select subject.SubID, subject.SubName, max(mark.mark) 
from subject join mark on subject.SubID = mark.SubID;

-- Hiển thị thông tin sinh viên và ddierm thi sinh viên sắp xếp theo thứ tụ giảm dần;
select s.StudentID, s.StudentName, avg(m.mark) as 'AVG mark'
from student s join mark m on s.StudentID = m.StudentID
group by s.studentID
order by m.mark asc;


