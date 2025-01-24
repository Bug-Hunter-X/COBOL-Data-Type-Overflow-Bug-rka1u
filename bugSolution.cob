MOVE 0 TO WS-COUNTER.

PERFORM VARYING I FROM 1 BY 1 UNTIL I > 10
    ADD 1 TO WS-COUNTER
END-PERFORM.

DISPLAY "Counter value: " WS-COUNTER.

* Added a check for overflow condition, and handled the overflow appropriately
IF WS-COUNTER > 99999
  DISPLAY "Counter Overflow"
END-IF