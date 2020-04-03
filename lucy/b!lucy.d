BEGIN ~B!LUCY~

CHAIN IF WEIGHT #-1 ~IsGabber(Player1)~ THEN LUCY l1
@0
END
++ @1 EXIT
++ @2 EXTERN LUCY l2

APPEND LUCY

IF ~~ l2
SAY @3
IF ~~ THEN DO ~SetGlobal("B!LucyChanges","GLOBAL",1)
ClearAllActions() StartCutSceneMode() StartCutScene("b!lucy1")~ EXIT
END
END

APPEND ~B!LUCY~

IF ~Global("B!LucyChanges","GLOBAL",1)~ THEN BEGIN l3
SAY @4
++ @5 DO ~SetGlobal("B!LucyChanges","GLOBAL",2)~ + l4
++ @6 DO ~SetGlobal("B!LucyChanges","GLOBAL",2)~ + l5
++ @7 DO ~SetGlobal("B!LucyChanges","GLOBAL",2)~ + l6
END

IF ~~ l4
SAY @8
++ @9 + l6
++ @10 + l7
++ @11 + l8
END

IF ~~ l5
SAY @12
IF ~~ THEN + l4
END

IF ~~ l6
SAY @13
++ @14 + l7
++ @15 + l8
END

IF ~~ l7
SAY @16
= @17
IF ~~ THEN + l8
END

IF ~~ l8
SAY @18
IF ~~ THEN DO ~EscapeArea()~ EXIT
END
END