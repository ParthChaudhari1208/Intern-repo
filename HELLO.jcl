//HELLO  JOB  (ACCTINFO),'CHECK ACCT',CLASS=A,MSGCLASS=A
//STEP1    EXEC PGM=IKJEFT01
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSTSIN  DD  *
  EXEC 'Z54734.REXX()' '1234554321'
/*
