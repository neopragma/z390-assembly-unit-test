         MACRO
         SETVAL &TARG,&VAL,&LEN
         XC    &TARG,&TARG
         LA    R2,&TARG
         LA    R3,&VAL
         MVC   0(&LEN,R2),0(R3)
         MEND

         MACRO
         TESTCASE &DESCR,&LEN
         AP    TOTAL,=P'1'
         MVC   TESTNBR,MASK
         ED    TESTNBR,TOTAL
         MVI   TESTDESC,C' '
         MVC   TESTDESC+1(L'TESTDESC-1),TESTDESC
         MVC   TESTDESC(&LEN),=C&DESCR
         MVC   TESTRES,=C'      '
         MEND

         MACRO
         FAILED 
         AP    FAILCNT,=P'1'
         LA    R8,FAILLEN
         STH   R8,WTOLENG
         MVC   TESTRES,FAILED
         WTO   MF=(E,TESTMSG)
         MVC   WTOTEXT,EXPMSG
         WTO   MF=(E,WTOBLOCK)
         MVC   ACTUAL,RESULT
         MVC   WTOTEXT,ACTMSG
         WTO   MF=(E,WTOBLOCK)
         MEND

         MACRO
         PASSED
         AP    PASSCNT,=P'1'
         MVC   TESTRES,PASSED
         WTO   MF=(E,TESTMSG)
         MEND

         MACRO
         STATS
         WTO   '*------------------------------*'
         MVC   TOTALZ,MASK
         ED    TOTALZ,TOTAL
         MVC   FAILCNTZ,MASK
         ED    FAILCNTZ,FAILCNT
         MVC   PASSCNTZ,MASK
         ED    PASSCNTZ,PASSCNT
         WTO   MF=(E,TOTLMSG)
         WTO   MF=(E,PASSMSG)
         WTO   MF=(E,FAILMSG)
         WTO   '*------------------------------*'
         MEND

         