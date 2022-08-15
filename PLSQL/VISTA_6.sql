/* Formatted on 11/1/2018 11:49:18 AM (QP5 v5.149.1003.31008) */
SELECT DISTINCT
       M.STDNT_CAR_NBR AS NUM_GRADO_ACADEMICO,
       A.EMPLID AS MATRICULA,
       A.CAMPUS_ID AS CAMPUS,
       C.STRM AS PERIODO,
       M.ACAD_PROG AS CARRERA_INGRESO,
       N.DESCR AS NOMBRE_CARRERA_ACTUAL,
       P.ACAD_PLAN AS PENSUM_INGRESO,
       Q.ACAD_GROUP AS FACULTAD_CARRERA_INGRESO,
       A.FIRST_NAME || ' ' || A.MIDDLE_NAME AS NOMBRES,
       A.LAST_NAME || ' ' || A.SECOND_LAST_NAME AS APELLIDOS,
       A.BIRTHDATE AS FECHA_NACIMIENTO,
       I.COUNTRY AS NACIONALIDAD,
       J.DESCRSHORT AS DESCRIPCION,
       J.DESCR AS PAIS_NACIMIENTO,
          K.ADDRESS1
       || ' '
       || K.ADDRESS2
       || ' '
       || K.ADDRESS3
       || ' '
       || K.ADDRESS4
          AS DIRECCCION_ACTUAL,
       L.DESCR AS CIUDAD_PROVINCIA_NACIMIENTO,
       D.PHONE AS TELEFONO,
       CELL.PHONE AS CELULAR,
       E.EMAIL_ADDR AS CORREO_ELECTRONICO,
       FAT.ROOM AS AULA_EXAMEN,
       CE.DESCR AS EXAMEN,
          TO_CHAR (EM.MEETING_DT, 'DD-MM-YYYY')
       || ' '
       || TO_CHAR (EM.MEETING_TIME_START, 'HH:MM AM')
          AS FECHA_HORA_EXAMEN,
       G.EXT_ORG_ID AS INSTITUCION_PROCEDENCIA,
       G.DESCR AS NOMBRE_INSTITUCION_PROCEDENCIA,
          OL.ADDRESS1
       || ' '
       || OL.ADDRESS2
       || ' '
       || OL.ADDRESS3
       || ' '
       || OL.ADDRESS4
          AS DIRECCCION_INSTITUCION_PRODED,
       OL.STATE AS CIUDAD,
       OL.CITY AS CIUDAD_PROVINCIA_PROCEDENCIA,
       J.DESCR AS PAIS_INSTITUCION_PROCEDENCIA,
       OLP.COUNTRY_CODE || ' ' || OLP.PHONE AS TELEFONO_INSTITUCION_PROCED,
       ATV.DESCR AS TIPO_ADMISION,
       AAP.ADMIT_TERM AS PERIODO_SOLICITUD,
       AAP.ACAD_PROG AS CARRERA_SOLICITUD,
       P.ACAD_PLAN AS PENSUM,
       AC.DESCR AS MOTIVO_READMISION,
       CASE
          WHEN EXISTS
                  (SELECT 'X'
                     FROM PS_ACAD_PROG AD
                    WHERE     AD.EMPLID = M.EMPLID
                          AND AD.PROG_ACTION IN ('PRGC')
                          AND AD.ACAD_CAREER = M.ACAD_CAREER
                          AND AD.STDNT_CAR_NBR = M.STDNT_CAR_NBR)
          THEN
             'SI'
          ELSE
             'NO'
       END
          AS CAMBIO_CARRERA,
       AF.ACAD_PROG AS CARRERA_ANTERIOR,
       CASE
          WHEN EXISTS
                  (SELECT 'X'
                     FROM PS_ACAD_PROG APG
                    WHERE     APG.EMPLID = M.EMPLID
                     AND APG.PROG_ACTION IN ('DATA')
                     AND APG.ACAD_CAREER = M.ACAD_CAREER
                     AND APG.STDNT_CAR_NBR = M.STDNT_CAR_NBR)
          THEN
             'SI'
          ELSE
             'NO'
       END
          AS CAMBIO_CAMPUS,
       AAP.CAMPUS AS CAMPUS_SOLICITUD,
       Z.ACAD_STNDNG_ACTN AS CONDICION_ACAD_PERIODO,
       CASE
          WHEN EXISTS
                  (SELECT 'X'
                     FROM PS_STDNT_CAR_TERM INS
                    WHERE     INS.STRM = C.STRM
                          AND INS.STRM <> ' '
                          AND INS.EMPLID = C.EMPLID
                          AND INS.ACAD_CAREER = C.ACAD_CAREER
                          AND INS.INSTITUTION = C.INSTITUTION)
          THEN
             'SI'
          ELSE
             'NO'
       END
          AS INSCRITO,
       U.NATIONAL_ID AS CEDULA
  FROM PS_ACAD_PROG M
       LEFT JOIN PS_PERSONAL_DATA A
          ON A.EMPLID = M.EMPLID
       LEFT JOIN PS_STDNT_CAR_TERM C
          ON     C.EMPLID = M.EMPLID
           --  AND C.ACAD_CAREER = M.ACAD_CAREER
             AND C.INSTITUTION = M.INSTITUTION
             AND M.PROG_ACTION = 'MATR'
       LEFT JOIN PS_ACAD_PROG_TBL N
          ON N.ACAD_PROG = M.ACAD_PROG AND N.INSTITUTION = M.INSTITUTION
       LEFT JOIN PS_ADM_APPL_PLAN P
          ON     P.EMPLID = M.EMPLID
             AND P.ACAD_CAREER = M.ACAD_CAREER
             AND P.STDNT_CAR_NBR = M.STDNT_CAR_NBR
             AND P.ADM_APPL_NBR = M.ADM_APPL_NBR
             AND P.APPL_PROG_NBR = M.APPL_PROG_NBR
       LEFT JOIN PS_ACAD_GROUP_TBL Q
          ON Q.INSTITUTION = N.INSTITUTION AND Q.ACAD_GROUP = N.ACAD_GROUP
       LEFT JOIN PS_CITIZENSHIP H
          ON H.EMPLID = M.EMPLID
       LEFT JOIN PS_COUNTRY_TBL I
          ON I.COUNTRY = H.COUNTRY
       LEFT JOIN PS_COUNTRYTBL_LANG J
          ON J.COUNTRY = I.COUNTRY
             AND ( (J.LANGUAGE_CD = 'ESP' AND J.LANGUAGE_CD IS NOT NULL)
                  OR (J.LANGUAGE_CD IS NULL))
       LEFT JOIN PS_PERSON_ADDRESS K
          ON K.EMPLID = M.EMPLID
       LEFT JOIN PS_STATE_TBL L
          ON L.COUNTRY = I.COUNTRY AND L.STATE = K.STATE
       LEFT JOIN PS_PERSONAL_PHONE D
          ON D.EMPLID = M.EMPLID AND PHONE_TYPE = 'HOME'
       LEFT JOIN PS_PERSONAL_PHONE CELL
          ON CELL.EMPLID = M.EMPLID AND CELL.PHONE_TYPE = 'CELL'
       LEFT JOIN PS_EMAIL_ADDRESSES E
          ON E.EMPLID = M.EMPLID AND E.PREF_EMAIL_FLAG = 'Y'
       LEFT JOIN PS_CAMPUS_EVNT_ATT CEA
          ON CEA.EMPLID = M.EMPLID
       LEFT JOIN PS_CAMPUS_EVENT CE
          ON CE.CAMPUS_EVENT_NBR = CEA.CAMPUS_EVENT_NBR
       LEFT JOIN PS_EVENT_MTG EM
          ON EM.CAMPUS_EVENT_NBR = CE.CAMPUS_EVENT_NBR
       LEFT JOIN PS_FACILITY_TBL FAT
          ON FAT.FACILITY_ID = EM.FACILITY_ID
       LEFT JOIN PS_BLDG_TBL BT
          ON BT.BLDG_CD = FAT.BLDG_CD
       LEFT JOIN PS_ADM_APPL_DATA F
          ON     F.EMPLID = M.EMPLID
             AND F.ACAD_CAREER = M.ACAD_CAREER
             AND F.STDNT_CAR_NBR = M.STDNT_CAR_NBR
       LEFT JOIN PS_EXT_ORG_TBL G
          ON G.EXT_ORG_ID = F.LAST_SCH_ATTEND
       LEFT JOIN PS_ORG_LOCATION OL
          ON OL.EXT_ORG_ID = G.EXT_ORG_ID
       LEFT JOIN PS_ORG_LOC_PHONES OLP
          ON OLP.EXT_ORG_ID = G.EXT_ORG_ID
       LEFT JOIN PS_ADMIT_TYPE_TBL ATV
          ON ATV.INSTITUTION = F.INSTITUTION --AND ATV.ACAD_CAREER=F.ACAD_CAREER
             AND ATV.ADMIT_TYPE = F.ADMIT_TYPE
       LEFT JOIN PS_ADM_APPL_PROG AAP
          ON     AAP.EMPLID = M.EMPLID
             AND AAP.ACAD_CAREER = M.ACAD_CAREER
             AND AAP.STDNT_CAR_NBR = M.STDNT_CAR_NBR
       LEFT JOIN PS_ACAD_PROG RSN
          ON     RSN.EMPLID = M.EMPLID
       --      AND RSN.ACAD_CAREER = M.ACAD_CAREER
             AND RSN.STDNT_CAR_NBR = M.STDNT_CAR_NBR
             AND RSN.PROG_ACTION = 'RADM'
       LEFT JOIN PS_PROG_RSN_TBL AC
          ON AC.PROG_ACTION = RSN.PROG_ACTION
             AND AC.PROG_REASON = RSN.PROG_REASON
       LEFT JOIN PS_ACAD_PROG AF
          ON     AF.EMPLID = M.EMPLID
             AND AF.ACAD_CAREER = M.ACAD_CAREER
             AND AF.STDNT_CAR_NBR = M.STDNT_CAR_NBR
       LEFT JOIN PS_ACAD_STDNG_ACTN Z
          ON     Z.EMPLID = M.EMPLID
          --   AND Z.ACAD_CAREER = C.ACAD_CAREER
             AND Z.INSTITUTION = C.INSTITUTION
             AND Z.STRM = C.STRM
       LEFT JOIN PS_PERS_NID U
          ON U.EMPLID = M.EMPLID AND U.NATIONAL_ID_TYPE = 'CED'
 WHERE M.EMPLID = '01058222'
       --WHERE
       AND ( (M.EFFDT =
                 (SELECT MIN (M_ED.EFFDT)
                    FROM PS_ACAD_PROG M_ED
                   WHERE     M.EMPLID = M_ED.EMPLID
                         AND M.ACAD_CAREER = M_ED.ACAD_CAREER
                         AND M.STDNT_CAR_NBR = M_ED.STDNT_CAR_NBR
                         AND M_ED.EFFDT <= SYSDATE)
                     AND M.EFFSEQ =
                 (SELECT MIN (M_ES.EFFSEQ)
                    FROM PS_ACAD_PROG M_ES
                   WHERE     M.EMPLID = M_ES.EMPLID
                         AND M.ACAD_CAREER = M_ES.ACAD_CAREER
                         AND M.STDNT_CAR_NBR = M_ES.STDNT_CAR_NBR
                         AND M.EFFDT = M_ES.EFFDT)
              AND M.EFFSEQ IS NOT NULL)
            OR M.EFFSEQ IS NULL)
       AND ( (Q.EFFDT =
                 (SELECT MAX (Q_ED.EFFDT)
                    FROM PS_ACAD_GROUP_TBL Q_ED
                   WHERE     Q.INSTITUTION = Q_ED.INSTITUTION
                         AND Q.ACAD_GROUP = Q_ED.ACAD_GROUP
                         AND Q_ED.EFFDT <= SYSDATE)
              AND Q.EFFDT IS NOT NULL)
            OR Q.EFFDT IS NULL)
       AND ( (N.EFFDT =
                 (SELECT MIN (N_ED.EFFDT)
                    FROM PS_ACAD_PROG_TBL N_ED
                   WHERE     N.INSTITUTION = N_ED.INSTITUTION
                         AND N.ACAD_PROG = N_ED.ACAD_PROG
                         AND N_ED.EFFDT <= SYSDATE)
              AND N.EFFDT IS NOT NULL)
            OR N.EFFDT IS NULL)
       AND ( (P.EFFDT =
                 (SELECT MIN (P_ED.EFFDT)
                    FROM PS_ADM_APPL_PLAN P_ED
                   WHERE     P.EMPLID = P_ED.EMPLID
                         AND P.ACAD_CAREER = P_ED.ACAD_CAREER
                         AND P.STDNT_CAR_NBR = P_ED.STDNT_CAR_NBR
                         AND P.ADM_APPL_NBR = P_ED.ADM_APPL_NBR
                         AND P.APPL_PROG_NBR = P_ED.APPL_PROG_NBR
                         AND P_ED.EFFDT <= SYSDATE)
              AND P.EFFSEQ =
                     (SELECT MIN (P_ES.EFFSEQ)
                        FROM PS_ADM_APPL_PLAN P_ES
                       WHERE     P.EMPLID = P_ES.EMPLID
                             AND P.ACAD_CAREER = P_ES.ACAD_CAREER
                             AND P.STDNT_CAR_NBR = P_ES.STDNT_CAR_NBR
                             AND P.ADM_APPL_NBR = P_ES.ADM_APPL_NBR
                             AND P.APPL_PROG_NBR = P_ES.APPL_PROG_NBR
                             AND P.EFFDT = P_ES.EFFDT)
              AND P.EFFSEQ IS NOT NULL)
            OR P.EFFSEQ IS NULL)
       AND ( (FAT.EFFDT =
                 (SELECT MAX (FAT_ED.EFFDT)
                    FROM PS_FACILITY_TBL FAT_ED
                   WHERE     FAT.SETID = FAT_ED.SETID
                         AND FAT.FACILITY_ID = FAT_ED.FACILITY_ID
                         AND FAT_ED.EFFDT <= SYSDATE)
              AND FAT.EFFDT IS NOT NULL)
            OR FAT.EFFDT IS NULL)
       AND ( (BT.EFFDT =
                 (SELECT MAX (BT_ED.EFFDT)
                    FROM PS_BLDG_TBL BT_ED
                   WHERE BT.BLDG_CD = BT_ED.BLDG_CD
                         AND BT_ED.EFFDT <= SYSDATE)
              AND BT.EFFDT IS NOT NULL)
            OR BT.EFFDT IS NULL)
       AND ( (G.EFFDT =
                 (SELECT MAX (G_ED.EFFDT)
                    FROM PS_EXT_ORG_TBL G_ED
                   WHERE G.EXT_ORG_ID = G_ED.EXT_ORG_ID
                         AND G_ED.EFFDT <= SYSDATE)
              AND G.EFFDT IS NOT NULL)
            OR G.EFFDT IS NULL)
       AND ( (OL.EFFDT =
                 (SELECT MAX (OL_ED.EFFDT)
                    FROM PS_ORG_LOCATION OL_ED
                   WHERE     OL.EXT_ORG_ID = OL_ED.EXT_ORG_ID
                         AND OL.ORG_LOCATION = OL_ED.ORG_LOCATION
                         AND OL_ED.EFFDT <= SYSDATE)
              AND OL.EFFDT IS NOT NULL)
            OR OL.EFFDT IS NULL)
       AND ( (OLP.EFFDT =
                 (SELECT MAX (OLP_ED.EFFDT)
                    FROM PS_ORG_LOC_PHONES OLP_ED
                   WHERE     OLP.EXT_ORG_ID = OLP_ED.EXT_ORG_ID
                         AND OLP.ORG_LOCATION = OLP_ED.ORG_LOCATION
                         AND OLP_ED.EFFDT <= SYSDATE)
              AND OLP.EFFDT IS NOT NULL)
            OR OLP.EFFDT IS NULL)
       AND ( (ATV.EFFDT =
                 (SELECT MAX (ATV_ED.EFFDT)
                    FROM PS_ADMIT_TYPE_TBL ATV_ED
                   WHERE     ATV.INSTITUTION = ATV_ED.INSTITUTION
                         AND ATV.ACAD_CAREER = ATV_ED.ACAD_CAREER
                         AND ATV.ADMIT_TYPE = ATV_ED.ADMIT_TYPE
                         AND ATV_ED.EFFDT <= SYSDATE)
              AND ATV.EFFDT IS NOT NULL)
            OR ATV.EFFDT IS NULL)
       AND ( (AAP.EFFDT =
                 (SELECT MAX (AAP_ED.EFFDT)
                    FROM PS_ADM_APPL_PROG AAP_ED
                   WHERE     AAP.EMPLID = AAP_ED.EMPLID
                         AND AAP.ACAD_CAREER = AAP_ED.ACAD_CAREER
                         AND AAP.STDNT_CAR_NBR = AAP_ED.STDNT_CAR_NBR
                         AND AAP.ADM_APPL_NBR = AAP_ED.ADM_APPL_NBR
                         AND AAP.APPL_PROG_NBR = AAP_ED.APPL_PROG_NBR
                         AND AAP_ED.EFFDT <= SYSDATE)
              AND AAP.EFFSEQ =
                     (SELECT MAX (AAP_ES.EFFSEQ)
                        FROM PS_ADM_APPL_PROG AAP_ES
                       WHERE     AAP.EMPLID = AAP_ES.EMPLID
                             AND AAP.ACAD_CAREER = AAP_ES.ACAD_CAREER
                             AND AAP.STDNT_CAR_NBR = AAP_ES.STDNT_CAR_NBR
                             AND AAP.ADM_APPL_NBR = AAP_ES.ADM_APPL_NBR
                             AND AAP.APPL_PROG_NBR = AAP_ES.APPL_PROG_NBR
                             AND AAP.EFFDT = AAP_ES.EFFDT)
              AND AAP.EFFDT IS NOT NULL)
            OR AAP.EFFDT IS NULL)
       AND ( (AC.EFFDT =
                 (SELECT MAX (AC_ED.EFFDT)
                    FROM PS_PROG_RSN_TBL AC_ED
                   WHERE     AC.SETID = AC_ED.SETID
                         AND AC.PROG_ACTION = AC_ED.PROG_ACTION
                         AND AC.PROG_REASON = AC_ED.PROG_REASON
                         AND AC_ED.EFFDT <= SYSDATE)
              AND AC.EFFDT IS NOT NULL)
            OR AC.EFFDT IS NULL)
       AND ( (AF.EFFDT =
                 (SELECT MIN (AF_ED.EFFDT)
                    FROM PS_ACAD_PROG AF_ED
                   WHERE     AF.EMPLID = AF_ED.EMPLID
                         AND AF.ACAD_CAREER = AF_ED.ACAD_CAREER
                         AND AF.STDNT_CAR_NBR = AF_ED.STDNT_CAR_NBR
                         AND AF_ED.EFFDT <= SYSDATE)
                   AND AF.EFFSEQ =
                 (SELECT MIN (AF_ES.EFFSEQ)
                    FROM PS_ACAD_PROG AF_ES
                   WHERE     AF.EMPLID = AF_ES.EMPLID
                         AND AF.ACAD_CAREER = AF_ES.ACAD_CAREER
                         AND AF.STDNT_CAR_NBR = AF_ES.STDNT_CAR_NBR
                         AND AF.EFFDT = AF_ES.EFFDT)
              AND AF.EFFSEQ IS NOT NULL)
            OR AF.EFFSEQ IS NULL)
       AND ( (Z.EFFDT =
                 (SELECT MAX (A_ED.EFFDT)
                    FROM PS_ACAD_STDNG_ACTN A_ED
                   WHERE     Z.EMPLID = A_ED.EMPLID
                         AND Z.ACAD_CAREER = A_ED.ACAD_CAREER
                         AND Z.INSTITUTION = A_ED.INSTITUTION
                         AND Z.STRM = A_ED.STRM
                         AND A_ED.EFFDT <= SYSDATE)
                     AND Z.EFFSEQ =
                 (SELECT MAX (A_ES.EFFSEQ)
                    FROM PS_ACAD_STDNG_ACTN A_ES
                   WHERE     Z.EMPLID = A_ES.EMPLID
                         AND Z.ACAD_CAREER = A_ES.ACAD_CAREER
                         AND Z.INSTITUTION = A_ES.INSTITUTION
                         AND Z.STRM = A_ES.STRM
                         AND Z.EFFDT = A_ES.EFFDT)
              AND Z.EFFSEQ IS NOT NULL)
            OR Z.EFFSEQ IS NULL)

