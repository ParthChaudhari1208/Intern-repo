/* REXX Program to check if Account Number exists in dataset */
PARSE ARG ACCTNUM

/* Define the dataset containing account information */
ACCTFILE = "'Z54734.ACCTINFO'"

/* Open the dataset in read mode */
ADDRESS TSO "ALLOC F(ACCTDD) DA("ACCTFILE") SHR REUSE"
ADDRESS TSO "EXECIO * DISKR ACCTDD (STEM LINES. FINIS)"

FOUND = 0
DO I = 1 TO LINES.0
    PARSE VAR LINES.I CURR_ACCT
    IF CURR_ACCT = ACCTNUM THEN DO
        FOUND = 1
        LEAVE
    END
END

/* Free the dataset */
ADDRESS TSO "FREE F(ACCTDD)"

/* Print the result */
IF FOUND = 1 THEN
    SAY "Account Number" ACCTNUM "exists in the database."
ELSE
    SAY "Account Number" ACCTNUM "NOT FOUND in the database."

EXIT 0
