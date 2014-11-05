         MACRO
         TESTCASE &DESCR,&LEN
         AP    TOTAL,=P'1'
         MVC   TESTNBR,MASK
         ED    TESTNBR,TOTAL
         MVI   TESTDESC,C' '
         MVC   TESTDESC+1(L'TESTDESC-1),TESTDESC
         MVC   TESTDESC(&LEN),=C&DESCR
         MVC   TESTRES,=C'      '
         MVC   RESULT,=C'                        '
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

         