PROGRAM BubbleSortDown(INPUT, OUTPUT);
VAR
  Sorted, Ch, Ch1, Ch2: CHAR;
  F1, F2: TEXT;
BEGIN 
  ASSIGN(F1, 'File1C.txt');
  ASSIGN(F2, 'File2C.txt');
  REWRITE(F1); {Копируем INPUT в F1}
  WHILE NOT EOLN(INPUT) 
  DO
    BEGIN
      READ(INPUT, Ch);
      WRITE(F1, Ch)
    END;
  WRITELN(F1);
  Sorted := 'N';
  WHILE Sorted = 'N'
  DO 
    BEGIN
      Sorted := 'Y';
      RESET(F1); {Копируем F1 в F2 с перестановкой}
      REWRITE(F2);
      IF NOT EOLN(F1)
      THEN
        BEGIN
          READ(F1, Ch1);
          WHILE NOT EOLN(F1)
          DO
            BEGIN 
              READ(F1, Ch2); {Выводим   min(Ch1,Ch2) в  F2, записывая отсортированные символы}
              IF Ch1 >= Ch2
              THEN 
                BEGIN
                  WRITE(F2, Ch1);
                  Ch1 := Ch2
                END
              ELSE
                BEGIN
                  WRITE(F2, Ch2);
                  Sorted := 'N'
                END
            END;
          WRITELN(F2, Ch1);
        END;
      RESET(F2); {Копируем F2 в F1}
      REWRITE(F1);
      WHILE NOT EOLN(F2) 
      DO
        BEGIN
          READ(F2, Ch);
          WRITE(F1, Ch);
        END;
      WRITELN(F1);
    END;
  RESET(F1); {F1 копируется в OUTPUT}
  WHILE NOT EOLN(F1) 
  DO
    BEGIN
      READ(F1, Ch);
      WRITE(OUTPUT, Ch)
    END;
  WRITELN(OUTPUT);
  WRITE('LOUN');
  WRITE('LAAAAAAAPKAA');
  WRITE('APELSIN')
END.
