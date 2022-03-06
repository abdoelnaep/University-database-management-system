
--1	Write a query that enables the students to view their results per course


-- check specific student  with id 

select st.name,cr.name ,ex.ex_type ,gr.ex_grad
from students st,exam ex,grades gr,courses cr
where st.id=gr.stud_id and ex.ex_id=gr.ex_id and   cr.id=ex.course_id and st.id=2

-- check specific student   with id and  specific course
/*
select st.name,cr.name,ex.ex_type,gr.ex_grad
from students st,exam ex,grades gr,courses cr
where st.id=gr.stud_id 
and   ex.ex_id=gr.ex_id 
and   cr.id=ex.course_id
and   st.id=2 
and   cr.id=1
*/
--/////////////////////////////////////////////////////////

---2-------	Write a query that enables the head of department to see evaluation of each course and professor.

-- to see  all eval of stud for prof in course

select prf.name as prof_name, cr.name,st.name as stud_name,prev.stars
from prof_evaluatuion prev , professors prf,courses cr,students st
where prf.id=prev.prof_id and prev.course_id=cr.id and prev.stud_id=st.id and cr.id=1



-- to see  avg  eval of studs for specific prof in  specific course
-------------------------------------------------------------------------------------
select prf.name,cr.name,  avg (prev.stars) as average_evaluation                     
from prof_evaluatuion prev , professors prf,courses cr,students st
where prf.id=prev.prof_id and prev.course_id=cr.id and prev.stud_id=st.id 
group by prf.name,cr.name
---------------------------------------------------------------------------------------




--3--------  Write a query that enables you to get top 10 high scores per course
-------------------------------------------------------------
select top(5) st.name,cr.name, gr.ex_grad 
from courses cr ,students st,grades gr
where gr.stud_id=st.id  and cr.id=gr.ex_id and cr.id=1
order by gr.ex_grad desc
-----------------------------------------------------------
select  st.name,cr.name, gr.ex_grad 
from courses cr ,students st,grades gr
where gr.stud_id=st.id  and cr.id=gr.ex_id 
group by cr.name, gr.ex_grad ,st.name
order by cr.name , gr.ex_grad desc

-----------------------------------------------------
select st.name,cr.name, gr.ex_grad  ,      row_number() over (PARTITION  by cr.name order by gr.ex_grad desc ) as rowranks           

from courses cr ,students st,grades gr
where gr.stud_id=st.id  and cr.id=gr.ex_id 
group by st.name,cr.name,gr.ex_grad
order by cr.name , gr.ex_grad desc

--------------------------------

---last correct 
select stud_name,corse_name,corse_grad, rowranks           

from (
select st.name as stud_name,cr.name corse_name, gr.ex_grad  as corse_grad,  row_number() over (PARTITION  by cr.name order by gr.ex_grad desc ) as rowranks           
from courses cr ,students st,grades gr
where gr.stud_id=st.id  and cr.id=gr.ex_id
group by st.name,cr.name,gr.ex_grad
--order by cr.name , gr.ex_grad desc
) as first_res
where rowranks<=3;

---------------------------------------------------------------------------------------
DECLARE @crsID int
SET @crsID = 1
WHILE @crsID <= 3
BEGIN
select top 2 cr.name,st.name,gr.ex_grad
from courses cr ,students st,grades gr
where gr.stud_id=st.id and cr.id=gr.ex_id
and cr.id=@crsID
group by cr.name,st.name, gr.ex_grad
order by cr.name, gr.ex_grad desc
SET @crsID = @crsID +1
END
-----------------------------------------------------------------









----4	Write a query to get the highest evaluation professor from the set of professors teaching the same course

select top (2) cr.name,prof.name, avg (prev.stars) as prof_evaluation
from prof_evaluatuion prev,professors prof,students st,courses cr
where prev.course_id=cr.id and prev.stud_id=st.id and prev.prof_id=prof.id and cr.id=1
group by cr.name,prof.name
order by  prof_evaluation desc


--5	Write a query to flag the lowest 5 evaluated courses
-----------------------------------------------------------------
select cr.name ,prof.name , avg (crev.stars) as course_evaluation
from course_evaluation crev,courses cr,professors prof
where crev.course_id=cr.id   and crev.prof_id=prof.id
group by cr.name,prof.name
order by course_evaluation
---------------------------------------------------------------------


-----//////////////////////////////////////////////////////////////
----compare student answers vs correct an in all 
select st.name,qbnk.body,ans.ans_body,stans.ans_id,qbnk.correct_ans_id,stans.ex_id
from student_answers stans,exam_questions exqust,answers ans,students st,questions_bank qbnk
where stans.stud_id=st.id and exqust.quest_id=qbnk.quest_id and st.id=1 and stans.ans_id=ans.ans_id and stans.quest_id=qbnk.quest_id
and exqust.ex_id=1

---------------------comparing stud ans vs correct ans 
select st.name,qbnk.body,ans.ans_body,stans.ans_id,qbnk.correct_ans_id,stans.ex_id
from student_answers stans,exam_questions exqust,answers ans,students st,questions_bank qbnk
where stans.stud_id=st.id and exqust.quest_id=qbnk.quest_id and st.id=1 and stans.ans_id=ans.ans_id and stans.quest_id=qbnk.quest_id 
--remove coment to see correct only--and stans.ans_id=qbnk.correct_ans_id 
and stans.ex_id=1
and stans.stud_id=1
and exqust.ex_id=1
----------------run this quere to calculat the result autumatically when submit exam with spicific student in spicific exam 
-------------------------------------------------------
update grades 
set ex_grad=(

select sum(exqust.points)
from student_answers stans,exam_questions exqust,answers ans,students st,questions_bank qbnk
where stans.stud_id=st.id and exqust.quest_id=qbnk.quest_id and stans.ans_id=ans.ans_id and stans.quest_id=qbnk.quest_id 
and stans.ans_id=qbnk.correct_ans_id 

  and exqust.ex_id=1
)where grades.stud_id=1 and grades.ex_id=1
-----------------------------------------------------------------------------------------------------



