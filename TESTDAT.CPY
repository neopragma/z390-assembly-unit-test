         DS   0D

WTOBLOCK EQU   *
WTOLENG  DC    H'0'       
         DC    H'0'                     
WTOTEXT  DC    CL76' '

EXPMSG   DS   0D
         DC    CL11' Expected: '
EXPECTED DC    CL60' '

ACTMSG   DS   0D
         DC    CL11'   Actual: '
ACTUAL   DC    CL60' '

TESTMSG  DS   0D
         DC    H'92'
         DC    H'0'
         DC    CL5'Test '
TESTNBR  DS    ZL10
         DC    CL1' '
TESTRES  DS    CL10'          '
         DC    CL2': '
TESTDESC DS    CL60

         DS   0D
PASSED   DC    CL10'    PASSED'
FAILED   DC    CL10'*** FAILED'

         DS   0D
FAILCNT  DC    PL4'0'
PASSCNT  DC    PL4'0'
TOTAL    DC    PL4'0'

MASK     DC    X'4020B6202020B6202120'

TOTLMSG  DS   0D
         DC    H'28'
         DC    H'0'
         DC    CL14'Total tests:  '
TOTALZ   DS    ZL10

FAILMSG  DS   0D
         DC    H'28'
         DC    H'0'
         DC    CL14'Total failed: '
FAILCNTZ DS    ZL10
FAILLEN  EQU    *-FAILMSG

PASSMSG  DS   0D
         DC    H'29'
         DC    H'0'
         DC    CL14'Total passed: '
PASSCNTZ DS    ZL11
