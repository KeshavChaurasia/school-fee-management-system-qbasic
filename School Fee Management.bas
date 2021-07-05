REM Program of School Fee Management
REM list of variables used on Program
'naam       Name of the student
'rollno     Roll number of the student
'class      Class of the student
'add        Address of the student
'n          Narration of the fee
'jan        Fee of January
'feb        Fee of February
'mar        Fee of March
'apr        Fee of April
'may        Fee of May
'jun        Fee of June
'jul        Fee of July
'aug        Fee of August
'sep        Fee of September
'oct        Fee of October
'nov        Fee of November
'dec        Fee of December
'debt       Sum of common fee structure
'ind.debt   Sum of individual fee structure
'finaldebt  Sum total of the fee of the student

DECLARE SUB student.rec ()
DECLARE SUB add.student ()
DECLARE SUB display.student ()
DECLARE SUB search.student ()
DECLARE SUB edit.student ()
DECLARE SUB delete.student ()

DECLARE SUB bill.struct ()
declare sub make.bill.struct()
declare sub display.bill.struct()
declare sub edit.bill.struct()
declare sub delete.bill.struct()



DECLARE SUB ind.bill.struct ()
declare sub make.ind.bill.struct()
declare sub display.ind.bill.struct()
declare sub edit.ind.bill.struct()
declare sub delete.ind.bill.struct()


declare sub generate.bill()
declare sub roll.generate.bill()
declare sub name.generate.bill()
CLS
LOCATE 3, 28
PRINT "Please Read the Instruction"
COLOR 3
PRINT
LOCATE 5, 10
PRINT "This is a small program written for the school project"
LOCATE 6, 10
PRINT "It has many features like adding,  viewing,  deleting,"
LOCATE 7, 9
PRINT "searching and editing records. Please don't add the same"
LOCATE 8, 9
PRINT "records because it has limitations. Error can occur if the "
LOCATE 9, 10
PRINT "program has same records to read and extract information."
LOCATE 10, 8
PRINT "While supplying the field 'for the month of' in fee  generation"
COLOR 6
LOCATE 12, 10
PRINT "Please write month in number as"
LOCATE 13, 11
PRINT "jan = 1"
LOCATE 14, 11
PRINT "feb = 2"
LOCATE 15, 11
PRINT "mar = 3"
LOCATE 16, 11
PRINT "apr = 4"
LOCATE 13, 33
PRINT "may = 5"
LOCATE 14, 33
PRINT "jun = 6"
LOCATE 15, 33
PRINT "jul = 7"
LOCATE 16, 33
PRINT "aug = 8"
LOCATE 13, 55
PRINT "sep = 9"
LOCATE 14, 55
PRINT "oct = 10"
LOCATE 15, 55
PRINT "nov = 11"
LOCATE 16, 55
PRINT "dec = 12"
COLOR 5
LOCATE 18, 23
PRINT "thank you for your co-operation"
COLOR 7
LOCATE 20, 26
PRINT "Press any key to continue"
a$ = INPUT$(1)
CLS
SCREEN 12
LOCATE 6, 35
COLOR 9
PRINT "LOADING..."
LINE (68, 108)-(570, 132), 9, B
LINE (70, 110)-(568, 130), 8, B
a = 72
LOCATE 10, 32
COLOR 11
PRINT "SCHOOL FEE MANAGEMENT"
FOR i = 1 TO 20
    SLEEP 1
    LINE (a, 112)-(a + 20, 128), 2, BF
    a = a + 25
NEXT i

DO
    DO
        CLS
        SCREEN 12
        LINE (18, 28)-(622, 462), 1, B
        LINE (38, 109)-(168, 129), 1, B
        LOCATE 8, 6
        COLOR 4
        PRINT "date "; DATE$
        LINE (128, 138)-(502, 347), 1, B
        LINE (130, 140)-(500, 345), 1, B
        LOCATE 10, 24
        COLOR 6
        PRINT "* * * School Fee Management * * *"
        LINE (130, 162)-(500, 162), 8, B
        LINE (130, 164)-(500, 164), 8, B
        LINE (153, 164)-(153, 280), 8, B
        LINE (155, 164)-(155, 280), 8, B

        COLOR 4
        LOCATE 12, 18
        PRINT "*"
        LOCATE 13, 18
        PRINT "M"
        LOCATE 14, 18
        PRINT "E"
        LOCATE 15, 18
        PRINT "N"
        LOCATE 16, 18
        PRINT "U"
        LOCATE 17, 18
        PRINT "*"

        COLOR 3
        LOCATE 12, 23
        PRINT "1. Student Profiles"
        LOCATE 13, 23
        PRINT "2. Fee Structure"
        LOCATE 14, 23
        PRINT "3. Indiviual Fee Structure"
        LOCATE 15, 23
        PRINT "4. Fee Generation"
        LOCATE 16, 23
        PRINT "5. Exit"
        LINE (130, 281)-(500, 281), 8, B
        LINE (130, 283)-(500, 283), 8, B
        LINE (130, 310)-(500, 310), 8, B
        LINE (130, 312)-(500, 312), 8, B
        LOCATE 19, 24
        COLOR 5
        INPUT "enter your choice(1/2/3/4/5)"; ch
        SELECT CASE ch
            CASE 1
                CALL student.rec
            CASE 2
                CALL bill.struct
            CASE 3
                CALL ind.bill.struct
            CASE 4
                CALL generate.bill
            CASE 5
                COLOR 4
                LOCATE 21, 24
                PRINT "thank you for using this program"
                EXIT DO
            CASE ELSE
                LOCATE 21, 27
                PRINT "please enter(1/2/3/4/5)"
                SLEEP 1
        END SELECT
    LOOP UNTIL ch = 1 OR ch = 2 OR ch = 3 OR ch = 4 OR ch = 5

    CLS
    LINE (128, 138)-(502, 347), 8, B
    LINE (132, 142)-(498, 343), 8, B
    LINE (138, 148)-(492, 337), 8, B
    LINE (142, 152)-(488, 333), 8, B
    LINE (150, 160)-(480, 325), 8, B
    LINE (154, 164)-(476, 321), 8, B
    COLOR 5
    LOCATE 15, 22
    INPUT "Want to go the main entry(Y/N)"; ans$
LOOP WHILE UCASE$(ans$) = "Y"
END


SUB student.rec
CLS
SCREEN 12
LOCATE 6, 35
COLOR 9
PRINT "LOADING..."
LINE (68, 108)-(570, 132), 9, B
LINE (70, 110)-(568, 130), 8, B
a = 72
LOCATE 10, 32
COLOR 11
PRINT "STUDENT PROFILES"
FOR i = 1 TO 20
    SLEEP 1
    LINE (a, 112)-(a + 20, 128), 2, BF
    a = a + 25
NEXT i

DO
    CLS
    SCREEN 12
    LINE (18, 28)-(622, 462), 1, B
    LINE (38, 109)-(168, 129), 1, B
    LOCATE 8, 6
    COLOR 4
    PRINT "date "; DATE$
    LINE (128, 138)-(502, 347), 1, B
    LINE (130, 140)-(500, 345), 1, B
    LOCATE 10, 24
    COLOR 6
    PRINT "* * * Student Profiles * * *"
    LINE (130, 162)-(500, 162), 8, B
    LINE (130, 164)-(500, 164), 8, B
    LINE (153, 164)-(153, 280), 8, B
    LINE (155, 164)-(155, 280), 8, B

    COLOR 4
    LOCATE 12, 18
    PRINT "*"
    LOCATE 13, 18
    PRINT "M"
    LOCATE 14, 18
    PRINT "E"
    LOCATE 15, 18
    PRINT "N"
    LOCATE 16, 18
    PRINT "U"
    LOCATE 17, 18
    PRINT "*"

    COLOR 5
    LOCATE 12, 23
    PRINT "1. Add Student Profiles"
    LOCATE 13, 23
    PRINT "2. Display Student Profiles"
    LOCATE 14, 23
    PRINT "3. Search Student Profiles"
    LOCATE 15, 23
    PRINT "4. Edit Student Profiles"
    LOCATE 16, 23
    PRINT "5. Delete Student Profiles"
    LOCATE 17, 23
    PRINT "6. Exit"
    PRINT
    LINE (130, 281)-(500, 281), 8, B
    LINE (130, 283)-(500, 283), 8, B
    LINE (130, 310)-(500, 310), 8, B
    LINE (130, 312)-(500, 312), 8, B
    LOCATE 19, 24
    COLOR 2
    INPUT "enter your choice(1/2/3/4/5/6)"; ch
    SELECT CASE ch
        CASE 1
            CALL add.student

        CASE 2
            CALL display.student

        CASE 3
            CALL search.student

        CASE 4
            CALL edit.student

        CASE 5
            CALL delete.student

        CASE 6
            LOCATE 21, 24
            PRINT "thank you for using this program"
            EXIT DO


        CASE ELSE
            LOCATE 21, 27
            PRINT "please enter(1/2/3/4/5/6)"
            SLEEP 1
    END SELECT
LOOP UNTIL ch = 1 OR ch = 2 OR ch = 3 OR ch = 4 OR ch = 5 OR ch = 6
END SUB


SUB bill.struct
CLS
SCREEN 12
LOCATE 6, 35
COLOR 9
PRINT "LOADING..."
LINE (68, 108)-(570, 132), 9, B
LINE (70, 110)-(568, 130), 8, B
a = 72
LOCATE 10, 32
COLOR 11
PRINT "FEE STRUCTURE"
FOR i = 1 TO 20
    SLEEP 1
    LINE (a, 112)-(a + 20, 128), 2, BF
    a = a + 25
NEXT i

DO
    CLS
    SCREEN 12
    LINE (18, 28)-(622, 462), 1, B
    LINE (38, 109)-(168, 129), 1, B
    LOCATE 8, 6
    COLOR 4
    PRINT "date "; DATE$
    LINE (128, 138)-(502, 347), 1, B
    LINE (130, 140)-(500, 345), 1, B
    LOCATE 10, 24
    COLOR 6
    PRINT "* * * Bill Structures * * *"
    LINE (130, 162)-(500, 162), 8, B
    LINE (130, 164)-(500, 164), 8, B
    LINE (153, 164)-(153, 280), 8, B
    LINE (155, 164)-(155, 280), 8, B

    COLOR 4
    LOCATE 12, 18
    PRINT "*"
    LOCATE 13, 18
    PRINT "M"
    LOCATE 14, 18
    PRINT "E"
    LOCATE 15, 18
    PRINT "N"
    LOCATE 16, 18
    PRINT "U"
    LOCATE 17, 18
    PRINT "*"

    COLOR 5
    LINE (130, 281)-(500, 281), 8, B
    LINE (130, 283)-(500, 283), 8, B
    LINE (130, 310)-(500, 310), 8, B
    LINE (130, 312)-(500, 312), 8, B

    LOCATE 12, 23
    PRINT "1. Make fee structure"
    LOCATE 13, 23
    PRINT "2. Display fee structure"
    LOCATE 14, 23
    PRINT "3. Edit fee structure"
    LOCATE 15, 23
    PRINT "4. Delete fee structure"
    LOCATE 16, 23
    PRINT "5. Exit"

    LOCATE 19, 24
    COLOR 4
    INPUT "enter your choice(1/2/3/4/5)"; ch
    SELECT CASE ch
        CASE 1
            CALL make.bill.struct
        CASE 2
            CALL display.bill.struct
        CASE 3
            CALL edit.bill.struct
        CASE 4
            CALL delete.bill.struct

        CASE 5
            LOCATE 21, 24
            PRINT "thank you for using this program"
            EXIT DO

        CASE ELSE
            LOCATE 21, 27
            PRINT "please enter(1/2/3/4/5)"
            SLEEP 1
    END SELECT
LOOP UNTIL ch = 1 OR ch = 2 OR ch = 3 OR ch = 4 OR ch = 5
END SUB





SUB ind.bill.struct
CLS
SCREEN 12
LOCATE 6, 35
COLOR 9
PRINT "LOADING..."
LINE (68, 108)-(570, 132), 9, B
LINE (70, 110)-(568, 130), 8, B
a = 72
LOCATE 10, 29
COLOR 11
PRINT "INDIVIDUAL FEE STRUCTURE"
FOR i = 1 TO 20
    SLEEP 1
    LINE (a, 112)-(a + 20, 128), 2, BF
    a = a + 25
NEXT i

DO
    CLS
    SCREEN 12
    LINE (18, 28)-(622, 462), 1, B
    LINE (38, 109)-(168, 129), 1, B
    LOCATE 8, 6
    COLOR 4
    PRINT "date "; DATE$
    LINE (128, 138)-(502, 347), 1, B
    LINE (130, 140)-(500, 345), 1, B
    LOCATE 10, 24
    COLOR 6
    PRINT "* * Individual Bill Structures * *"
    LINE (130, 162)-(500, 162), 8, B
    LINE (130, 164)-(500, 164), 8, B
    LINE (153, 164)-(153, 280), 8, B
    LINE (155, 164)-(155, 280), 8, B

    COLOR 4
    LOCATE 12, 18
    PRINT "*"
    LOCATE 13, 18
    PRINT "M"
    LOCATE 14, 18
    PRINT "E"
    LOCATE 15, 18
    PRINT "N"
    LOCATE 16, 18
    PRINT "U"
    LOCATE 17, 18
    PRINT "*"

    COLOR 5
    LINE (130, 281)-(500, 281), 8, B
    LINE (130, 283)-(500, 283), 8, B
    LINE (130, 310)-(500, 310), 8, B
    LINE (130, 312)-(500, 312), 8, B

    LOCATE 12, 23
    PRINT "1. Make individual fee structure"
    LOCATE 13, 23
    PRINT "2. Display individual fee structure"
    LOCATE 14, 23
    PRINT "3. Edit individual fee structure"
    LOCATE 15, 23
    PRINT "4. Delete individual fee structure"
    LOCATE 16, 23
    PRINT "5. Exit"

    LOCATE 19, 24
    COLOR 4
    INPUT "enter your choice(1/2/3/4/5)"; ch
    SELECT CASE ch
        CASE 1
            CALL make.ind.bill.struct
        CASE 2
            CALL display.ind.bill.struct
        CASE 3
            CALL edit.ind.bill.struct
        CASE 4
            CALL delete.ind.bill.struct

        CASE 5
            LOCATE 21, 24
            PRINT "thank you for using this program"
            EXIT DO
        CASE ELSE
            LOCATE 21, 27
            PRINT "please enter(1/2/3/4/5)"
            SLEEP 1
    END SELECT
LOOP UNTIL ch = 1 OR ch = 2 OR ch = 3 OR ch = 4 OR ch = 5
END SUB

SUB add.student
CLS
DO
    CLS
    OPEN "studentrecord.dat" FOR APPEND AS #1
    SCREEN 12
    LINE (70, 95)-(194, 115), 1, B 'date
    LOCATE 7, 10
    COLOR 6
    PRINT "date "; DATE$
    COLOR 4
    LOCATE 12, 12
    PRINT "*"
    LOCATE 13, 12
    PRINT "*"
    LOCATE 14, 12
    PRINT "*"
    LOCATE 15, 12
    PRINT "*"
    LOCATE 16, 12
    PRINT "*"
    LOCATE 17, 12
    PRINT "*"

    LINE (20, 30)-(620, 455), 1, B 'outer box1
    LINE (20, 30)-(620, 455), 4, B
    LINE (23, 33)-(618, 453), 12, B
    LINE (23, 33)-(618, 453), 0, B

    LINE (30, 40)-(610, 445), 6, B 'inner box2
    LINE (30, 40)-(610, 445), 1, B
    LINE (33, 43)-(608, 443), 2, B
    LINE (33, 43)-(608, 443), 0, B

    LINE (70, 145)-(565, 120), 1, B 'heading box

    COLOR 7
    LOCATE 9, 13
    PRINT "* * * ENTER THE INFORMATION FOR ADDING THE RECORD * * *"

    LINE (70, 150)-(565, 390), 1, B 'main inner box
    LINE (71, 162)-(565, 162), 8, B
    LINE (71, 164)-(565, 164), 8, B
    LINE (110, 164)-(110, 280), 8, B
    LINE (112, 164)-(112, 280), 8, B

    LINE (70, 279)-(565, 279), 8, B
    LINE (70, 281)-(565, 281), 8, B
    LINE (70, 338)-(565, 338), 8, B
    LINE (70, 340)-(565, 340), 8, B

    COLOR 5
    LOCATE 12, 18
    INPUT "Full name of the student: ", naam$
    LOCATE 13, 18
    INPUT "Roll no of the student  : ", rollno$
    LOCATE 14, 18
    INPUT "Class of the student    : ", class
    LOCATE 15, 18
    INPUT "Address of the student  : ", add$

    WRITE #1, naam$, rollno$, class, add$
    LOCATE 19, 25
    COLOR 2
    PRINT "***************************"
    LOCATE 20, 25
    COLOR 4
    PRINT "your record has been stored"
    LOCATE 21, 25
    COLOR 2
    PRINT "***************************"
    a$ = INPUT$(1)
    COLOR 8
    LOCATE 23, 25
    INPUT "do you want to continue(Y/N)"; a$
    a$ = UCASE$(a$)
    CLOSE #1
LOOP WHILE a$ = "Y"
END SUB




SUB delete.student
DO
    CLS
    SCREEN 12
    LINE (70, 95)-(194, 115), 1, B 'date
    LOCATE 7, 10
    COLOR 6
    PRINT "date "; DATE$
    COLOR 4
    LOCATE 12, 12
    PRINT "*"
    LOCATE 13, 12
    PRINT "*"
    LOCATE 14, 12
    PRINT "*"
    LOCATE 15, 12
    PRINT "*"
    LOCATE 16, 12
    PRINT "*"
    LOCATE 17, 12
    PRINT "*"

    LINE (20, 30)-(620, 455), 1, B 'outer box1
    LINE (20, 30)-(620, 455), 4, B
    LINE (23, 33)-(618, 453), 12, B
    LINE (23, 33)-(618, 453), 0, B

    LINE (30, 40)-(610, 445), 6, B 'inner box2
    LINE (30, 40)-(610, 445), 1, B
    LINE (33, 43)-(608, 443), 2, B
    LINE (33, 43)-(608, 443), 0, B

    LINE (70, 145)-(565, 120), 1, B 'heading box
    COLOR 7
    LOCATE 9, 13
    PRINT "* * * ENTER THE INFORMATION FOR DELETING THE RECORD * * *"

    LINE (70, 150)-(565, 390), 1, B 'main inner box
    LINE (71, 162)-(565, 162), 8, B
    LINE (71, 164)-(565, 164), 8, B
    LINE (110, 164)-(110, 280), 8, B
    LINE (112, 164)-(112, 280), 8, B

    LINE (70, 279)-(565, 279), 8, B
    LINE (70, 281)-(565, 281), 8, B
    LINE (70, 338)-(565, 338), 8, B
    LINE (70, 340)-(565, 340), 8, B

    COLOR 5
    LOCATE 13, 18
    INPUT "Full name of the Student:    ", n$
    LOCATE 15, 18
    INPUT "roll number of the Student:  ", r$
    n$ = UCASE$(n$)
    OPEN "studentrecord.dat" FOR INPUT AS #1
    OPEN "tempo.dat" FOR APPEND AS #2
    found = 0
    DO UNTIL EOF(1)
        INPUT #1, naam$, rollno$, class, add$
        naam$ = UCASE$(naam$)
        IF n$ = naam$ AND r$ = rollno$ THEN
            found = found + 1
        ELSEIF n$ <> naam$ THEN
            WRITE #2, naam$, rollno$, class, add$
        END IF
    LOOP
    CLOSE #2
    CLOSE #1
    KILL "studentrecord.dat"
    NAME "tempo.dat" AS "studentrecord.dat"
    IF found = 0 THEN
        LOCATE 20, 25
        COLOR 2
        PRINT "Sorry your record couldn't be found"
        a$ = INPUT$(1)
    ELSE
        LOCATE 20, 26
        PRINT "record is deleted successfully"
        a$ = INPUT$(1)
    END IF
    COLOR 8
    LOCATE 23, 26
    INPUT "Do you want to delete more(Y/N)"; a$
LOOP WHILE UCASE$(a$) = "Y"
END SUB

SUB display.student
OPEN "studentrecord.dat" FOR INPUT AS #1
DO UNTIL EOF(1)
    CLS
    SCREEN 12
    LINE (70, 95)-(194, 115), 1, B 'date
    LOCATE 7, 10
    COLOR 6
    PRINT "date "; DATE$
    COLOR 4
    LOCATE 12, 12
    PRINT "*"
    LOCATE 13, 12
    PRINT "*"
    LOCATE 14, 12
    PRINT "*"
    LOCATE 15, 12
    PRINT "*"
    LOCATE 16, 12
    PRINT "*"
    LOCATE 17, 12
    PRINT "*"

    LINE (20, 30)-(620, 455), 1, B 'outer box1
    LINE (20, 30)-(620, 455), 4, B
    LINE (23, 33)-(618, 453), 12, B
    LINE (23, 33)-(618, 453), 0, B

    LINE (30, 40)-(610, 445), 6, B 'inner box2
    LINE (30, 40)-(610, 445), 1, B
    LINE (33, 43)-(608, 443), 2, B
    LINE (33, 43)-(608, 443), 0, B

    LINE (70, 145)-(565, 120), 1, B 'heading box

    COLOR 7
    LOCATE 9, 15
    PRINT "* * * HERE ARE THE DISPLAY OF STAFF RECORDS * * * *"

    LINE (70, 150)-(565, 390), 1, B 'main inner box
    LINE (71, 162)-(565, 162), 8, B
    LINE (71, 164)-(565, 164), 8, B
    LINE (110, 164)-(110, 280), 8, B
    LINE (112, 164)-(112, 280), 8, B

    LINE (70, 279)-(565, 279), 8, B
    LINE (70, 281)-(565, 281), 8, B
    LINE (70, 338)-(565, 338), 8, B
    LINE (70, 340)-(565, 340), 8, B

    INPUT #1, naam$, rollno$, class, add$
    naam$ = UCASE$(naam$)
    COLOR 5
    LOCATE 12, 18
    PRINT "Full name of the student   :  "; naam$
    LOCATE 13, 18
    PRINT "Roll number of the student :  "; rollno$
    LOCATE 14, 18
    PRINT "Class of the student       : "; class
    LOCATE 15, 18
    PRINT "Address of the student     :  "; add$
    COLOR 8
    LOCATE 18, 27
    PRINT "Press any key to continue"
    a$ = INPUT$(1)
LOOP
COLOR 2
LOCATE 19, 30
PRINT "*********************"
LOCATE 20, 30
COLOR 4
PRINT "these are the records"
LOCATE 21, 30
COLOR 2
PRINT "*********************"
COLOR 8
LOCATE 23, 29
PRINT "Press any key to continue"
a$ = INPUT$(1)
CLOSE #1
CLOSE
END SUB

SUB edit.student
DO
    CLS
    SCREEN 12

    LINE (70, 95)-(194, 115), 1, B 'date
    LOCATE 7, 10
    COLOR 6
    PRINT "date "; DATE$
    COLOR 4
    LOCATE 12, 12
    PRINT "*"
    LOCATE 13, 12
    PRINT "*"
    LOCATE 14, 12
    PRINT "*"
    LOCATE 15, 12
    PRINT "*"
    LOCATE 16, 12
    PRINT "*"
    LOCATE 17, 12
    PRINT "*"

    LINE (20, 30)-(620, 455), 1, B 'outer box1
    LINE (20, 30)-(620, 455), 4, B
    LINE (23, 33)-(618, 453), 12, B
    LINE (23, 33)-(618, 453), 0, B

    LINE (30, 40)-(610, 445), 6, B 'inner box2
    LINE (30, 40)-(610, 445), 1, B
    LINE (33, 43)-(608, 443), 2, B
    LINE (33, 43)-(608, 443), 0, B

    LINE (70, 145)-(565, 120), 1, B 'heading box

    COLOR 7
    LOCATE 9, 13
    PRINT "* * * ENTER THE INFORMATION FOR EDITTING THE RECORD * * *"

    LINE (70, 150)-(565, 390), 1, B 'main inner box
    LINE (71, 162)-(565, 162), 8, B
    LINE (71, 164)-(565, 164), 8, B
    LINE (110, 164)-(110, 280), 8, B
    LINE (112, 164)-(112, 280), 8, B

    LINE (70, 279)-(565, 279), 8, B
    LINE (70, 281)-(565, 281), 8, B
    LINE (70, 338)-(565, 338), 8, B
    LINE (70, 340)-(565, 340), 8, B

    COLOR 5
    LOCATE 13, 18
    INPUT "Full name of the student    :  "; n$
    LOCATE 16, 18
    INPUT "Roll number of the student  :  "; r$
    n$ = UCASE$(n$)
    OPEN "studentrecord.dat" FOR INPUT AS #2
    OPEN "tempo.dat" FOR OUTPUT AS #1
    found = 0
    DO UNTIL EOF(2)
        CLS
        SCREEN 12
        LINE (70, 95)-(194, 115), 1, B 'date
        LOCATE 7, 10
        COLOR 6
        PRINT "date "; DATE$
        COLOR 4
        LOCATE 12, 12
        PRINT "*"
        LOCATE 13, 12
        PRINT "*"
        LOCATE 14, 12
        PRINT "*"
        LOCATE 15, 12
        PRINT "*"
        LOCATE 16, 12
        PRINT "*"
        LOCATE 17, 12
        PRINT "*"

        LINE (20, 30)-(620, 455), 1, B 'outer box1
        LINE (20, 30)-(620, 455), 4, B
        LINE (23, 33)-(618, 453), 12, B
        LINE (23, 33)-(618, 453), 0, B

        LINE (30, 40)-(610, 445), 6, B 'inner box2
        LINE (30, 40)-(610, 445), 1, B
        LINE (33, 43)-(608, 443), 2, B
        LINE (33, 43)-(608, 443), 0, B

        LINE (70, 145)-(565, 120), 1, B 'heading box

        COLOR 7
        LOCATE 9, 13
        PRINT "* * * ENTER THE FOLLOWING CHANGES * * *"

        LINE (70, 150)-(565, 390), 1, B 'main inner box
        LINE (71, 162)-(565, 162), 8, B
        LINE (71, 164)-(565, 164), 8, B
        LINE (110, 164)-(110, 280), 8, B
        LINE (112, 164)-(112, 280), 8, B

        LINE (70, 279)-(565, 279), 8, B
        LINE (70, 281)-(565, 281), 8, B
        LINE (70, 338)-(565, 338), 8, B
        LINE (70, 340)-(565, 340), 8, B

        INPUT #2, naam$, rollno$, class, add$
        naam$ = UCASE$(naam$)
        IF n$ = naam$ AND r$ = rollno$ THEN

            COLOR 5
            LOCATE 12, 18
            INPUT "full name of the student    :  "; naam$
            LOCATE 13, 18
            INPUT "roll number of the student  :  "; rollno$
            LOCATE 14, 18
            INPUT "class of the student        :  "; class
            LOCATE 15, 18
            INPUT "Address of the student      :  "; add$

            WRITE #1, naam$, rollno$, class, add$
            found = 1
        ELSE
            WRITE #1, naam$, rollno$, class, add$
        END IF
    LOOP
    CLOSE #1
    CLOSE #2
    CLOSE
    KILL "studentrecord.dat"
    NAME "tempo.dat" AS "studentrecord.dat"

    IF found = 0 THEN
        LOCATE 19, 25
        COLOR 2
        PRINT "***********************************"
        LOCATE 20, 25
        COLOR 4
        PRINT "Sorry your record couldn't be found"
        LOCATE 21, 25
        COLOR 2
        PRINT "***********************************"
        a$ = INPUT$(1)
    ELSE
        LOCATE 19, 22
        COLOR 2
        PRINT "*****************************************"
        LOCATE 20, 22
        COLOR 4
        PRINT "your record has been changed successfuly"
        LOCATE 21, 22
        COLOR 2
        PRINT "*****************************************"
        a$ = INPUT$(1)
    END IF
    PRINT
    LOCATE 23, 20
    COLOR 8
    INPUT "do you want to edit more students profiles(Y/N)"; ans$
    PRINT
LOOP WHILE LCASE$(ans$) = "y"
END SUB

SUB search.student
DO
    CLS
    SCREEN 12
    LINE (70, 95)-(194, 115), 1, B 'date
    LOCATE 7, 10
    COLOR 6
    PRINT "date "; DATE$
    COLOR 4
    LOCATE 12, 12
    PRINT "*"
    LOCATE 13, 12
    PRINT "*"
    LOCATE 14, 12
    PRINT "*"
    LOCATE 15, 12
    PRINT "*"
    LOCATE 16, 12
    PRINT "*"
    LOCATE 17, 12
    PRINT "*"

    LINE (20, 30)-(620, 455), 1, B 'outer box1
    LINE (20, 30)-(620, 455), 4, B
    LINE (23, 33)-(618, 453), 12, B
    LINE (23, 33)-(618, 453), 0, B

    LINE (30, 40)-(610, 445), 6, B 'inner box2
    LINE (30, 40)-(610, 445), 1, B
    LINE (33, 43)-(608, 443), 2, B
    LINE (33, 43)-(608, 443), 0, B

    LINE (70, 145)-(565, 120), 1, B 'heading box

    COLOR 7
    LOCATE 9, 13
    PRINT "* * * ENTER THE METHOD FOR SEARHING THE RECORD * * *"

    LINE (70, 150)-(565, 390), 1, B 'main inner box
    LINE (71, 162)-(565, 162), 8, B
    LINE (71, 164)-(565, 164), 8, B
    LINE (110, 164)-(110, 280), 8, B
    LINE (112, 164)-(112, 280), 8, B

    LINE (70, 279)-(565, 279), 8, B
    LINE (70, 281)-(565, 281), 8, B
    LINE (70, 338)-(565, 338), 8, B
    LINE (70, 340)-(565, 340), 8, B

    COLOR 5
    LOCATE 12, 18
    PRINT "1. Name"
    LOCATE 14, 18
    PRINT "2. Roll number"
    LOCATE 16, 18
    PRINT "3. Class"
    LOCATE 14, 45
    PRINT "4. Exit"
    COLOR 7
    LOCATE 20, 28
    INPUT "Your choices(1/2/3/4)"; ch
    SELECT CASE ch
        CASE 1
            CLS
            SCREEN 12
            LINE (70, 95)-(194, 115), 1, B 'date
            LOCATE 7, 10
            COLOR 6
            PRINT "date "; DATE$
            COLOR 4
            LOCATE 12, 12
            PRINT "*"
            LOCATE 13, 12
            PRINT "*"
            LOCATE 14, 12
            PRINT "*"
            LOCATE 15, 12
            PRINT "*"
            LOCATE 16, 12
            PRINT "*"
            LOCATE 17, 12
            PRINT "*"

            LINE (20, 30)-(620, 455), 1, B 'outer box1
            LINE (20, 30)-(620, 455), 4, B
            LINE (23, 33)-(618, 453), 12, B
            LINE (23, 33)-(618, 453), 0, B

            LINE (30, 40)-(610, 445), 6, B 'inner box2
            LINE (30, 40)-(610, 445), 1, B
            LINE (33, 43)-(608, 443), 2, B
            LINE (33, 43)-(608, 443), 0, B

            LINE (70, 145)-(565, 120), 1, B 'heading box

            COLOR 7
            LOCATE 9, 13
            PRINT "* * * METHOD OF SEARHING BY  NAME * * *"

            LINE (70, 150)-(565, 390), 1, B 'main inner box
            LINE (71, 162)-(565, 162), 8, B
            LINE (71, 164)-(565, 164), 8, B
            LINE (110, 164)-(110, 280), 8, B
            LINE (112, 164)-(112, 280), 8, B

            LINE (70, 279)-(565, 279), 8, B
            LINE (70, 281)-(565, 281), 8, B
            LINE (70, 338)-(565, 338), 8, B
            LINE (70, 340)-(565, 340), 8, B

            LOCATE 15, 18
            COLOR 2
            INPUT "Full Name"; n$
            n$ = UCASE$(n$)

            OPEN "studentrecord.dat" FOR INPUT AS #1

            DO UNTIL EOF(1)
                INPUT #1, naam$, rollno$, class, add$
                naam$ = UCASE$(naam$)
                IF n$ = naam$ THEN

                    COLOR 5
                    LOCATE 12, 18
                    PRINT "Full name of the student   :  "; naam$
                    LOCATE 13, 18
                    PRINT "Roll number of the student :  "; rollno$
                    LOCATE 14, 18
                    PRINT "Class of the student       : "; class
                    LOCATE 15, 18
                    PRINT "address of the student     :  "; add$

                    found = found + 1
                    COLOR 8
                    LOCATE 18, 27
                    PRINT "press any key to continue";
                    a$ = INPUT$(1)
                END IF
            LOOP
            CLOSE #1

        CASE 2
            CLS
            SCREEN 12
            LINE (70, 95)-(194, 115), 1, B 'date
            LOCATE 7, 10
            COLOR 6
            PRINT "date "; DATE$
            COLOR 4
            LOCATE 12, 12
            PRINT "*"
            LOCATE 13, 12
            PRINT "*"
            LOCATE 14, 12
            PRINT "*"
            LOCATE 15, 12
            PRINT "*"
            LOCATE 16, 12
            PRINT "*"
            LOCATE 17, 12
            PRINT "*"

            LINE (20, 30)-(620, 455), 1, B 'outer box1
            LINE (20, 30)-(620, 455), 4, B
            LINE (23, 33)-(618, 453), 12, B
            LINE (23, 33)-(618, 453), 0, B

            LINE (30, 40)-(610, 445), 6, B 'inner box2
            LINE (30, 40)-(610, 445), 1, B
            LINE (33, 43)-(608, 443), 2, B
            LINE (33, 43)-(608, 443), 0, B

            LINE (70, 145)-(565, 120), 1, B 'heading box
            COLOR 7
            LOCATE 9, 13
            PRINT "* * * METHOD OF SEARHING BY ROLL NUMBER * * *"

            LINE (70, 150)-(565, 390), 1, B 'main inner box
            LINE (71, 162)-(565, 162), 8, B
            LINE (71, 164)-(565, 164), 8, B
            LINE (110, 164)-(110, 280), 8, B
            LINE (112, 164)-(112, 280), 8, B

            LINE (70, 279)-(565, 279), 8, B
            LINE (70, 281)-(565, 281), 8, B
            LINE (70, 338)-(565, 338), 8, B
            LINE (70, 340)-(565, 340), 8, B

            LOCATE 15, 18
            INPUT "roll  number"; r$
            n$ = UCASE$(n$)

            OPEN "studentrecord.dat" FOR INPUT AS #1

            DO UNTIL EOF(1)
                INPUT #1, naam$, rollno$, class, add$
                naam$ = UCASE$(naam$)
                IF r$ = rollno$ THEN

                    COLOR 5
                    LOCATE 12, 18
                    PRINT "Full name of the student   :  "; naam$
                    LOCATE 13, 18
                    PRINT "Roll number of the student :  "; rollno$
                    LOCATE 14, 18
                    PRINT "Class of the student       : "; class
                    LOCATE 15, 18
                    PRINT "address of the student     :  "; add$
                    found = found + 1
                    COLOR 8
                    LOCATE 18, 27
                    PRINT "press any key to continue";
                    a$ = INPUT$(1)
                END IF
            LOOP
            CLOSE #1


        CASE 3
            CLS
            SCREEN 12
            LINE (70, 95)-(194, 115), 1, B 'date
            LOCATE 7, 10
            COLOR 6
            PRINT "date "; DATE$
            COLOR 4
            LOCATE 12, 12
            PRINT "*"
            LOCATE 13, 12
            PRINT "*"
            LOCATE 14, 12
            PRINT "*"
            LOCATE 15, 12
            PRINT "*"
            LOCATE 16, 12
            PRINT "*"
            LOCATE 17, 12
            PRINT "*"

            LINE (20, 30)-(620, 455), 1, B 'outer box1
            LINE (20, 30)-(620, 455), 4, B
            LINE (23, 33)-(618, 453), 12, B
            LINE (23, 33)-(618, 453), 0, B

            LINE (30, 40)-(610, 445), 6, B 'inner box2
            LINE (30, 40)-(610, 445), 1, B
            LINE (33, 43)-(608, 443), 2, B
            LINE (33, 43)-(608, 443), 0, B

            LINE (70, 145)-(565, 120), 1, B 'heading box
            COLOR 7
            LOCATE 9, 13
            PRINT "* * * METHOD OF SEARHING BY CLASS * * *"

            LINE (70, 150)-(565, 390), 1, B 'main inner box
            LINE (71, 162)-(565, 162), 8, B
            LINE (71, 164)-(565, 164), 8, B
            LINE (110, 164)-(110, 280), 8, B
            LINE (112, 164)-(112, 280), 8, B

            LINE (70, 279)-(565, 279), 8, B
            LINE (70, 281)-(565, 281), 8, B
            LINE (70, 338)-(565, 338), 8, B
            LINE (70, 340)-(565, 340), 8, B

            LOCATE 15, 18
            INPUT "Class:   "; c

            OPEN "studentrecord.dat" FOR INPUT AS #1

            DO UNTIL EOF(1)
                INPUT #1, naam$, rollno$, class, add$
                naam$ = UCASE$(naam$)
                IF c = class THEN

                    COLOR 5

                    LOCATE 12, 18
                    PRINT "Full name of the student   :     "; naam$
                    LOCATE 13, 18
                    PRINT "Roll number of the student :     "; rollno$
                    LOCATE 14, 18
                    PRINT "Class of the student       :    "; class
                    LOCATE 15, 18
                    PRINT "address of the student     :     "; add$
                    found = found + 1
                    LOCATE 18, 27
                    PRINT "press any key to continue";
                    a$ = INPUT$(1)
                END IF
            LOOP
            CLOSE #1
        CASE 4
            EXIT DO
    END SELECT
    IF found = 0 THEN
        LOCATE 19, 25
        COLOR 2
        PRINT "*************************************"
        LOCATE 20, 25
        COLOR 4
        PRINT "Sorry! your record could not be found"
        LOCATE 21, 25
        COLOR 2
        PRINT "*************************************"
        a$ = INPUT$(1)
    ELSE
        LOCATE 19, 25

        COLOR 2
        PRINT "***************************"
        LOCATE 20, 28
        COLOR 4
        PRINT "These are the record"
        LOCATE 21, 25
        COLOR 2
        PRINT "***************************"
        a$ = INPUT$(1)
    END IF
    PRINT
    LOCATE 23, 24
    INPUT "do you want to search more(Y/N)"; a$
    PRINT
LOOP WHILE UCASE$(a$) = "Y"
END SUB



SUB make.bill.struct
DO
    CLS
    SCREEN 12
    LINE (10, 20)-(620, 460), 1, B 'outer box
    LINE (15, 25)-(615, 455), 4, B 'out inner box

    LINE (25, 30)-(605, 80), 8, B 'info box
    LINE (25, 30)-(140, 80), 8, B 'info box
    LOCATE 3, 22
    COLOR 2
    PRINT "****************************"
    LOCATE 4, 22
    COLOR 4
    PRINT "* * * BILL  STRUCTURE * * *"
    COLOR 2
    LOCATE 5, 22
    PRINT "****************************"

    LINE (25, 83)-(605, 450), 8, B 'inner box

    LINE (25, 83)-(605, 115), 8, B '1 inner box


    LINE (25, 83)-(605, 150), 8, B


    LINE (127, 150)-(130, 450), 8, B 'divider
    LINE (317, 150)-(320, 450), 8, B 'divider
    LINE (427, 150)-(430, 450), 8, B 'divider
    LINE (25, 150)-(27, 450), 8, B 'divider

    LINE (25, 187)-(605, 190), 8, B

    LINE (25, 225)-(605, 225), 8, B

    LINE (25, 260)-(605, 260), 8, B
    LINE (25, 295)-(605, 295), 8, B
    LINE (25, 330)-(605, 330), 8, B
    LINE (25, 365)-(605, 365), 8, B
    LINE (25, 400)-(605, 400), 8, B



    LINE (27, 390)-(605, 410), 4, BF
    LINE (27, 410)-(605, 430), 0, BF
    LINE (27, 430)-(605, 450), 6, BF

    LINE (427, 20)-(605, 140), 0, BF 'naration box
    OPEN "billstructure.dat" FOR APPEND AS #1

    COLOR 1
    LOCATE 2, 55
    PRINT "NARATION INFORMATION"
    COLOR 10
    LOCATE 3, 55
    PRINT "Tuition Fee"
    LOCATE 4, 55
    PRINT "Exam fee"
    LOCATE 5, 55
    PRINT "Bus fee"
    LOCATE 6, 55
    PRINT "Library"
    LOCATE 7, 55
    PRINT "Computer"
    LOCATE 8, 55
    PRINT "Activities"
    LOCATE 9, 55
    PRINT "Other"



    COLOR 9
    LOCATE 4, 5
    INPUT "CLASS: ", class1

    LOCATE 7, 6
    COLOR 6
    INPUT "NARRATION"; n$

    COLOR 7
    LOCATE 9, 12
    PRINT "* * * * MONTHLY STRUCTURE * * * *"

    LOCATE 11, 8
    COLOR 5
    PRINT "MONTH"
    LOCATE 11, 26
    PRINT "AMOUNT"
    LOCATE 11, 45
    PRINT "MONTH"
    LOCATE 11, 60
    PRINT "AMOUNT"
    COLOR 7
    LOCATE 14, 6
    PRINT "JANUARY"
    LOCATE 14, 20
    INPUT "", jan

    LOCATE 16, 6
    PRINT "FEBRUARY"
    LOCATE 16, 20
    INPUT "", feb

    LOCATE 18, 6
    PRINT "MARCH"
    LOCATE 18, 20
    INPUT "", mar

    LOCATE 20, 6
    PRINT "APRIL"
    LOCATE 20, 20
    INPUT "", apr

    LOCATE 22, 6
    PRINT "MAY"
    LOCATE 22, 20
    INPUT "", may

    LOCATE 24, 6
    PRINT "JUNE"
    LOCATE 24, 20
    INPUT "", jun

    LOCATE 14, 43
    PRINT "JULY"
    LOCATE 14, 56
    INPUT "", jul

    LOCATE 16, 43
    PRINT "AUGUST"
    LOCATE 16, 56
    INPUT "", aug

    LOCATE 18, 43
    PRINT "SEPTEMBER"
    LOCATE 18, 56
    INPUT "", sep

    LOCATE 20, 43
    PRINT "OCTOBER"
    LOCATE 20, 56
    INPUT "", oct

    LOCATE 22, 43
    PRINT "NOVEMBER"
    LOCATE 22, 56
    INPUT "", nov

    LOCATE 24, 43
    PRINT "DECEMBER"
    LOCATE 24, 56
    INPUT "", dec


    WRITE #1, class1, n$, jan, feb, mar, apr, may, jun, jul, aug, sep, oct, nov, dec

    LOCATE 27, 23
    COLOR 7
    a$ = INPUT$(1)
    INPUT "do you want to continue(Y/N)"; a$
    a$ = UCASE$(a$)
    CLOSE #1
LOOP WHILE a$ = "Y"

END SUB

SUB display.bill.struct
CLS
OPEN "billstructure.dat" FOR INPUT AS #2
DO UNTIL EOF(2)
    CLS
    SCREEN 12
    LINE (10, 20)-(620, 460), 1, B 'outer box
    LINE (15, 25)-(615, 455), 4, B 'out inner box

    LINE (25, 30)-(605, 80), 8, B 'info box
    LINE (25, 30)-(140, 80), 8, B 'info box
    LOCATE 3, 22
    COLOR 2
    PRINT "****************************"
    LOCATE 4, 22
    COLOR 4
    PRINT "* * * BILL  STRUCTURE * * *"
    COLOR 2
    LOCATE 5, 22
    PRINT "****************************"

    LINE (25, 83)-(605, 450), 8, B 'inner box

    LINE (25, 83)-(605, 115), 8, B '1 inner box


    LINE (25, 83)-(605, 150), 8, B


    LINE (127, 150)-(130, 450), 8, B 'divider
    LINE (317, 150)-(320, 450), 8, B 'divider
    LINE (427, 150)-(430, 450), 8, B 'divider
    LINE (25, 150)-(27, 450), 8, B 'divider

    LINE (25, 187)-(605, 190), 8, B

    LINE (25, 225)-(605, 225), 8, B

    LINE (25, 260)-(605, 260), 8, B
    LINE (25, 295)-(605, 295), 8, B
    LINE (25, 330)-(605, 330), 8, B
    LINE (25, 365)-(605, 365), 8, B
    LINE (25, 400)-(605, 400), 8, B



    LINE (27, 390)-(605, 410), 4, BF
    LINE (27, 410)-(605, 430), 0, BF
    LINE (27, 430)-(605, 450), 6, BF

    LINE (427, 20)-(605, 140), 0, BF 'naration box

    INPUT #2, class1, n$, jan, feb, mar, apr, may, jun, jul, aug, sep, oct, nov, dec

    COLOR 1
    LOCATE 2, 55
    PRINT "NARATION INFORMATION"
    COLOR 10
    LOCATE 3, 55
    PRINT "Tuition Fee"
    LOCATE 4, 55
    PRINT "Exam fee"
    LOCATE 5, 55
    PRINT "Bus fee"
    LOCATE 6, 55
    PRINT "Library"
    LOCATE 7, 55
    PRINT "Computer"
    LOCATE 8, 55
    PRINT "Activities"
    LOCATE 9, 55
    PRINT "Other"

    COLOR 9
    LOCATE 4, 5
    PRINT "CLASS: "; class1

    LOCATE 7, 6
    COLOR 6
    PRINT "NARRATION: ", n$

    COLOR 7
    LOCATE 9, 12
    PRINT "* * * * MONTHLY STRUCTURE * * * *"

    LOCATE 11, 8
    COLOR 5
    PRINT "MONTH"
    LOCATE 11, 26
    PRINT "AMOUNT"
    LOCATE 11, 45
    PRINT "MONTH"
    LOCATE 11, 60
    PRINT "AMOUNT"

    COLOR 7
    LOCATE 14, 6
    PRINT "JANUARY"
    LOCATE 14, 20
    PRINT jan

    LOCATE 16, 6
    PRINT "FEBRUARY"
    LOCATE 16, 20
    PRINT feb

    LOCATE 18, 6
    PRINT "MARCH"
    LOCATE 18, 20
    PRINT mar

    LOCATE 20, 6
    PRINT "APRIL"
    LOCATE 20, 20
    PRINT apr

    LOCATE 22, 6
    PRINT "MAY"
    LOCATE 22, 20
    PRINT may

    LOCATE 24, 6
    PRINT "JUNE"
    LOCATE 24, 20
    PRINT jun

    LOCATE 14, 43
    PRINT "JULY"
    LOCATE 14, 56
    PRINT jul

    LOCATE 16, 43
    PRINT "AUGUST"
    LOCATE 16, 56
    PRINT aug

    LOCATE 18, 43
    PRINT "SEPTEMBER"
    LOCATE 18, 56
    PRINT sep

    LOCATE 20, 43
    PRINT "OCTOBER"
    LOCATE 20, 56
    PRINT oct

    LOCATE 22, 43
    PRINT "NOVEMBER"
    LOCATE 22, 56
    PRINT nov

    LOCATE 24, 43
    PRINT "DECEMBER"
    LOCATE 24, 56
    PRINT dec

    a$ = INPUT$(1)
    LOCATE 26, 23
    INPUT "press any key to continue"; a$
    a$ = UCASE$(a$)
LOOP
CLOSE #2
END SUB

SUB generate.bill
CLS
SCREEN 12
LOCATE 6, 35
COLOR 9
PRINT "LOADING..."
LINE (68, 108)-(570, 132), 9, B
LINE (70, 110)-(568, 130), 8, B
a = 72
LOCATE 10, 32
COLOR 11
PRINT "FEE GENERATION"
FOR i = 1 TO 20
    SLEEP 1
    LINE (a, 112)-(a + 20, 128), 2, BF
    a = a + 25
NEXT i

DO
    CLS
    SCREEN 12
    LINE (18, 28)-(622, 462), 1, B
    LINE (38, 109)-(168, 129), 1, B
    LOCATE 8, 6
    COLOR 4
    PRINT "date "; DATE$
    LINE (128, 138)-(502, 347), 1, B
    LINE (130, 140)-(500, 345), 1, B
    LOCATE 10, 24
    COLOR 6
    PRINT "* * * Fee Generation * * *"
    LINE (130, 162)-(500, 162), 8, B
    LINE (130, 164)-(500, 164), 8, B
    LINE (153, 164)-(153, 280), 8, B
    LINE (155, 164)-(155, 280), 8, B

    COLOR 4
    LOCATE 12, 18
    PRINT "*"
    LOCATE 13, 18
    PRINT "M"
    LOCATE 14, 18
    PRINT "E"
    LOCATE 15, 18
    PRINT "N"
    LOCATE 16, 18
    PRINT "U"
    LOCATE 17, 18
    PRINT "*"

    COLOR 5
    LINE (130, 281)-(500, 281), 8, B
    LINE (130, 283)-(500, 283), 8, B
    LINE (130, 310)-(500, 310), 8, B
    LINE (130, 312)-(500, 312), 8, B

    LOCATE 13, 23
    PRINT "1. Generate fee by Roll number"
    LOCATE 15, 23
    PRINT "2. generate fee by Name"
    LOCATE 17, 23
    PRINT "3. Exit"

    LOCATE 19, 24
    COLOR 4
    INPUT "enter your choice(1/2/3)"; ch
    SELECT CASE ch
        CASE 1
            CALL roll.generate.bill
        CASE 2
            CALL name.generate.bill
        CASE 3
            LOCATE 21, 24
            PRINT "thank you for using this program"
            EXIT DO

        CASE ELSE
            LOCATE 21, 27
            PRINT "please enter(1/2/3/)"
            SLEEP 1
    END SELECT
LOOP UNTIL ch = 1 OR ch = 2 OR ch = 3
END SUB

SUB roll.generate.bill
DO
    OPEN "studentrecord.dat" FOR INPUT AS #1
    found = 0
    debt = 0
    finaldebt = 0
    CLS
    SCREEN 12
    LINE (10, 20)-(620, 460), 1, B 'outer box
    LINE (15, 25)-(615, 455), 4, B 'out inner box
    LINE (20, 30)-(610, 100), 8, B 'info box
    LOCATE 3, 24

    COLOR 7
    PRINT "Mount Himalaya Eniglish School"
    LOCATE 4, 29
    PRINT "Kupondole , Lalitpur"
    LOCATE 5, 17
    PRINT "G.P.O Box no. 1500 phone: 015543781, 015443645 "
    LOCATE 6, 4
    PRINT "                                    "

    LINE (20, 103)-(610, 130), 8, B 'inner box
    LINE (20, 163)-(610, 199), 8, B '1 inner box
    COLOR 6
    LOCATE 8, 19
    PRINT "* * * * * STATEMENT OF SCHOOL FEES * * * * *"
    LINE (20, 133)-(610, 160), 8, B
    LOCATE 10, 5
    COLOR 9

    INPUT "Roll number"; roll$
    LOCATE 12, 5
    INPUT "for the month of:"; mon1
    DO UNTIL EOF(1)
        SCREEN 12
        LINE (10, 20)-(620, 460), 1, B 'outer box
        LINE (15, 25)-(615, 455), 4, B 'out inner box
        LINE (20, 30)-(610, 100), 8, B 'info box
        LOCATE 3, 24
        COLOR 7
        PRINT "Mount Himalaya Eniglish School"
        LOCATE 4, 29
        PRINT "Kupondole , Lalitpur"
        LOCATE 5, 17
        PRINT "G.P.O Box no. 1500 phone: 015543781, 015443645 "
        LOCATE 6, 4
        PRINT "                                    "

        LINE (20, 103)-(610, 130), 8, B 'inner box
        COLOR 6
        LOCATE 8, 19
        PRINT "* * * * * STATEMENT OF SCHOOL FEES * * * * *"
        LINE (20, 133)-(610, 160), 8, B


        INPUT #1, naam$, rollno$, class, add$
        IF roll$ = rollno$ THEN
            LOCATE 10, 25
            PRINT "Name: "; naam$
            LOCATE 10, 50
            COLOR 3
            PRINT "of  Class"; class
            found = 1
            OPEN "billstructure.dat" FOR INPUT AS #2
            debt = 0
            DO UNTIL EOF(2)
                INPUT #2, class1, n$, jan, feb, mar, apr, may, jun, jul, aug, sep, oct, nov, dec
                LINE (20, 163)-(610, 199), 8, B '1 inner box
                LINE (20, 201)-(610, 233), 8, B
                COLOR 5
                LOCATE 14, 12
                PRINT "NARRATION"
                LOCATE 14, 42
                PRINT "CREDIT"
                LOCATE 20, 42
                PRINT 0
                LOCATE 14, 63
                PRINT "DEBIT"
                LOCATE 27, 12
                PRINT "TOTAL"
                LINE (20, 199)-(23, 450), 8, B
                LINE (260, 199)-(263, 450), 8, B 'divider
                LINE (427, 199)-(430, 400), 8, B 'divider
                LINE (607, 199)-(610, 450), 8, B 'divider

                LINE (20, 400)-(610, 400), 8, B
                LINE (20, 450)-(610, 450), 8, B
                COLOR 3
                LOCATE 17, 12
                PRINT "tuition fee"
                LOCATE 18, 12
                PRINT "exam fee"
                LOCATE 19, 12
                PRINT "bus fee"
                LOCATE 20, 12
                PRINT "library"
                LOCATE 21, 12
                PRINT "computer"
                LOCATE 22, 12
                PRINT "activities"
                LOCATE 23, 12
                PRINT "other"
                LOCATE 24, 12
                PRINT "miscellaneous"
                IF class = class1 AND mon1 = 1 AND LCASE$(n$) = "tuition fee" THEN
                    LOCATE 17, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 17, 63
                    COLOR 7
                    PRINT jan
                    debt = debt + jan
                END IF
                IF class = class1 AND mon1 = 1 AND LCASE$(n$) = "exam fee" THEN
                    LOCATE 18, 12
                    COLOR 3
                    'PRINT n$
                    LOCATE 18, 63
                    COLOR 7
                    PRINT jan
                    debt = debt + jan
                END IF
                IF class = class1 AND mon1 = 1 AND LCASE$(n$) = "bus fee" THEN
                    LOCATE 19, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 19, 63
                    COLOR 7
                    PRINT jan
                    debt = debt + jan
                END IF
                IF class = class1 AND mon1 = 1 AND LCASE$(n$) = "library" THEN
                    LOCATE 20, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 20, 63
                    COLOR 7
                    PRINT jan
                    debt = debt + jan
                END IF
                IF class = class1 AND mon1 = 1 AND LCASE$(n$) = "computer" THEN
                    LOCATE 21, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 21, 63
                    COLOR 7
                    PRINT jan
                    debt = debt + jan
                END IF
                IF class = class1 AND mon1 = 1 AND LCASE$(n$) = "activities" THEN
                    LOCATE 22, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 22, 63
                    COLOR 7
                    PRINT jan
                    debt = debt + jan
                END IF
                IF class = class1 AND mon1 = 1 AND LCASE$(n$) = "other" THEN
                    LOCATE 23, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 23, 63
                    COLOR 7
                    PRINT jan
                    debt = debt + jan
                END IF

                IF class = class1 AND mon1 = 2 AND LCASE$(n$) = "tuition fee" THEN
                    LOCATE 17, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 17, 63
                    COLOR 7
                    PRINT feb
                    debt = debt + feb
                END IF
                IF class = class1 AND mon1 = 2 AND LCASE$(n$) = "exam fee" THEN
                    LOCATE 18, 12
                    COLOR 3
                    'PRINT n$
                    LOCATE 18, 63
                    COLOR 7
                    PRINT feb
                    debt = debt + feb
                END IF
                IF class = class1 AND mon1 = 2 AND LCASE$(n$) = "bus fee" THEN
                    LOCATE 19, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 19, 63
                    COLOR 7
                    PRINT feb
                    debt = debt + feb
                END IF
                IF class = class1 AND mon1 = 2 AND LCASE$(n$) = "library" THEN
                    LOCATE 20, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 20, 63
                    COLOR 7
                    PRINT feb
                    debt = debt + feb
                END IF
                IF class = class1 AND mon1 = 2 AND LCASE$(n$) = "computer" THEN
                    LOCATE 21, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 21, 63
                    COLOR 7
                    PRINT feb
                    debt = debt + feb
                END IF
                IF class = class1 AND mon1 = 2 AND LCASE$(n$) = "activities" THEN
                    LOCATE 22, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 22, 63
                    COLOR 7
                    PRINT feb
                    debt = debt + feb
                END IF
                IF class = class1 AND mon1 = 2 AND LCASE$(n$) = "other" THEN
                    LOCATE 23, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 23, 63
                    COLOR 7
                    PRINT feb
                    debt = debt + feb
                END IF

                IF class = class1 AND mon1 = 3 AND LCASE$(n$) = "tuition fee" THEN
                    LOCATE 17, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 17, 63
                    COLOR 7
                    PRINT mar
                    debt = debt + mar
                END IF
                IF class = class1 AND mon1 = 3 AND LCASE$(n$) = "exam fee" THEN
                    LOCATE 18, 12
                    COLOR 3
                    ' PRINT n$
                    LOCATE 18, 63
                    COLOR 7
                    PRINT mar
                    debt = debt + mar
                END IF
                IF class = class1 AND mon1 = 3 AND LCASE$(n$) = "bus fee" THEN
                    LOCATE 19, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 19, 63
                    COLOR 7
                    PRINT mar
                    debt = debt + mar
                END IF
                IF class = class1 AND mon1 = 3 AND LCASE$(n$) = "library" THEN
                    LOCATE 20, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 20, 63
                    COLOR 7
                    PRINT mar
                    debt = debt + mar
                END IF
                IF class = class1 AND mon1 = 3 AND LCASE$(n$) = "computer" THEN
                    LOCATE 21, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 21, 63
                    COLOR 7
                    PRINT mar
                    debt = debt + mar
                END IF
                IF class = class1 AND mon1 = 3 AND LCASE$(n$) = "activities" THEN
                    LOCATE 22, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 22, 63
                    COLOR 7
                    PRINT mar
                    debt = debt + mar
                END IF
                IF class = class1 AND mon1 = 3 AND LCASE$(n$) = "other" THEN
                    LOCATE 23, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 23, 63
                    COLOR 7
                    PRINT mar
                    debt = debt + mar
                END IF

                IF class = class1 AND mon1 = 4 AND LCASE$(n$) = "tuition fee" THEN
                    LOCATE 17, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 17, 63
                    COLOR 7
                    PRINT apr
                    debt = debt + apr
                END IF
                IF class = class1 AND mon1 = 4 AND LCASE$(n$) = "exam fee" THEN
                    LOCATE 18, 12
                    COLOR 3
                    'PRINT n$
                    LOCATE 18, 63
                    COLOR 7
                    PRINT apr
                    debt = debt + apr
                END IF
                IF class = class1 AND mon1 = 4 AND LCASE$(n$) = "bus fee" THEN
                    LOCATE 19, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 19, 63
                    COLOR 7
                    PRINT apr
                    debt = debt + apr
                END IF
                IF class = class1 AND mon1 = 4 AND LCASE$(n$) = "library" THEN
                    LOCATE 20, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 20, 63
                    COLOR 7
                    PRINT apr
                    debt = debt + apr
                END IF
                IF class = class1 AND mon1 = 4 AND LCASE$(n$) = "computer" THEN
                    LOCATE 21, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 21, 63
                    COLOR 7
                    PRINT apr
                    debt = debt + apr
                END IF
                IF class = class1 AND mon1 = 4 AND LCASE$(n$) = "activities" THEN
                    LOCATE 22, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 22, 63
                    COLOR 7
                    PRINT apr
                    debt = debt + apr
                END IF
                IF class = class1 AND mon1 = 4 AND LCASE$(n$) = "other" THEN
                    LOCATE 23, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 23, 63
                    COLOR 7
                    PRINT apr
                    debt = debt + apr
                END IF

                IF class = class1 AND mon1 = 5 AND LCASE$(n$) = "tuition fee" THEN
                    LOCATE 17, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 17, 63
                    COLOR 7
                    PRINT may
                    debt = debt + may
                END IF
                IF class = class1 AND mon1 = 5 AND LCASE$(n$) = "exam fee" THEN
                    LOCATE 18, 12
                    COLOR 3
                    'PRINT n$
                    LOCATE 18, 63
                    COLOR 7
                    PRINT may
                    debt = debt + may
                END IF
                IF class = class1 AND mon1 = 5 AND LCASE$(n$) = "bus fee" THEN
                    LOCATE 19, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 19, 63
                    COLOR 7
                    PRINT may
                    debt = debt + may
                END IF
                IF class = class1 AND mon1 = 5 AND LCASE$(n$) = "library" THEN
                    LOCATE 20, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 20, 63
                    COLOR 7
                    PRINT may
                    debt = debt + may
                END IF
                IF class = class1 AND mon1 = 5 AND LCASE$(n$) = "computer" THEN
                    LOCATE 21, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 21, 63
                    COLOR 7
                    PRINT may
                    debt = debt + may
                END IF
                IF class = class1 AND mon1 = 5 AND LCASE$(n$) = "activities" THEN
                    LOCATE 22, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 22, 63
                    COLOR 7
                    PRINT may
                    debt = debt + may
                END IF
                IF class = class1 AND mon1 = 5 AND LCASE$(n$) = "other" THEN
                    LOCATE 23, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 23, 63
                    COLOR 7
                    PRINT may
                    debt = debt + may
                END IF

                IF class = class1 AND mon1 = 6 AND LCASE$(n$) = "tuition fee" THEN
                    LOCATE 17, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 17, 63
                    COLOR 7
                    PRINT jun
                    debt = debt + jun
                END IF
                IF class = class1 AND mon1 = 6 AND LCASE$(n$) = "exam fee" THEN
                    LOCATE 18, 12
                    COLOR 3
                    'PRINT n$
                    LOCATE 18, 63
                    COLOR 7
                    PRINT jun
                    debt = debt + jun
                END IF
                IF class = class1 AND mon1 = 6 AND LCASE$(n$) = "bus fee" THEN
                    LOCATE 19, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 19, 63
                    COLOR 7
                    PRINT jun
                    debt = debt + jun
                END IF
                IF class = class1 AND mon1 = 6 AND LCASE$(n$) = "library" THEN
                    LOCATE 20, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 20, 63
                    COLOR 7
                    PRINT jun
                    debt = debt + jun
                END IF
                IF class = class1 AND mon1 = 6 AND LCASE$(n$) = "computer" THEN
                    LOCATE 21, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 21, 63
                    COLOR 7
                    PRINT jun
                    debt = debt + jun
                END IF
                IF class = class1 AND mon1 = 6 AND LCASE$(n$) = "activities" THEN
                    LOCATE 22, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 22, 63
                    COLOR 7
                    PRINT jun
                    debt = debt + jun
                END IF
                IF class = class1 AND mon1 = 6 AND LCASE$(n$) = "other" THEN
                    LOCATE 23, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 23, 63
                    COLOR 7
                    PRINT jun
                    debt = debt + jun
                END IF

                IF class = class1 AND mon1 = 7 AND LCASE$(n$) = "tuition fee" THEN
                    LOCATE 17, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 17, 63
                    COLOR 7
                    PRINT jul
                    debt = debt + jul
                END IF
                IF class = class1 AND mon1 = 7 AND LCASE$(n$) = "exam fee" THEN
                    LOCATE 18, 12
                    COLOR 3
                    'PRINT n$
                    LOCATE 18, 63
                    COLOR 7
                    PRINT jul
                    debt = debt + jul
                END IF
                IF class = class1 AND mon1 = 7 AND LCASE$(n$) = "bus fee" THEN
                    LOCATE 19, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 19, 63
                    COLOR 7
                    PRINT jul
                    debt = debt + jul
                END IF
                IF class = class1 AND mon1 = 7 AND LCASE$(n$) = "library" THEN
                    LOCATE 20, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 20, 63
                    COLOR 7
                    PRINT jul
                    debt = debt + jul
                END IF
                IF class = class1 AND mon1 = 7 AND LCASE$(n$) = "computer" THEN
                    LOCATE 21, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 21, 63
                    COLOR 7
                    PRINT jul
                    debt = debt + jul
                END IF
                IF class = class1 AND mon1 = 7 AND LCASE$(n$) = "activities" THEN
                    LOCATE 22, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 22, 63
                    COLOR 7
                    PRINT jul
                    debt = debt + jul
                END IF
                IF class = class1 AND mon1 = 7 AND LCASE$(n$) = "other" THEN
                    LOCATE 23, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 23, 63
                    COLOR 7
                    PRINT jul
                    debt = debt + jul
                END IF

                IF class = class1 AND mon1 = 8 AND LCASE$(n$) = "tuition fee" THEN
                    LOCATE 17, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 17, 63
                    COLOR 7
                    PRINT aug
                    debt = debt + aug
                END IF
                IF class = class1 AND mon1 = 8 AND LCASE$(n$) = "exam fee" THEN
                    LOCATE 18, 12
                    COLOR 3
                    'PRINT n$
                    LOCATE 18, 63
                    COLOR 7
                    PRINT aug
                    debt = debt + aug
                END IF
                IF class = class1 AND mon1 = 8 AND LCASE$(n$) = "bus fee" THEN
                    LOCATE 19, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 19, 63
                    COLOR 7
                    PRINT aug
                    debt = debt + aug
                END IF
                IF class = class1 AND mon1 = 8 AND LCASE$(n$) = "library" THEN
                    LOCATE 20, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 20, 63
                    COLOR 7
                    PRINT aug
                    debt = debt + aug
                END IF
                IF class = class1 AND mon1 = 8 AND LCASE$(n$) = "computer" THEN
                    LOCATE 21, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 21, 63
                    COLOR 7
                    PRINT aug
                    debt = debt + aug
                END IF
                IF class = class1 AND mon1 = 8 AND LCASE$(n$) = "activities" THEN
                    LOCATE 22, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 22, 63
                    COLOR 7
                    PRINT aug
                    debt = debt + aug
                END IF
                IF class = class1 AND mon1 = 8 AND LCASE$(n$) = "other" THEN
                    LOCATE 23, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 23, 63
                    COLOR 7
                    PRINT aug
                    debt = debt + aug
                END IF

                IF class = class1 AND mon1 = 9 AND LCASE$(n$) = "tuition fee" THEN
                    LOCATE 17, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 17, 63
                    COLOR 7
                    PRINT sep
                    debt = debt + sep
                END IF
                IF class = class1 AND mon1 = 9 AND LCASE$(n$) = "exam fee" THEN
                    LOCATE 18, 12
                    COLOR 3
                    'PRINT n$
                    LOCATE 18, 63
                    COLOR 7
                    PRINT sep
                    debt = debt + sep
                END IF
                IF class = class1 AND mon1 = 9 AND LCASE$(n$) = "bus fee" THEN
                    LOCATE 19, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 19, 63
                    COLOR 7
                    PRINT sep
                    debt = debt + sep
                END IF
                IF class = class1 AND mon1 = 9 AND LCASE$(n$) = "library" THEN
                    LOCATE 20, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 20, 63
                    COLOR 7
                    PRINT sep
                    debt = debt + sep
                END IF
                IF class = class1 AND mon1 = 9 AND LCASE$(n$) = "computer" THEN
                    LOCATE 21, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 21, 63
                    COLOR 7
                    PRINT sep
                    debt = debt + sep
                END IF
                IF class = class1 AND mon1 = 9 AND LCASE$(n$) = "activities" THEN
                    LOCATE 22, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 22, 63
                    COLOR 7
                    PRINT sep
                    debt = debt + sep
                END IF
                IF class = class1 AND mon1 = 9 AND LCASE$(n$) = "other" THEN
                    LOCATE 23, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 23, 63
                    COLOR 7
                    PRINT sep
                    debt = debt + sep
                END IF

                IF class = class1 AND mon1 = 10 AND LCASE$(n$) = "tuition fee" THEN
                    LOCATE 17, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 17, 63
                    COLOR 7
                    PRINT oct
                    debt = debt + oct
                END IF
                IF class = class1 AND mon1 = 10 AND LCASE$(n$) = "exam fee" THEN
                    LOCATE 18, 12
                    COLOR 3
                    'PRINT n$
                    LOCATE 18, 63
                    COLOR 7
                    PRINT oct
                    debt = debt + oct
                END IF
                IF class = class1 AND mon1 = 10 AND LCASE$(n$) = "bus fee" THEN
                    LOCATE 19, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 19, 63
                    COLOR 7
                    PRINT oct
                    debt = debt + oct
                END IF
                IF class = class1 AND mon1 = 10 AND LCASE$(n$) = "library" THEN
                    LOCATE 20, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 20, 63
                    COLOR 7
                    PRINT oct
                    debt = debt + oct
                END IF
                IF class = class1 AND mon1 = 10 AND LCASE$(n$) = "computer" THEN
                    LOCATE 21, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 21, 63
                    COLOR 7
                    PRINT oct
                    debt = debt + oct
                END IF
                IF class = class1 AND mon1 = 10 AND LCASE$(n$) = "activities" THEN
                    LOCATE 22, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 22, 63
                    COLOR 7
                    PRINT oct
                    debt = debt + oct
                END IF
                IF class = class1 AND mon1 = 10 AND LCASE$(n$) = "other" THEN
                    LOCATE 23, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 23, 63
                    COLOR 7
                    PRINT oct
                    debt = debt + oct
                END IF

                IF class = class1 AND mon1 = 11 AND LCASE$(n$) = "tuition fee" THEN
                    LOCATE 17, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 17, 63
                    COLOR 7
                    PRINT nov
                    debt = debt + nov
                END IF
                IF class = class1 AND mon1 = 11 AND LCASE$(n$) = "exam fee" THEN
                    LOCATE 18, 12
                    COLOR 3
                    'PRINT n$
                    LOCATE 18, 63
                    COLOR 7
                    PRINT nov
                    debt = debt + nov
                END IF
                IF class = class1 AND mon1 = 11 AND LCASE$(n$) = "bus fee" THEN
                    LOCATE 19, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 19, 63
                    COLOR 7
                    PRINT nov
                    debt = debt + nov
                END IF
                IF class = class1 AND mon1 = 11 AND LCASE$(n$) = "library" THEN
                    LOCATE 20, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 20, 63
                    COLOR 7
                    PRINT nov
                    debt = debt + nov
                END IF
                IF class = class1 AND mon1 = 11 AND LCASE$(n$) = "computer" THEN
                    LOCATE 21, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 21, 63
                    COLOR 7
                    PRINT nov
                    debt = debt + nov
                END IF
                IF class = class1 AND mon1 = 11 AND LCASE$(n$) = "activities" THEN
                    LOCATE 22, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 22, 63
                    COLOR 7
                    PRINT nov
                    debt = debt + nov
                END IF
                IF class = class1 AND mon1 = 11 AND LCASE$(n$) = "other" THEN
                    LOCATE 23, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 23, 63
                    COLOR 7
                    PRINT nov
                    debt = debt + nov
                END IF
                IF class = class1 AND mon1 = 12 AND LCASE$(n$) = "tuition fee" THEN
                    LOCATE 17, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 17, 63
                    COLOR 7
                    PRINT dec
                    debt = debt + dec
                END IF
                IF class = class1 AND mon1 = 12 AND LCASE$(n$) = "exam fee" THEN
                    LOCATE 18, 12
                    COLOR 3
                    'PRINT n$
                    LOCATE 18, 63
                    COLOR 7
                    PRINT dec
                    debt = debt + dec
                END IF
                IF class = class1 AND mon1 = 12 AND LCASE$(n$) = "bus fee" THEN
                    LOCATE 19, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 19, 63
                    COLOR 7
                    PRINT dec
                    debt = debt + dec
                END IF
                IF class = class1 AND mon1 = 12 AND LCASE$(n$) = "library" THEN
                    LOCATE 20, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 20, 63
                    COLOR 7
                    PRINT dec
                    debt = debt + dec
                END IF
                IF class = class1 AND mon1 = 12 AND LCASE$(n$) = "computer" THEN
                    LOCATE 21, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 21, 63
                    COLOR 7
                    PRINT dec
                    debt = debt + dec
                END IF
                IF class = class1 AND mon1 = 12 AND LCASE$(n$) = "activities" THEN
                    LOCATE 22, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 22, 63
                    COLOR 7
                    PRINT dec
                    debt = debt + dec
                END IF
                IF class = class1 AND mon1 = 12 AND LCASE$(n$) = "other" THEN
                    LOCATE 23, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 23, 63
                    COLOR 7
                    PRINT dec
                    debt = debt + dec
                END IF
            LOOP
            CLOSE #2
            ind.debt = 0
            OPEN "ind.billstructure.dat" FOR INPUT AS #4

            DO UNTIL EOF(4)
                INPUT #4, r$, n$, jan, feb, mar, apr, may, jun, jul, aug, sep, oct, nov, dec
                IF roll$ = r$ AND mon1 = 1 THEN
                    ind.debt = ind.debt + jan
                    LOCATE 24, 63
                    COLOR 7
                    PRINT ind.debt
                END IF
                IF roll$ = r$ AND mon1 = 2 THEN
                    ind.debt = ind.debt + feb
                    LOCATE 24, 63
                    COLOR 7
                    PRINT ind.debt
                END IF
                IF roll$ = r$ AND mon1 = 3 THEN
                    ind.debt = ind.debt + mar
                    LOCATE 24, 63
                    COLOR 7
                    PRINT ind.debt
                END IF
                IF roll$ = r$ AND mon1 = 4 THEN
                    ind.debt = ind.debt + apr
                    LOCATE 24, 63
                    COLOR 7
                    PRINT ind.debt
                END IF
                IF roll$ = r$ AND mon1 = 5 THEN
                    ind.debt = ind.debt + may
                    LOCATE 24, 63
                    COLOR 7
                    PRINT ind.debt
                END IF
                IF roll$ = r$ AND mon1 = 6 THEN
                    ind.debt = ind.debt + jun
                    LOCATE 24, 63
                    COLOR 7
                    PRINT ind.debt
                END IF
                IF roll$ = r$ AND mon1 = 7 THEN
                    ind.debt = ind.debt + jul
                    LOCATE 24, 63
                    COLOR 7
                    PRINT ind.debt
                END IF
                IF roll$ = r$ AND mon1 = 8 THEN
                    ind.debt = ind.debt + aug
                    LOCATE 24, 63
                    COLOR 7
                    PRINT ind.debt
                END IF
                IF roll$ = r$ AND mon1 = 9 THEN
                    ind.debt = ind.debt + sep
                    LOCATE 24, 63
                    COLOR 7
                    PRINT ind.debt
                END IF
                IF roll$ = r$ AND mon1 = 10 THEN
                    ind.debt = ind.debt + oct
                    LOCATE 24, 63
                    COLOR 7
                    PRINT ind.debt
                END IF
                IF roll$ = r$ AND mon1 = 11 THEN
                    ind.debt = ind.debt + nov
                    LOCATE 24, 63
                    COLOR 7
                    PRINT ind.debt
                END IF
                IF roll$ = r$ AND mon1 = 12 THEN
                    ind.debt = ind.debt + dec
                    LOCATE 24, 63
                    COLOR 7
                    PRINT ind.debt
                END IF

            LOOP
            CLOSE #4
        END IF
        finaldebt = debt + ind.debt
        LOCATE 27, 51
        PRINT finaldebt

    LOOP

    IF found = 0 THEN
        CLS
        SCREEN 12
        LINE (10, 20)-(620, 460), 1, B 'outer box
        LINE (15, 25)-(615, 455), 4, B 'out inner box
        LINE (20, 30)-(610, 100), 8, B 'info box
        LOCATE 3, 24
        COLOR 7
        PRINT "Mount Himalaya Eniglish School"
        LOCATE 4, 29
        PRINT "Kupondole , Lalitpur"
        LOCATE 5, 17
        PRINT "G.P.O Box no. 1500 phone: 015543781, 015443645 "
        LOCATE 6, 4
        PRINT "                                    "

        LINE (20, 103)-(610, 130), 8, B 'inner box
        COLOR 6
        LOCATE 8, 19
        PRINT "* * * * * STATEMENT OF SCHOOL FEES * * * * *"
        LINE (20, 133)-(610, 160), 8, B
        LOCATE 10, 25
        PRINT "WRONG ENTRY"
    END IF
    CLOSE #1
    COLOR 8
    LOCATE 28, 44
    a$ = INPUT$(1)
    INPUT "do you want to continue(Y/N)"; a$
    a$ = UCASE$(a$)
LOOP WHILE a$ = "Y"

END SUB

SUB name.generate.bill
DO
    OPEN "studentrecord.dat" FOR INPUT AS #1
    found = 0
    debt = 0
    finaldebt = 0
    CLS
    SCREEN 12
    LINE (10, 20)-(620, 460), 1, B 'outer box
    LINE (15, 25)-(615, 455), 4, B 'out inner box
    LINE (20, 30)-(610, 100), 8, B 'info box
    LOCATE 3, 24

    COLOR 7
    PRINT "Mount Himalaya Eniglish School"
    LOCATE 4, 29
    PRINT "Kupondole , Lalitpur"
    LOCATE 5, 17
    PRINT "G.P.O Box no. 1500 phone: 015543781, 015443645 "
    LOCATE 6, 4
    PRINT "                                    "

    LINE (20, 103)-(610, 130), 8, B 'inner box
    LINE (20, 163)-(610, 199), 8, B '1 inner box
    COLOR 6
    LOCATE 8, 19
    PRINT "* * * * * STATEMENT OF SCHOOL FEES * * * * *"
    LINE (20, 133)-(610, 160), 8, B
    LOCATE 10, 5
    COLOR 9
    INPUT "Name"; naam1$
    naam1$ = UCASE$(naam1$)
    LOCATE 12, 5
    INPUT "for the month of:"; mon1
    DO UNTIL EOF(1)
        SCREEN 12
        LINE (10, 20)-(620, 460), 1, B 'outer box
        LINE (15, 25)-(615, 455), 4, B 'out inner box
        LINE (20, 30)-(610, 100), 8, B 'info box
        LOCATE 3, 24
        COLOR 7
        PRINT "Mount Himalaya Eniglish School"
        LOCATE 4, 29
        PRINT "Kupondole , Lalitpur"
        LOCATE 5, 17
        PRINT "G.P.O Box no. 1500 phone: 015543781, 015443645 "
        LOCATE 6, 4
        PRINT "                                    "

        LINE (20, 103)-(610, 130), 8, B 'inner box
        COLOR 6
        LOCATE 8, 19
        PRINT "* * * * * STATEMENT OF SCHOOL FEES * * * * *"
        LINE (20, 133)-(610, 160), 8, B
        LOCATE 10, 5
        COLOR 9

        INPUT #1, naam$, rollno$, class, add$
        naam$ = UCASE$(naam$)
        IF naam$ = naam1$ THEN
            COLOR 6
            LOCATE 10, 35
            PRINT "Roll number: "; rollno$
            COLOR 3
            LOCATE 10, 60
            PRINT "of  Class: "; class
            found = 1
            OPEN "billstructure.dat" FOR INPUT AS #2
            debt = 0
            DO UNTIL EOF(2)
                INPUT #2, class1, n$, jan, feb, mar, apr, may, jun, jul, aug, sep, oct, nov, dec
                LINE (20, 163)-(610, 199), 8, B '1 inner box
                LINE (20, 201)-(610, 233), 8, B
                COLOR 5
                LOCATE 14, 12
                PRINT "NARRATION"
                LOCATE 14, 42
                PRINT "CREDIT"
                LOCATE 20, 42
                PRINT 0
                LOCATE 14, 63
                PRINT "DEBIT"
                LOCATE 27, 12
                PRINT "TOTAL"
                LINE (20, 199)-(23, 450), 8, B
                LINE (260, 199)-(263, 450), 8, B 'divider
                LINE (427, 199)-(430, 400), 8, B 'divider
                LINE (607, 199)-(610, 450), 8, B 'divider

                LINE (20, 400)-(610, 400), 8, B
                LINE (20, 450)-(610, 450), 8, B
                COLOR 3
                LOCATE 17, 12
                PRINT "tuition fee"
                LOCATE 18, 12
                PRINT "exam fee"
                LOCATE 19, 12
                PRINT "bus fee"
                LOCATE 20, 12
                PRINT "library"
                LOCATE 21, 12
                PRINT "computer"
                LOCATE 22, 12
                PRINT "activities"
                LOCATE 23, 12
                PRINT "other"
                LOCATE 24, 12
                PRINT "miscellaneous"

                IF class = class1 AND mon1 = 1 AND LCASE$(n$) = "tuition fee" THEN
                    LOCATE 17, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 17, 63
                    COLOR 7
                    PRINT jan
                    debt = debt + jan
                END IF
                IF class = class1 AND mon1 = 1 AND LCASE$(n$) = "exam fee" THEN
                    LOCATE 18, 12
                    COLOR 3
                    ' PRINT n$
                    LOCATE 18, 63
                    COLOR 7
                    PRINT jan
                    debt = debt + jan
                END IF
                IF class = class1 AND mon1 = 1 AND LCASE$(n$) = "bus fee" THEN
                    LOCATE 19, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 19, 63
                    COLOR 7
                    PRINT jan
                    debt = debt + jan
                END IF
                IF class = class1 AND mon1 = 1 AND LCASE$(n$) = "library" THEN
                    LOCATE 20, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 20, 63
                    COLOR 7
                    PRINT jan
                    debt = debt + jan
                END IF
                IF class = class1 AND mon1 = 1 AND LCASE$(n$) = "computer" THEN
                    LOCATE 21, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 21, 63
                    COLOR 7
                    PRINT jan
                    debt = debt + jan
                END IF
                IF class = class1 AND mon1 = 1 AND LCASE$(n$) = "activities" THEN
                    LOCATE 22, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 22, 63
                    COLOR 7
                    PRINT jan
                    debt = debt + jan
                END IF
                IF class = class1 AND mon1 = 1 AND LCASE$(n$) = "other" THEN
                    LOCATE 23, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 23, 63
                    COLOR 7
                    PRINT jan
                    debt = debt + jan
                END IF

                IF class = class1 AND mon1 = 2 AND LCASE$(n$) = "tuition fee" THEN
                    LOCATE 17, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 17, 63
                    COLOR 7
                    PRINT feb
                    debt = debt + feb
                END IF
                IF class = class1 AND mon1 = 2 AND LCASE$(n$) = "exam fee" THEN
                    LOCATE 18, 12
                    COLOR 3
                    'PRINT n$
                    LOCATE 18, 63
                    COLOR 7
                    PRINT feb
                    debt = debt + feb
                END IF
                IF class = class1 AND mon1 = 2 AND LCASE$(n$) = "bus fee" THEN
                    LOCATE 19, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 19, 63
                    COLOR 7
                    PRINT feb
                    debt = debt + feb
                END IF
                IF class = class1 AND mon1 = 2 AND LCASE$(n$) = "library" THEN
                    LOCATE 20, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 20, 63
                    COLOR 7
                    PRINT feb
                    debt = debt + feb
                END IF
                IF class = class1 AND mon1 = 2 AND LCASE$(n$) = "computer" THEN
                    LOCATE 21, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 21, 63
                    COLOR 7
                    PRINT feb
                    debt = debt + feb
                END IF
                IF class = class1 AND mon1 = 2 AND LCASE$(n$) = "activities" THEN
                    LOCATE 22, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 22, 63
                    COLOR 7
                    PRINT feb
                    debt = debt + feb
                END IF
                IF class = class1 AND mon1 = 2 AND LCASE$(n$) = "other" THEN
                    LOCATE 23, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 23, 63
                    COLOR 7
                    PRINT feb
                    debt = debt + feb
                END IF

                IF class = class1 AND mon1 = 3 AND LCASE$(n$) = "tuition fee" THEN
                    LOCATE 17, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 17, 63
                    COLOR 7
                    PRINT mar
                    debt = debt + mar
                END IF
                IF class = class1 AND mon1 = 3 AND LCASE$(n$) = "exam fee" THEN
                    LOCATE 18, 12
                    COLOR 3
                    'PRINT n$
                    LOCATE 18, 63
                    COLOR 7
                    PRINT mar
                    debt = debt + mar
                END IF
                IF class = class1 AND mon1 = 3 AND LCASE$(n$) = "bus fee" THEN
                    LOCATE 19, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 19, 63
                    COLOR 7
                    PRINT mar
                    debt = debt + mar
                END IF
                IF class = class1 AND mon1 = 3 AND LCASE$(n$) = "library" THEN
                    LOCATE 20, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 20, 63
                    COLOR 7
                    PRINT mar
                    debt = debt + mar
                END IF
                IF class = class1 AND mon1 = 3 AND LCASE$(n$) = "computer" THEN
                    LOCATE 21, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 21, 63
                    COLOR 7
                    PRINT mar
                    debt = debt + mar
                END IF
                IF class = class1 AND mon1 = 3 AND LCASE$(n$) = "activities" THEN
                    LOCATE 22, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 22, 63
                    COLOR 7
                    PRINT mar
                    debt = debt + mar
                END IF
                IF class = class1 AND mon1 = 3 AND LCASE$(n$) = "other" THEN
                    LOCATE 23, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 23, 63
                    COLOR 7
                    PRINT mar
                    debt = debt + mar
                END IF

                IF class = class1 AND mon1 = 4 AND LCASE$(n$) = "tuition fee" THEN
                    LOCATE 17, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 17, 63
                    COLOR 7
                    PRINT apr
                    debt = debt + apr
                END IF
                IF class = class1 AND mon1 = 4 AND LCASE$(n$) = "exam fee" THEN
                    LOCATE 18, 12
                    COLOR 3
                    'PRINT n$
                    LOCATE 18, 63
                    COLOR 7
                    PRINT apr
                    debt = debt + apr
                END IF
                IF class = class1 AND mon1 = 4 AND LCASE$(n$) = "bus fee" THEN
                    LOCATE 19, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 19, 63
                    COLOR 7
                    PRINT apr
                    debt = debt + apr
                END IF
                IF class = class1 AND mon1 = 4 AND LCASE$(n$) = "library" THEN
                    LOCATE 20, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 20, 63
                    COLOR 7
                    PRINT apr
                    debt = debt + apr
                END IF
                IF class = class1 AND mon1 = 4 AND LCASE$(n$) = "computer" THEN
                    LOCATE 21, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 21, 63
                    COLOR 7
                    PRINT apr
                    debt = debt + apr
                END IF
                IF class = class1 AND mon1 = 4 AND LCASE$(n$) = "activities" THEN
                    LOCATE 22, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 22, 63
                    COLOR 7
                    PRINT apr
                    debt = debt + apr
                END IF
                IF class = class1 AND mon1 = 4 AND LCASE$(n$) = "other" THEN
                    LOCATE 23, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 23, 63
                    COLOR 7
                    PRINT apr
                    debt = debt + apr
                END IF

                IF class = class1 AND mon1 = 5 AND LCASE$(n$) = "tuition fee" THEN
                    LOCATE 17, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 17, 63
                    COLOR 7
                    PRINT may
                    debt = debt + may
                END IF
                IF class = class1 AND mon1 = 5 AND LCASE$(n$) = "exam fee" THEN
                    LOCATE 18, 12
                    COLOR 3
                    'PRINT n$
                    LOCATE 18, 63
                    COLOR 7
                    PRINT may
                    debt = debt + may
                END IF
                IF class = class1 AND mon1 = 5 AND LCASE$(n$) = "bus fee" THEN
                    LOCATE 19, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 19, 63
                    COLOR 7
                    PRINT may
                    debt = debt + may
                END IF
                IF class = class1 AND mon1 = 5 AND LCASE$(n$) = "library" THEN
                    LOCATE 20, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 20, 63
                    COLOR 7
                    PRINT may
                    debt = debt + may
                END IF
                IF class = class1 AND mon1 = 5 AND LCASE$(n$) = "computer" THEN
                    LOCATE 21, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 21, 63
                    COLOR 7
                    PRINT may
                    debt = debt + may
                END IF
                IF class = class1 AND mon1 = 5 AND LCASE$(n$) = "activities" THEN
                    LOCATE 22, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 22, 63
                    COLOR 7
                    PRINT may
                    debt = debt + may
                END IF
                IF class = class1 AND mon1 = 5 AND LCASE$(n$) = "other" THEN
                    LOCATE 23, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 23, 63
                    COLOR 7
                    PRINT may
                    debt = debt + may
                END IF

                IF class = class1 AND mon1 = 6 AND LCASE$(n$) = "tuition fee" THEN
                    LOCATE 17, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 17, 63
                    COLOR 7
                    PRINT jun
                    debt = debt + jun
                END IF
                IF class = class1 AND mon1 = 6 AND LCASE$(n$) = "exam fee" THEN
                    LOCATE 18, 12
                    COLOR 3
                    ' PRINT n$
                    LOCATE 18, 63
                    COLOR 7
                    PRINT jun
                    debt = debt + jun
                END IF
                IF class = class1 AND mon1 = 6 AND LCASE$(n$) = "bus fee" THEN
                    LOCATE 19, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 19, 63
                    COLOR 7
                    PRINT jun
                    debt = debt + jun
                END IF
                IF class = class1 AND mon1 = 6 AND LCASE$(n$) = "library" THEN
                    LOCATE 20, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 20, 63
                    COLOR 7
                    PRINT jun
                    debt = debt + jun
                END IF
                IF class = class1 AND mon1 = 6 AND LCASE$(n$) = "computer" THEN
                    LOCATE 21, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 21, 63
                    COLOR 7
                    PRINT jun
                    debt = debt + jun
                END IF
                IF class = class1 AND mon1 = 6 AND LCASE$(n$) = "activities" THEN
                    LOCATE 22, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 22, 63
                    COLOR 7
                    PRINT jun
                    debt = debt + jun
                END IF
                IF class = class1 AND mon1 = 6 AND LCASE$(n$) = "other" THEN
                    LOCATE 23, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 23, 63
                    COLOR 7
                    PRINT jun
                    debt = debt + jun
                END IF

                IF class = class1 AND mon1 = 7 AND LCASE$(n$) = "tuition fee" THEN
                    LOCATE 17, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 17, 63
                    COLOR 7
                    PRINT jul
                    debt = debt + jul
                END IF
                IF class = class1 AND mon1 = 7 AND LCASE$(n$) = "exam fee" THEN
                    LOCATE 18, 12
                    COLOR 3
                    'PRINT n$
                    LOCATE 18, 63
                    COLOR 7
                    PRINT jul
                    debt = debt + jul
                END IF
                IF class = class1 AND mon1 = 7 AND LCASE$(n$) = "bus fee" THEN
                    LOCATE 19, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 19, 63
                    COLOR 7
                    PRINT jul
                    debt = debt + jul
                END IF
                IF class = class1 AND mon1 = 7 AND LCASE$(n$) = "library" THEN
                    LOCATE 20, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 20, 63
                    COLOR 7
                    PRINT jul
                    debt = debt + jul
                END IF
                IF class = class1 AND mon1 = 7 AND LCASE$(n$) = "computer" THEN
                    LOCATE 21, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 21, 63
                    COLOR 7
                    PRINT jul
                    debt = debt + jul
                END IF
                IF class = class1 AND mon1 = 7 AND LCASE$(n$) = "activities" THEN
                    LOCATE 22, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 22, 63
                    COLOR 7
                    PRINT jul
                    debt = debt + jul
                END IF
                IF class = class1 AND mon1 = 7 AND LCASE$(n$) = "other" THEN
                    LOCATE 23, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 23, 63
                    COLOR 7
                    PRINT jul
                    debt = debt + jul
                END IF

                IF class = class1 AND mon1 = 8 AND LCASE$(n$) = "tuition fee" THEN
                    LOCATE 17, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 17, 63
                    COLOR 7
                    PRINT aug
                    debt = debt + aug
                END IF
                IF class = class1 AND mon1 = 8 AND LCASE$(n$) = "exam fee" THEN
                    LOCATE 18, 12
                    COLOR 3
                    'PRINT n$
                    LOCATE 18, 63
                    COLOR 7
                    PRINT aug
                    debt = debt + aug
                END IF
                IF class = class1 AND mon1 = 8 AND LCASE$(n$) = "bus fee" THEN
                    LOCATE 19, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 19, 63
                    COLOR 7
                    PRINT aug
                    debt = debt + aug
                END IF
                IF class = class1 AND mon1 = 8 AND LCASE$(n$) = "library" THEN
                    LOCATE 20, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 20, 63
                    COLOR 7
                    PRINT aug
                    debt = debt + aug
                END IF
                IF class = class1 AND mon1 = 8 AND LCASE$(n$) = "computer" THEN
                    LOCATE 21, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 21, 63
                    COLOR 7
                    PRINT aug
                    debt = debt + aug
                END IF
                IF class = class1 AND mon1 = 8 AND LCASE$(n$) = "activities" THEN
                    LOCATE 22, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 22, 63
                    COLOR 7
                    PRINT aug
                    debt = debt + aug
                END IF
                IF class = class1 AND mon1 = 8 AND LCASE$(n$) = "other" THEN
                    LOCATE 23, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 23, 63
                    COLOR 7
                    PRINT aug
                    debt = debt + aug
                END IF

                IF class = class1 AND mon1 = 9 AND LCASE$(n$) = "tuition fee" THEN
                    LOCATE 17, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 17, 63
                    COLOR 7
                    PRINT sep
                    debt = debt + sep
                END IF
                IF class = class1 AND mon1 = 9 AND LCASE$(n$) = "exam fee" THEN
                    LOCATE 18, 12
                    COLOR 3
                    'PRINT n$
                    LOCATE 18, 63
                    COLOR 7
                    PRINT sep
                    debt = debt + sep
                END IF
                IF class = class1 AND mon1 = 9 AND LCASE$(n$) = "bus fee" THEN
                    LOCATE 19, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 19, 63
                    COLOR 7
                    PRINT sep
                    debt = debt + sep
                END IF
                IF class = class1 AND mon1 = 9 AND LCASE$(n$) = "library" THEN
                    LOCATE 20, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 20, 63
                    COLOR 7
                    PRINT sep
                    debt = debt + sep
                END IF
                IF class = class1 AND mon1 = 9 AND LCASE$(n$) = "computer" THEN
                    LOCATE 21, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 21, 63
                    COLOR 7
                    PRINT sep
                    debt = debt + sep
                END IF
                IF class = class1 AND mon1 = 9 AND LCASE$(n$) = "activities" THEN
                    LOCATE 22, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 22, 63
                    COLOR 7
                    PRINT sep
                    debt = debt + sep
                END IF
                IF class = class1 AND mon1 = 9 AND LCASE$(n$) = "other" THEN
                    LOCATE 23, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 23, 63
                    COLOR 7
                    PRINT sep
                    debt = debt + sep
                END IF

                IF class = class1 AND mon1 = 10 AND LCASE$(n$) = "tuition fee" THEN
                    LOCATE 17, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 17, 63
                    COLOR 7
                    PRINT oct
                    debt = debt + oct
                END IF
                IF class = class1 AND mon1 = 10 AND LCASE$(n$) = "exam fee" THEN
                    LOCATE 18, 12
                    COLOR 3
                    'PRINT n$
                    LOCATE 18, 63
                    COLOR 7
                    PRINT oct
                    debt = debt + oct
                END IF
                IF class = class1 AND mon1 = 10 AND LCASE$(n$) = "bus fee" THEN
                    LOCATE 19, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 19, 63
                    COLOR 7
                    PRINT oct
                    debt = debt + oct
                END IF
                IF class = class1 AND mon1 = 10 AND LCASE$(n$) = "library" THEN
                    LOCATE 20, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 20, 63
                    COLOR 7
                    PRINT oct
                    debt = debt + oct
                END IF
                IF class = class1 AND mon1 = 10 AND LCASE$(n$) = "computer" THEN
                    LOCATE 21, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 21, 63
                    COLOR 7
                    PRINT oct
                    debt = debt + oct
                END IF
                IF class = class1 AND mon1 = 10 AND LCASE$(n$) = "activities" THEN
                    LOCATE 22, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 22, 63
                    COLOR 7
                    PRINT oct
                    debt = debt + oct
                END IF
                IF class = class1 AND mon1 = 10 AND LCASE$(n$) = "other" THEN
                    LOCATE 23, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 23, 63
                    COLOR 7
                    PRINT oct
                    debt = debt + oct
                END IF

                IF class = class1 AND mon1 = 11 AND LCASE$(n$) = "tuition fee" THEN
                    LOCATE 17, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 17, 63
                    COLOR 7
                    PRINT nov
                    debt = debt + nov
                END IF
                IF class = class1 AND mon1 = 11 AND LCASE$(n$) = "exam fee" THEN
                    LOCATE 18, 12
                    COLOR 3
                    'PRINT n$
                    LOCATE 18, 63
                    COLOR 7
                    PRINT nov
                    debt = debt + nov
                END IF
                IF class = class1 AND mon1 = 11 AND LCASE$(n$) = "bus fee" THEN
                    LOCATE 19, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 19, 63
                    COLOR 7
                    PRINT nov
                    debt = debt + nov
                END IF
                IF class = class1 AND mon1 = 11 AND LCASE$(n$) = "library" THEN
                    LOCATE 20, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 20, 63
                    COLOR 7
                    PRINT nov
                    debt = debt + nov
                END IF
                IF class = class1 AND mon1 = 11 AND LCASE$(n$) = "computer" THEN
                    LOCATE 21, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 21, 63
                    COLOR 7
                    PRINT nov
                    debt = debt + nov
                END IF
                IF class = class1 AND mon1 = 11 AND LCASE$(n$) = "activities" THEN
                    LOCATE 22, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 22, 63
                    COLOR 7
                    PRINT nov
                    debt = debt + nov
                END IF
                IF class = class1 AND mon1 = 11 AND LCASE$(n$) = "other" THEN
                    LOCATE 23, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 23, 63
                    COLOR 7
                    PRINT nov
                    debt = debt + nov
                END IF
                IF class = class1 AND mon1 = 12 AND LCASE$(n$) = "tuition fee" THEN
                    LOCATE 17, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 17, 63
                    COLOR 7
                    PRINT dec
                    debt = debt + dec
                END IF
                IF class = class1 AND mon1 = 12 AND LCASE$(n$) = "exam fee" THEN
                    LOCATE 18, 12
                    COLOR 3
                    'PRINT n$
                    LOCATE 18, 63
                    COLOR 7
                    PRINT dec
                    debt = debt + dec
                END IF
                IF class = class1 AND mon1 = 12 AND LCASE$(n$) = "bus fee" THEN
                    LOCATE 19, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 19, 63
                    COLOR 7
                    PRINT dec
                    debt = debt + dec
                END IF
                IF class = class1 AND mon1 = 12 AND LCASE$(n$) = "library" THEN
                    LOCATE 20, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 20, 63
                    COLOR 7
                    PRINT dec
                    debt = debt + dec
                END IF
                IF class = class1 AND mon1 = 12 AND LCASE$(n$) = "computer" THEN
                    LOCATE 21, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 21, 63
                    COLOR 7
                    PRINT dec
                    debt = debt + dec
                END IF
                IF class = class1 AND mon1 = 12 AND LCASE$(n$) = "activities" THEN
                    LOCATE 22, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 22, 63
                    COLOR 7
                    PRINT dec
                    debt = debt + dec
                END IF
                IF class = class1 AND mon1 = 12 AND LCASE$(n$) = "other" THEN
                    LOCATE 23, 12
                    COLOR 3
                    PRINT n$
                    LOCATE 23, 63
                    COLOR 7
                    PRINT dec
                    debt = debt + dec
                END IF
            LOOP
            CLOSE #2
            ind.debt = 0
            OPEN "ind.billstructure.dat" FOR INPUT AS #4

            DO UNTIL EOF(4)
                INPUT #4, r$, n$, jan, feb, mar, apr, may, jun, jul, aug, sep, oct, nov, dec
                IF rollno$ = r$ AND mon1 = 1 THEN
                    ind.debt = ind.debt + jan
                    LOCATE 24, 63
                    PRINT ind.debt
                END IF
                IF rollno$ = r$ AND mon1 = 2 THEN
                    ind.debt = ind.debt + feb
                    LOCATE 24, 63
                    PRINT ind.debt
                END IF
                IF rollno$ = r$ AND mon1 = 3 THEN
                    ind.debt = ind.debt + mar
                    LOCATE 24, 63
                    PRINT ind.debt
                END IF
                IF rollno$ = r$ AND mon1 = 4 THEN
                    ind.debt = ind.debt + apr
                    LOCATE 24, 63
                    PRINT ind.debt
                END IF
                IF rollno$ = r$ AND mon1 = 5 THEN
                    ind.debt = ind.debt + may
                    LOCATE 24, 63
                    PRINT ind.debt
                END IF
                IF rollno$ = r$ AND mon1 = 6 THEN
                    ind.debt = ind.debt + jun
                    LOCATE 24, 63
                    PRINT ind.debt
                END IF
                IF rollno$ = r$ AND mon1 = 7 THEN
                    ind.debt = ind.debt + jul
                    LOCATE 24, 63
                    PRINT ind.debt
                END IF
                IF rollno$ = r$ AND mon1 = 8 THEN
                    ind.debt = ind.debt + aug
                    LOCATE 24, 63
                    PRINT ind.debt
                END IF
                IF rollno$ = r$ AND mon1 = 9 THEN
                    ind.debt = ind.debt + sep
                    LOCATE 24, 63
                    PRINT ind.debt
                END IF
                IF rollno$ = r$ AND mon1 = 10 THEN
                    ind.debt = ind.debt + oct
                    LOCATE 24, 63
                    PRINT ind.debt
                END IF
                IF rollno$ = r$ AND mon1 = 11 THEN
                    ind.debt = ind.debt + nov
                    LOCATE 24, 63
                    PRINT ind.debt
                END IF
                IF rollno$ = r$ AND mon1 = 12 THEN
                    ind.debt = ind.debt + dec
                    LOCATE 24, 63
                    PRINT ind.debt
                END IF

            LOOP
            CLOSE #4
        END IF

        finaldebt = debt + ind.debt
        LOCATE 27, 51
        PRINT finaldebt

    LOOP
    IF found = 0 THEN
        CLS
        SCREEN 12
        LINE (10, 20)-(620, 460), 1, B 'outer box
        LINE (15, 25)-(615, 455), 4, B 'out inner box
        LINE (20, 30)-(610, 100), 8, B 'info box
        LOCATE 3, 24
        COLOR 7
        PRINT "Mount Himalaya Eniglish School"
        LOCATE 4, 29
        PRINT "Kupondole , Lalitpur"
        LOCATE 5, 17
        PRINT "G.P.O Box no. 1500 phone: 015543781, 015443645 "
        LOCATE 6, 4
        PRINT "                                    "

        LINE (20, 103)-(610, 130), 8, B 'inner box
        COLOR 6
        LOCATE 8, 19
        PRINT "* * * * * STATEMENT OF SCHOOL FEES * * * * *"
        LINE (20, 133)-(610, 160), 8, B
        LOCATE 10, 25
        PRINT "WRONG ENTRY"
    END IF
    CLOSE #1
    COLOR 8
    LOCATE 28, 44
    a$ = INPUT$(1)
    INPUT "do you want to continue(Y/N)"; a$
    a$ = UCASE$(a$)
LOOP WHILE a$ = "Y"
END SUB

SUB make.ind.bill.struct
DO
    OPEN "studentrecord.dat" FOR INPUT AS #1
    CLS
    SCREEN 12
    LINE (10, 20)-(620, 460), 1, B 'outer box
    LINE (15, 25)-(615, 455), 4, B 'out inner box

    LINE (25, 30)-(605, 80), 8, B 'info box
    LOCATE 3, 18
    COLOR 2
    PRINT "*******************************************"
    LOCATE 4, 19
    COLOR 7
    PRINT "* * * * MONTHLY  BILL  STRUCTURE * * * *"
    COLOR 2
    LOCATE 5, 18
    PRINT "*******************************************"

    LINE (25, 83)-(605, 450), 8, B 'inner box

    LINE (25, 83)-(605, 115), 8, B '1 inner box


    LINE (25, 83)-(605, 150), 8, B


    LINE (127, 150)-(130, 450), 8, B 'divider
    LINE (317, 150)-(320, 450), 8, B 'divider
    LINE (427, 150)-(430, 450), 8, B 'divider
    LINE (25, 150)-(27, 450), 8, B 'divider

    LINE (25, 187)-(605, 190), 8, B

    LINE (25, 225)-(605, 225), 8, B

    LINE (25, 260)-(605, 260), 8, B
    LINE (25, 295)-(605, 295), 8, B
    LINE (25, 330)-(605, 330), 8, B
    LINE (25, 365)-(605, 365), 8, B
    LINE (25, 400)-(605, 400), 8, B

    LINE (27, 390)-(605, 410), 4, BF
    LINE (27, 410)-(605, 430), 0, BF
    LINE (27, 430)-(605, 450), 6, BF

    COLOR 9
    LOCATE 7, 5
    INPUT "roll number:  "; r$

    DO UNTIL EOF(1)
        INPUT #1, naam$, rollno$, class, add$
        IF r$ = rollno$ THEN
            LOCATE 7, 30
            PRINT "Name:  "; naam$
            OPEN "ind.billstructure.dat" FOR APPEND AS #2
            LOCATE 9, 5
            COLOR 6
            INPUT "NARRATION"; n$

            LOCATE 11, 8

            COLOR 5
            PRINT "MONTH"
            LOCATE 11, 26
            PRINT "AMOUNT"
            LOCATE 11, 45
            PRINT "MONTH"
            LOCATE 11, 60
            PRINT "AMOUNT"
            COLOR 7
            LOCATE 14, 6
            PRINT "JANUARY"
            LOCATE 14, 20
            INPUT "", jan

            LOCATE 16, 6
            PRINT "FEBRUARY"
            LOCATE 16, 20
            INPUT "", feb

            LOCATE 18, 6
            PRINT "MARCH"
            LOCATE 18, 20
            INPUT "", mar

            LOCATE 20, 6
            PRINT "APRIL"
            LOCATE 20, 20
            INPUT "", apr

            LOCATE 22, 6
            PRINT "MAY"
            LOCATE 22, 20
            INPUT "", may

            LOCATE 24, 6
            PRINT "JUNE"
            LOCATE 24, 20
            INPUT "", jun

            LOCATE 14, 43
            PRINT "JULY"
            LOCATE 14, 56
            INPUT "", jul

            LOCATE 16, 43
            PRINT "AUGUST"
            LOCATE 16, 56
            INPUT "", aug

            LOCATE 18, 43
            PRINT "SEPTEMBER"
            LOCATE 18, 56
            INPUT "", sep

            LOCATE 20, 43
            PRINT "OCTOBER"
            LOCATE 20, 56
            INPUT "", oct

            LOCATE 22, 43
            PRINT "NOVEMBER"
            LOCATE 22, 56
            INPUT "", nov

            LOCATE 24, 43
            PRINT "DECEMBER"
            LOCATE 24, 56
            INPUT "", dec

            WRITE #2, r$, n$, jan, feb, mar, apr, may, jun, jul, aug, sep, oct, nov, dec

            CLOSE #2

            LOCATE 27, 23
            COLOR 7
            a$ = INPUT$(1)
            INPUT "do you want to continue(Y/N)"; a$
            a$ = UCASE$(a$)
        ELSE
        END IF
    LOOP
    CLOSE #1
LOOP WHILE a$ = "Y"
END SUB

SUB display.ind.bill.struct
DO

    CLS
    SCREEN 12
    LINE (10, 20)-(620, 460), 1, B 'outer box
    LINE (15, 25)-(615, 455), 4, B 'out inner box

    LINE (25, 30)-(605, 80), 8, B 'info box
    LOCATE 3, 18
    COLOR 2
    PRINT "*******************************************"
    LOCATE 4, 19
    COLOR 7
    PRINT "* * * * MONTHLY  BILL  STRUCTURE * * * *"
    COLOR 2
    LOCATE 5, 18
    PRINT "*******************************************"

    LINE (25, 83)-(605, 450), 8, B 'inner box
    LINE (25, 83)-(605, 115), 8, B '1 inner box

    LINE (25, 83)-(605, 150), 8, B
    LINE (127, 150)-(130, 450), 8, B 'divider
    LINE (317, 150)-(320, 450), 8, B 'divider
    LINE (427, 150)-(430, 450), 8, B 'divider
    LINE (25, 150)-(27, 450), 8, B 'divider

    LINE (25, 187)-(605, 190), 8, B
    LINE (25, 225)-(605, 225), 8, B
    LINE (25, 260)-(605, 260), 8, B
    LINE (25, 295)-(605, 295), 8, B
    LINE (25, 330)-(605, 330), 8, B
    LINE (25, 365)-(605, 365), 8, B
    LINE (25, 400)-(605, 400), 8, B

    LINE (27, 390)-(605, 410), 4, BF
    LINE (27, 410)-(605, 430), 0, BF
    LINE (27, 430)-(605, 450), 6, BF
    OPEN "ind.billstructure.dat" FOR INPUT AS #2
    DO UNTIL EOF(2)
        INPUT #2, r$, n$, jan, feb, mar, apr, may, jun, jul, aug, sep, oct, nov, dec

        LOCATE 7, 5
        COLOR 9
        PRINT "Roll number: ", r$

        LOCATE 9, 28
        COLOR 6
        PRINT "   "; n$; "   "
        LOCATE 11, 8

        COLOR 5
        PRINT "MONTH"
        LOCATE 11, 26
        PRINT "AMOUNT"
        LOCATE 11, 45
        PRINT "MONTH"
        LOCATE 11, 60
        PRINT "AMOUNT"
        COLOR 7
        LOCATE 14, 6
        PRINT "JANUARY"
        LOCATE 14, 20
        PRINT "", jan

        LOCATE 16, 6
        PRINT "FEBRUARY"
        LOCATE 16, 20
        PRINT "", feb

        LOCATE 18, 6
        PRINT "MARCH"
        LOCATE 18, 20
        PRINT "", mar

        LOCATE 20, 6
        PRINT "APRIL"
        LOCATE 20, 20
        PRINT "", apr

        LOCATE 22, 6
        PRINT "MAY"
        LOCATE 22, 20
        PRINT "", may

        LOCATE 24, 6
        PRINT "JUNE"
        LOCATE 24, 20
        PRINT "", jun

        LOCATE 14, 43
        PRINT "JULY"
        LOCATE 14, 56
        PRINT "", jul

        LOCATE 16, 43
        PRINT "AUGUST"
        LOCATE 16, 56
        PRINT "", aug

        LOCATE 18, 43
        PRINT "SEPTEMBER"
        LOCATE 18, 56
        PRINT "", sep

        LOCATE 20, 43
        PRINT "OCTOBER"
        LOCATE 20, 56
        PRINT "", oct

        LOCATE 22, 43
        PRINT "NOVEMBER"
        LOCATE 22, 56
        PRINT "", nov

        LOCATE 24, 43
        PRINT "DECEMBER"
        LOCATE 24, 56
        PRINT "", dec


        LOCATE 27, 23
        COLOR 7
        a$ = INPUT$(1)
        INPUT "Press any key to continue"; a$
    LOOP
    CLOSE #2
LOOP WHILE a$ = "Y"
END SUB

SUB edit.bill.struct
DO
    CLS
    SCREEN 12
    LINE (10, 20)-(620, 460), 1, B 'outer box
    LINE (15, 25)-(615, 455), 4, B 'out inner box

    LINE (25, 30)-(605, 80), 8, B 'info box
    LINE (25, 30)-(140, 80), 8, B 'info box
    LOCATE 3, 20
    COLOR 2
    PRINT "***********************************"
    LOCATE 4, 20
    COLOR 4
    PRINT "* * ENTER FOLLOWING FOR EDITING * *"
    COLOR 2
    LOCATE 5, 20
    PRINT "***********************************"

    LINE (25, 83)-(605, 450), 8, B 'inner box

    LINE (25, 83)-(605, 115), 8, B '1 inner box


    LINE (25, 83)-(605, 150), 8, B


    LINE (127, 150)-(130, 450), 8, B 'divider
    LINE (317, 150)-(320, 450), 8, B 'divider
    LINE (427, 150)-(430, 450), 8, B 'divider
    LINE (25, 150)-(27, 450), 8, B 'divider

    LINE (25, 187)-(605, 190), 8, B

    LINE (25, 225)-(605, 225), 8, B

    LINE (25, 260)-(605, 260), 8, B
    LINE (25, 295)-(605, 295), 8, B
    LINE (25, 330)-(605, 330), 8, B
    LINE (25, 365)-(605, 365), 8, B
    LINE (25, 400)-(605, 400), 8, B



    LINE (27, 390)-(605, 410), 4, BF
    LINE (27, 410)-(605, 430), 0, BF
    LINE (27, 430)-(605, 450), 6, BF

    LINE (427, 20)-(605, 140), 0, BF 'naration box
    COLOR 1
    LOCATE 2, 55
    PRINT "NARATION INFORMATION"
    COLOR 10
    LOCATE 3, 55
    PRINT "Tuition Fee"
    LOCATE 4, 55
    PRINT "Exam fee"
    LOCATE 5, 55
    PRINT "Bus fee"
    LOCATE 6, 55
    PRINT "Library"
    LOCATE 7, 55
    PRINT "Computer"
    LOCATE 8, 55
    PRINT "Activities"
    LOCATE 9, 55
    PRINT "Other"

    COLOR 9
    LOCATE 4, 6
    INPUT "CLASS: ", class

    LOCATE 7, 6
    COLOR 6
    INPUT "NARRATION"; nar$
    nar$ = UCASE$(nar$)
    OPEN "billstructure.dat" FOR INPUT AS #2
    OPEN "tempo.dat" FOR OUTPUT AS #1
    found = 0
    DO UNTIL EOF(2)
        CLS
        SCREEN 12
        LINE (10, 20)-(620, 460), 1, B 'outer box
        LINE (15, 25)-(615, 455), 4, B 'out inner box

        LINE (25, 30)-(605, 80), 8, B 'info box
        LINE (25, 30)-(140, 80), 8, B 'info box
        LOCATE 3, 22
        COLOR 2
        PRINT "****************************"
        LOCATE 4, 22
        COLOR 4
        PRINT "* * * BILL  STRUCTURE * * *"
        COLOR 2
        LOCATE 5, 22
        PRINT "****************************"

        LINE (25, 83)-(605, 450), 8, B 'inner box

        LINE (25, 83)-(605, 115), 8, B '1 inner box


        LINE (25, 83)-(605, 150), 8, B


        LINE (127, 150)-(130, 450), 8, B 'divider
        LINE (317, 150)-(320, 450), 8, B 'divider
        LINE (427, 150)-(430, 450), 8, B 'divider
        LINE (25, 150)-(27, 450), 8, B 'divider

        LINE (25, 187)-(605, 190), 8, B

        LINE (25, 225)-(605, 225), 8, B

        LINE (25, 260)-(605, 260), 8, B
        LINE (25, 295)-(605, 295), 8, B
        LINE (25, 330)-(605, 330), 8, B
        LINE (25, 365)-(605, 365), 8, B
        LINE (25, 400)-(605, 400), 8, B



        LINE (27, 390)-(605, 410), 4, BF
        LINE (27, 410)-(605, 430), 0, BF
        LINE (27, 430)-(605, 450), 6, BF

        LINE (427, 20)-(605, 140), 0, BF 'naration box
        COLOR 1
        LOCATE 2, 55
        PRINT "NARATION INFORMATION"
        COLOR 10
        LOCATE 3, 55
        PRINT "Tuition Fee"
        LOCATE 4, 55
        PRINT "Exam fee"
        LOCATE 5, 55
        PRINT "Bus fee"
        LOCATE 6, 55
        PRINT "Library"
        LOCATE 7, 55
        PRINT "Computer"
        LOCATE 8, 55
        PRINT "Activities"
        LOCATE 9, 55
        PRINT "Other"

        INPUT #2, class1, n$, jan, feb, mar, apr, may, jun, jul, aug, sep, oct, nov, dec
        n$ = UCASE$(n$)
        IF class = class1 AND nar$ = n$ THEN
            COLOR 9
            LOCATE 4, 6
            INPUT "CLASS: ", class1

            LOCATE 7, 6
            COLOR 6
            INPUT "NARRATION"; n$

            COLOR 7
            LOCATE 9, 12
            PRINT "* * * * MONTHLY STRUCTURE * * * *"

            LOCATE 11, 8
            COLOR 5
            PRINT "MONTH"
            LOCATE 11, 26
            PRINT "AMOUNT"
            LOCATE 11, 45
            PRINT "MONTH"
            LOCATE 11, 60
            PRINT "AMOUNT"
            COLOR 7
            LOCATE 14, 6
            PRINT "JANUARY"
            LOCATE 14, 20
            INPUT "", jan

            LOCATE 16, 6
            PRINT "FEBRUARY"
            LOCATE 16, 20
            INPUT "", feb

            LOCATE 18, 6
            PRINT "MARCH"
            LOCATE 18, 20
            INPUT "", mar

            LOCATE 20, 6
            PRINT "APRIL"
            LOCATE 20, 20
            INPUT "", apr

            LOCATE 22, 6
            PRINT "MAY"
            LOCATE 22, 20
            INPUT "", may

            LOCATE 24, 6
            PRINT "JUNE"
            LOCATE 24, 20
            INPUT "", jun

            LOCATE 14, 43
            PRINT "JULY"
            LOCATE 14, 56
            INPUT "", jul

            LOCATE 16, 43
            PRINT "AUGUST"
            LOCATE 16, 56
            INPUT "", aug

            LOCATE 18, 43
            PRINT "SEPTEMBER"
            LOCATE 18, 56
            INPUT "", sep

            LOCATE 20, 43
            PRINT "OCTOBER"
            LOCATE 20, 56
            INPUT "", oct

            LOCATE 22, 43
            PRINT "NOVEMBER"
            LOCATE 22, 56
            INPUT "", nov

            LOCATE 24, 43
            PRINT "DECEMBER"
            LOCATE 24, 56
            INPUT "", dec
            WRITE #1, class1, n$, jan, feb, mar, apr, may, jun, jul, aug, sep, oct, nov, dec
            found = 1
        ELSE
            WRITE #1, class1, n$, jan, feb, mar, apr, may, jun, jul, aug, sep, oct, nov, dec
        END IF
    LOOP
    CLOSE #1
    CLOSE #2
    KILL "billstructure.dat"
    NAME "tempo.dat" AS "billstructure.dat"
    IF found = 0 THEN
        LOCATE 27, 23
        COLOR 8
        PRINT "Sorry your record couldn't be edited"
        a$ = INPUT$(1)
    ELSE
        LOCATE 27, 23
        COLOR 8
        PRINT "your record has been changed successfuly"
        a$ = INPUT$(1)
    END IF
    PRINT
    LOCATE 27, 23
    COLOR 8
    INPUT "do you want to edit more records(Y/N)"; ans$
    PRINT
LOOP WHILE LCASE$(ans$) = "y"
END SUB

SUB delete.bill.struct
DO
    CLS
    SCREEN 12
    LINE (70, 95)-(194, 115), 1, B 'date
    LOCATE 7, 10
    COLOR 6
    PRINT "date "; DATE$
    COLOR 4
    LOCATE 12, 12
    PRINT "*"
    LOCATE 13, 12
    PRINT "*"
    LOCATE 14, 12
    PRINT "*"
    LOCATE 15, 12
    PRINT "*"
    LOCATE 16, 12
    PRINT "*"
    LOCATE 17, 12
    PRINT "*"

    LINE (20, 30)-(620, 455), 1, B 'outer box1
    LINE (20, 30)-(620, 455), 4, B
    LINE (23, 33)-(618, 453), 12, B
    LINE (23, 33)-(618, 453), 0, B

    LINE (30, 40)-(610, 445), 6, B 'inner box2
    LINE (30, 40)-(610, 445), 1, B
    LINE (33, 43)-(608, 443), 2, B
    LINE (33, 43)-(608, 443), 0, B

    LINE (70, 145)-(565, 120), 1, B 'heading box
    COLOR 7
    LOCATE 9, 13
    PRINT "* * * ENTER THE INFORMATION FOR DELETING THE RECORD * * *"

    LINE (70, 150)-(565, 390), 1, B 'main inner box
    LINE (71, 162)-(565, 162), 8, B
    LINE (71, 164)-(565, 164), 8, B
    LINE (110, 164)-(110, 280), 8, B
    LINE (112, 164)-(112, 280), 8, B

    LINE (70, 279)-(565, 279), 8, B
    LINE (70, 281)-(565, 281), 8, B
    LINE (70, 338)-(565, 338), 8, B
    LINE (70, 340)-(565, 340), 8, B

    COLOR 5
    LOCATE 13, 18
    INPUT "Class of the Bill Structure:    ", class
    LOCATE 15, 18
    INPUT "Narration of the Fee:           "; nar$
    nar$ = UCASE$(nar$)
    OPEN "billstructure.dat" FOR INPUT AS #1
    OPEN "tempo.dat" FOR APPEND AS #2
    found = 0
    DO UNTIL EOF(1)
        INPUT #1, class1, n$, jan, feb, mar, apr, may, jun, jul, aug, sep, oct, nov, dec
        n$ = UCASE$(n$)
        IF class = class1 AND nar$ = n$ THEN
            found = found + 1
        ELSE
            WRITE #2, class1, n$, jan, feb, mar, apr, may, jun, jul, aug, sep, oct, nov, dec
        END IF
    LOOP
    CLOSE #2
    CLOSE #1
    KILL "billstructure.dat"
    NAME "tempo.dat" AS "billstructure.dat"
    IF found = 0 THEN
        LOCATE 20, 25
        COLOR 2
        PRINT "Sorry your record couldn't be found"
        a$ = INPUT$(1)
    ELSE
        LOCATE 20, 26
        PRINT "record is deleted successfully"
        a$ = INPUT$(1)
    END IF
    LOCATE 23, 26
    COLOR 8
    INPUT "Do you want to delete more(Y/N)"; a$
LOOP WHILE UCASE$(a$) = "Y"
END SUB

SUB edit.ind.bill.struct
DO
    CLS
    SCREEN 12
    LINE (10, 20)-(620, 460), 1, B 'outer box
    LINE (15, 25)-(615, 455), 4, B 'out inner box

    LINE (25, 30)-(605, 80), 8, B 'info box
    LOCATE 3, 18
    COLOR 2
    PRINT "********************************************"
    LOCATE 4, 19
    COLOR 7
    PRINT "* * * * ENTER FOLLOWING FOR EDITING * * * *"
    COLOR 2
    LOCATE 5, 18
    PRINT "********************************************"

    LINE (25, 83)-(605, 450), 8, B 'inner box

    LINE (25, 83)-(605, 115), 8, B '1 inner box


    LINE (25, 83)-(605, 150), 8, B


    LINE (127, 150)-(130, 450), 8, B 'divider
    LINE (317, 150)-(320, 450), 8, B 'divider
    LINE (427, 150)-(430, 450), 8, B 'divider
    LINE (25, 150)-(27, 450), 8, B 'divider

    LINE (25, 187)-(605, 190), 8, B

    LINE (25, 225)-(605, 225), 8, B

    LINE (25, 260)-(605, 260), 8, B
    LINE (25, 295)-(605, 295), 8, B
    LINE (25, 330)-(605, 330), 8, B
    LINE (25, 365)-(605, 365), 8, B
    LINE (25, 400)-(605, 400), 8, B



    LINE (27, 390)-(605, 410), 4, BF
    LINE (27, 410)-(605, 430), 0, BF
    LINE (27, 430)-(605, 450), 6, BF

    COLOR 9
    LOCATE 7, 5
    INPUT "roll number:  "; ro$

    COLOR 9
    LOCATE 7, 34
    INPUT "Narration:  "; nar$
    nar$ = UCASE$(nar$)

    OPEN "ind.billstructure.dat" FOR INPUT AS #1
    OPEN "tempo.dat" FOR OUTPUT AS #2
    found = 0
    CLS
    SCREEN 12
    LINE (10, 20)-(620, 460), 1, B 'outer box
    LINE (15, 25)-(615, 455), 4, B 'out inner box

    LINE (25, 30)-(605, 80), 8, B 'info box
    LOCATE 3, 18
    COLOR 2
    PRINT "********************************************"
    LOCATE 4, 19
    COLOR 7
    PRINT "* * * * MONTHLY  BILL  STRUCTURE * * * *"
    COLOR 2
    LOCATE 5, 18
    PRINT "*********************************************"

    LINE (25, 83)-(605, 450), 8, B 'inner box

    LINE (25, 83)-(605, 115), 8, B '1 inner box


    LINE (25, 83)-(605, 150), 8, B


    LINE (127, 150)-(130, 450), 8, B 'divider
    LINE (317, 150)-(320, 450), 8, B 'divider
    LINE (427, 150)-(430, 450), 8, B 'divider
    LINE (25, 150)-(27, 450), 8, B 'divider

    LINE (25, 187)-(605, 190), 8, B

    LINE (25, 225)-(605, 225), 8, B

    LINE (25, 260)-(605, 260), 8, B
    LINE (25, 295)-(605, 295), 8, B
    LINE (25, 330)-(605, 330), 8, B
    LINE (25, 365)-(605, 365), 8, B
    LINE (25, 400)-(605, 400), 8, B



    LINE (27, 390)-(605, 410), 4, BF
    LINE (27, 410)-(605, 430), 0, BF
    LINE (27, 430)-(605, 450), 6, BF
    DO UNTIL EOF(1)
        INPUT #1, r$, n$, jan, feb, mar, apr, may, jun, jul, aug, sep, oct, nov, dec
        n$ = UCASE$(n$)
        IF ro$ = r$ AND nar$ = n$ THEN
            COLOR 9
            LOCATE 7, 5
            PRINT "roll number:  "; r$
            LOCATE 9, 5
            COLOR 6
            INPUT "NARRATION"; n$

            LOCATE 11, 8

            COLOR 5
            PRINT "MONTH"
            LOCATE 11, 26
            PRINT "AMOUNT"
            LOCATE 11, 45
            PRINT "MONTH"
            LOCATE 11, 60
            PRINT "AMOUNT"
            COLOR 7
            LOCATE 14, 6
            PRINT "JANUARY"
            LOCATE 14, 20
            INPUT "", jan

            LOCATE 16, 6
            PRINT "FEBRUARY"
            LOCATE 16, 20
            INPUT "", feb

            LOCATE 18, 6
            PRINT "MARCH"
            LOCATE 18, 20
            INPUT "", mar

            LOCATE 20, 6
            PRINT "APRIL"
            LOCATE 20, 20
            INPUT "", apr

            LOCATE 22, 6
            PRINT "MAY"
            LOCATE 22, 20
            INPUT "", may

            LOCATE 24, 6
            PRINT "JUNE"
            LOCATE 24, 20
            INPUT "", jun

            LOCATE 14, 43
            PRINT "JULY"
            LOCATE 14, 56
            INPUT "", jul

            LOCATE 16, 43
            PRINT "AUGUST"
            LOCATE 16, 56
            INPUT "", aug

            LOCATE 18, 43
            PRINT "SEPTEMBER"
            LOCATE 18, 56
            INPUT "", sep

            LOCATE 20, 43
            PRINT "OCTOBER"
            LOCATE 20, 56
            INPUT "", oct

            LOCATE 22, 43
            PRINT "NOVEMBER"
            LOCATE 22, 56
            INPUT "", nov

            LOCATE 24, 43
            PRINT "DECEMBER"
            LOCATE 24, 56
            INPUT "", dec

            WRITE #2, r$, n$, jan, feb, mar, apr, may, jun, jul, aug, sep, oct, nov, dec
            found = 1
        ELSE
            WRITE #2, r$, n$, jan, feb, mar, apr, may, jun, jul, aug, sep, oct, nov, dec
        END IF
    LOOP
    CLOSE #2
    CLOSE #1
    KILL "ind.billstructure.dat"
    NAME "tempo.dat" AS "ind.billstructure.dat"
    IF found = 0 THEN
        LOCATE 27, 23
        COLOR 7
        PRINT "Sorry your record couldn't be found"
        a$ = INPUT$(1)
    ELSE
        LOCATE 27, 23
        COLOR 7
        PRINT "your record has been changed successfuly"
        a$ = INPUT$(1)
    END IF
    PRINT
    LOCATE 27, 23
    COLOR 8
    INPUT "do you want to edit more records(Y/N)"; ans$
    PRINT
LOOP WHILE LCASE$(ans$) = "y"
END SUB

SUB delete.ind.bill.struct
DO
    CLS
    SCREEN 12
    LINE (70, 95)-(194, 115), 1, B 'date
    LOCATE 7, 10
    COLOR 6
    PRINT "date "; DATE$
    COLOR 4
    LOCATE 12, 12
    PRINT "*"
    LOCATE 13, 12
    PRINT "*"
    LOCATE 14, 12
    PRINT "*"
    LOCATE 15, 12
    PRINT "*"
    LOCATE 16, 12
    PRINT "*"
    LOCATE 17, 12
    PRINT "*"

    LINE (20, 30)-(620, 455), 1, B 'outer box1
    LINE (20, 30)-(620, 455), 4, B
    LINE (23, 33)-(618, 453), 12, B
    LINE (23, 33)-(618, 453), 0, B

    LINE (30, 40)-(610, 445), 6, B 'inner box2
    LINE (30, 40)-(610, 445), 1, B
    LINE (33, 43)-(608, 443), 2, B
    LINE (33, 43)-(608, 443), 0, B

    LINE (70, 145)-(565, 120), 1, B 'heading box
    COLOR 7
    LOCATE 9, 13
    PRINT "* * * ENTER THE INFORMATION FOR DELETING THE RECORD * * *"

    LINE (70, 150)-(565, 390), 1, B 'main inner box
    LINE (71, 162)-(565, 162), 8, B
    LINE (71, 164)-(565, 164), 8, B
    LINE (110, 164)-(110, 280), 8, B
    LINE (112, 164)-(112, 280), 8, B

    LINE (70, 279)-(565, 279), 8, B
    LINE (70, 281)-(565, 281), 8, B
    LINE (70, 338)-(565, 338), 8, B
    LINE (70, 340)-(565, 340), 8, B

    COLOR 5
    LOCATE 13, 18
    INPUT "roll number of the Student :  ", ro$
    LOCATE 15, 18
    INPUT "Narration of the Fee       :  ", nar$
    nar$ = UCASE$(nar$)
    OPEN "ind.billstructure.dat" FOR INPUT AS #1
    OPEN "tempo.dat" FOR APPEND AS #2
    found = 0
    DO UNTIL EOF(1)
        INPUT #1, r$, n$, jan, feb, mar, apr, may, jun, jul, aug, sep, oct, nov, dec
        n$ = UCASE$(n$)
        IF ro$ = r$ AND nar$ = n$ THEN
            found = found + 1
        ELSE
            WRITE #2, r$, n$, jan, feb, mar, apr, may, jun, jul, aug, sep, oct, nov, dec
        END IF
    LOOP
    CLOSE #2
    CLOSE #1
    KILL "ind.billstructure.dat"
    NAME "tempo.dat" AS "ind.billstructure.dat"
    IF found = 0 THEN
        LOCATE 20, 25
        COLOR 2
        PRINT "Sorry your record couldn't be found"
        a$ = INPUT$(1)
    ELSE
        LOCATE 20, 26
        PRINT "record is deleted successfully"
        a$ = INPUT$(1)
    END IF
    COLOR 8
    LOCATE 23, 26
    INPUT "Do you want to delete more(Y/N)"; a$
LOOP WHILE UCASE$(a$) = "Y"
END SUB
