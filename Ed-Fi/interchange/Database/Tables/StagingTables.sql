SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

IF NOT EXISTS ( SELECT  1
                FROM    INFORMATION_SCHEMA.TABLES AS t
                WHERE   t.TABLE_NAME LIKE 'Admissions'
                        AND t.TABLE_SCHEMA LIKE 'Staging' )
    BEGIN
        CREATE TABLE [staging].[Admissions]
            (
              [Institution ID] [NVARCHAR](255) NULL ,
              [InstitutionName] [NVARCHAR](255) NULL ,
              [Candidate Last Name] [NVARCHAR](255) NULL ,
              [Candidate First Name] [NVARCHAR](255) NULL ,
              [Candidate Middle Initial] [NVARCHAR](255) NULL ,
              [Candidate SSN] [NVARCHAR](255) NULL ,
              [Candidate Birth Date] [NVARCHAR](255) NULL ,
              [Candidate Ethnicity] [NVARCHAR](255) NULL ,
              [Candidate Gender] [NVARCHAR](255) NULL ,
              [Candidate Admission Status] [NVARCHAR](255) NULL ,
              [Candidate Admitting GPA] [NVARCHAR](255) NULL ,
              [Candidate ACT] [NVARCHAR](255) NULL ,
              [Candidate SAT] [NVARCHAR](255) NULL ,
              [Has Taken Essential Skills Subtest I] [NVARCHAR](255) NULL ,
              [Has Passed Essential Skills Subtest I] [NVARCHAR](255) NULL ,
              [Score Subtest I] [NVARCHAR](255) NULL ,
              [Has Taken Essential Skills Subtest II] [NVARCHAR](255) NULL ,
              [Has Passed Essential Skills Subtest II] [NVARCHAR](255) NULL ,
              [Score Subtest II] [NVARCHAR](255) NULL ,
              [Has Taken Essential Skills Subtest III] [NVARCHAR](255) NULL ,
              [Has Passed Essential Skills Subtest III] [NVARCHAR](255) NULL ,
              [Score Subtest III] [NVARCHAR](255) NULL ,
              [Program Type] [NVARCHAR](255) NULL ,
              [Program Area1] [NVARCHAR](255) NULL ,
              [Program1 Subject Area1 ] [NVARCHAR](255) NULL ,
              [Program1 Subject Area2] [NVARCHAR](255) NULL ,
              [Program2 Area] [NVARCHAR](255) NULL ,
              [Program2 Subject Area (Secondary)] [NVARCHAR](255) NULL ,
              [TESOL/Bilingual Minor1] [NVARCHAR](255) NULL ,
              [TESOL/Bilingual Minor2] [NVARCHAR](255) NULL ,
              [Other Minor1] [NVARCHAR](255) NULL ,
              [Other Minor2] [NVARCHAR](255) NULL ,
              [Program1 Start Month] [NVARCHAR](255) NULL ,
              [Program1 Start Year] [NVARCHAR](255) NULL ,
              [Expected Program1 End Month] [NVARCHAR](255) NULL ,
              [Expected Program1 End Year] [NVARCHAR](255) NULL ,
              [File Name] [NVARCHAR](255) NOT NULL ,
              [Tab Name] [NVARCHAR](255) NOT NULL
            )
        ON  [PRIMARY]

    END 
GO

IF NOT EXISTS ( SELECT  1
                FROM    INFORMATION_SCHEMA.TABLES AS t
                WHERE   t.TABLE_NAME LIKE 'AttendanceScores'
                        AND t.TABLE_SCHEMA LIKE 'Staging' )
    BEGIN

        CREATE TABLE [staging].[AttendanceScores]
            (
              [AttendanceScoreID] [INT] NULL ,
              [YearsTeachersSchoolsID] [INT] NULL ,
              [TeacherID] [INT] NULL ,
              [YearEnding] [DATETIME] NULL ,
              [AttendanceProportion] [FLOAT] NULL ,
              [NumberOfDaysAbsent] [FLOAT] NULL ,
              [NumberOfLocations] [INT] NULL
            )
        ON  [PRIMARY]
    END 
GO

IF NOT EXISTS ( SELECT  1
                FROM    INFORMATION_SCHEMA.TABLES AS t
                WHERE   t.TABLE_NAME LIKE 'Completers'
                        AND t.TABLE_SCHEMA LIKE 'Staging' )
    BEGIN

        CREATE TABLE [staging].[Completers]
            (
              [Institution_ID] [NVARCHAR](255) NULL ,
              [Institution_Name] [NVARCHAR](255) NULL ,
              [Completer_Last_Name] [NVARCHAR](255) NULL ,
              [Completer_First_name] [NVARCHAR](255) NULL ,
              [Completer_Middle_Initial] [NVARCHAR](255) NULL ,
              [SSN_Last_5] [NVARCHAR](255) NULL ,
              [Completer_Birth_Date] [NVARCHAR](255) NULL ,
              [Completer_Ethnicity] [NVARCHAR](255) NULL ,
              [Completer_Gender] [NVARCHAR](255) NULL ,
              [Graduating_GPA] [NVARCHAR](255) NULL ,
              [Program_gpa] [NVARCHAR](255) NULL ,
              [Content_GPA] [NVARCHAR](255) NULL ,
              [Student_Teaching_District_1] [NVARCHAR](255) NULL ,
              [Student_Teaching_School_1] [NVARCHAR](255) NULL ,
              [Hours_Student_Teaching_School_1] [NVARCHAR](255) NULL ,
              [Alternative_Internship_Year_School_1] [NVARCHAR](255) NULL ,
              [CT_First_Name_1] [NVARCHAR](255) NULL ,
              [CT_MI_1] [NVARCHAR](255) NULL ,
              [CT_Last_Name_1] [NVARCHAR](255) NULL ,
              [Student_Teaching_District_2] [NVARCHAR](255) NULL ,
              [Student_Teaching_School_2] [NVARCHAR](255) NULL ,
              [Hours_Student_Teaching_School_2] [NVARCHAR](255) NULL ,
              [Alternative_Internship_Year_School_2] [NVARCHAR](255) NULL ,
              [CT_First_Name_2] [NVARCHAR](255) NULL ,
              [CT_MI_2] [NVARCHAR](255) NULL ,
              [CT_Last_Name_2] [NVARCHAR](255) NULL ,
              [Student_Teaching_District_3] [NVARCHAR](255) NULL ,
              [Student_Teaching_School_3] [NVARCHAR](255) NULL ,
              [Hours_Student_Teaching_School_3] [NVARCHAR](255) NULL ,
              [Alternative_Internship_Year_School_3] [NVARCHAR](255) NULL ,
              [CT_First_Name_3] [NVARCHAR](255) NULL ,
              [CT_MI_3] [NVARCHAR](255) NULL ,
              [CT_Last_Name_3] [NVARCHAR](255) NULL ,
              [Program Type] [NVARCHAR](255) NULL ,
              [Program Area1] [NVARCHAR](255) NULL ,
              [Program1 Subject Area1] [NVARCHAR](255) NULL ,
              [Program1 Subject Area2] [NVARCHAR](255) NULL ,
              [Program2 Area] [NVARCHAR](255) NULL ,
              [Program2 Subject Area (Secondary)] [NVARCHAR](255) NULL ,
              [TESOL/Bilingual Minor1] [NVARCHAR](255) NULL ,
              [TESOL/Bilingual Minor2] [NVARCHAR](255) NULL ,
              [Other Minor1] [NVARCHAR](255) NULL ,
              [Other Minor2] [NVARCHAR](255) NULL ,
              [Program1 Start Month] [NVARCHAR](255) NULL ,
              [Program1 Start Year] [NVARCHAR](255) NULL ,
              [Expected Program1 End Month] [NVARCHAR](255) NULL ,
              [Expected Program1 End Year] [NVARCHAR](255) NULL ,
              [Licensure_completion] [NVARCHAR](255) NULL ,
              [Graduated] [NVARCHAR](255) NULL ,
              [File Name] [NVARCHAR](255) NULL ,
              [Tab Name] [NVARCHAR](255) NULL
            )
        ON  [PRIMARY]
    END 
GO
IF NOT EXISTS ( SELECT  1
                FROM    INFORMATION_SCHEMA.TABLES AS t
                WHERE   t.TABLE_NAME LIKE 'CompletersPivoted'
                        AND t.TABLE_SCHEMA LIKE 'Staging' )
    BEGIN

        CREATE TABLE [staging].[CompletersPivoted]
            (
              [staffuniqueid] [NVARCHAR](4000) NULL ,
              [Alternative_Internship_Year_School] [NVARCHAR](255) NULL ,
              [Hours_Student_Teaching_School] [NVARCHAR](255) NULL ,
              [Student_Teaching_District] [NVARCHAR](255) NULL ,
              [CT_First_Name] [NVARCHAR](255) NULL ,
              [CT_MI] [NVARCHAR](255) NULL ,
              [CT_Last_Name] [NVARCHAR](255) NULL ,
              [completer_birth_date] [NVARCHAR](255) NOT NULL ,
              [ssn_last_5] [NVARCHAR](255) NOT NULL ,
              [Institution_ID] [NVARCHAR](255) NULL ,
              [Institution_Name] [NVARCHAR](255) NULL
            )
        ON  [PRIMARY]

    END 

IF NOT EXISTS ( SELECT  1
                FROM    INFORMATION_SCHEMA.TABLES AS t
                WHERE   t.TABLE_NAME LIKE 'COURSE_SECTION_ENROLL'
                        AND t.TABLE_SCHEMA LIKE 'Staging' )
    BEGIN

        CREATE TABLE [staging].[COURSE_SECTION_ENROLL]
            (
              [STAFF_KEY] [BIGINT] NULL ,
              [STAFF_ID] [NVARCHAR](12) NULL ,
              [DISTRICT_NAME] [NVARCHAR](100) NULL ,
              [DISTRICT_CODE] [NVARCHAR](10) NULL ,
              [LOCATION_KEY] [BIGINT] NULL ,
              [LOCATION_ID] [NVARCHAR](20) NULL ,
              [LOCATION_NAME] [NVARCHAR](100) NULL ,
              [COURSE_KEY] [BIGINT] NULL ,
              [COURSE_ID] [NVARCHAR](60) NULL ,
              [COURSE_NAME] [NVARCHAR](100) NULL ,
              [SECTION_CODE] [NVARCHAR](30) NULL ,
              [SCHOOL_YEAR] [INT] NULL
            )
        ON  [PRIMARY]
    END 
GO
IF NOT EXISTS ( SELECT  1
                FROM    INFORMATION_SCHEMA.TABLES AS t
                WHERE   t.TABLE_NAME LIKE 'Credential'
                        AND t.TABLE_SCHEMA LIKE 'Staging' )
    BEGIN

        CREATE TABLE [staging].[Credential]
            (
              [TeacherCandidateIdentifier] [NVARCHAR](13) NULL ,
              [CredentialIdentifier] [NVARCHAR](60) NULL ,
              [STAFF_ID] [NVARCHAR](25) NULL ,
              [STAFF_BIRTHDATE] [DATETIME] NULL ,
              [EXPIRATION_DATE] [DATETIME] NULL ,
              [CERT_AREA_DESC] [NVARCHAR](1024) NULL ,
              [CERTIFICATE_NUMBER] [NVARCHAR](30) NULL ,
              [CERT_TYPE_KEY] [BIGINT] NULL ,
              [CERT_AREA_KEY] [BIGINT] NULL ,
              [CERT_LEVEL_KEY] [BIGINT] NULL ,
              [EFFECTIVE_DATE] [DATETIME] NULL ,
              [CERT_LEVEL_DESC] [NVARCHAR](1024) NULL ,
              [CERT_TYPE_DESC] [NVARCHAR](100) NULL ,
              [CERT_TYPE_CAT] [NVARCHAR](50) NULL ,
              [CERT_STATUS] [NVARCHAR](20) NULL ,
              [SCHOOL_YEAR] [INT] NULL
            )
        ON  [PRIMARY]

    END 
GO
IF NOT EXISTS ( SELECT  1
                FROM    INFORMATION_SCHEMA.TABLES AS t
                WHERE   t.TABLE_NAME LIKE 'IndicatorInformation'
                        AND t.TABLE_SCHEMA LIKE 'Staging' )
    BEGIN

        CREATE TABLE [staging].[IndicatorInformation]
            (
              [PointsPossible] [FLOAT] NULL ,
              [FACT] [NVARCHAR](255) NULL ,
              [Criteria] [NVARCHAR](255) NULL
            )
        ON  [PRIMARY]
    END 
GO

IF NOT EXISTS ( SELECT  1
                FROM    INFORMATION_SCHEMA.TABLES AS t
                WHERE   t.TABLE_NAME LIKE 'LOCATION_YEAR'
                        AND t.TABLE_SCHEMA LIKE 'Staging' )
    BEGIN

        CREATE TABLE [staging].[LOCATION_YEAR]
            (
              [DISTRICT_KEY] [BIGINT] NULL ,
              [LOCATION_KEY] [BIGINT] NULL ,
              [PERIOD_KEY] [BIGINT] NULL ,
              [LOCATION_ID] [NVARCHAR](32) NULL ,
              [ROW_INDICATOR] [NVARCHAR](1) NULL ,
              [LOCATION_NAME] [NVARCHAR](75) NULL ,
              [SCHOOL_TYPE_CODE] [NVARCHAR](15) NULL ,
              [SCHOOL_TYPE_DESC] [NVARCHAR](100) NULL ,
              [LOCATION_STATUS] [NVARCHAR](100) NULL ,
              [SCHOOL_YEAR] [INT] NULL ,
              [ORG_TYPE_LONG] [NVARCHAR](100) NULL ,
              [DISTRICT_CODE] [NVARCHAR](32) NULL ,
              [DISTRICT_NAME] [NVARCHAR](255) NULL
            )
        ON  [PRIMARY]
    END 
GO
IF NOT EXISTS ( SELECT  1
                FROM    INFORMATION_SCHEMA.TABLES AS t
                WHERE   t.TABLE_NAME LIKE 'ObservationData'
                        AND t.TABLE_SCHEMA LIKE 'Staging' )
    BEGIN

        CREATE TABLE [staging].[ObservationData]
            (
              [Rubric] [NVARCHAR](50) NULL ,
              [ObservationDataID] [INT] NULL ,
              [YearEnding] [DATE] NULL ,
              [SchoolID] [INT] NULL ,
              [Assessment] [NVARCHAR](100) NULL ,
              [DistrictCode] [VARCHAR](10) NOT NULL ,
              [LicenseNumber] [VARCHAR](50) NULL ,
              [D1A] [INT] NULL ,
              [D1B] [INT] NULL ,
              [D1C] [INT] NULL ,
              [D1D] [INT] NULL ,
              [D1E] [INT] NULL ,
              [D1F] [INT] NULL ,
              [D2A] [INT] NULL ,
              [D2B] [INT] NULL ,
              [D2C] [INT] NULL ,
              [D2D] [INT] NULL ,
              [D2E] [INT] NULL ,
              [D3A] [INT] NULL ,
              [D3B] [INT] NULL ,
              [D3C] [INT] NULL ,
              [D3D] [INT] NULL ,
              [D3E] [INT] NULL ,
              [D4A] [INT] NULL ,
              [D4B] [INT] NULL ,
              [D4C] [INT] NULL ,
              [D4D] [INT] NULL ,
              [D4E] [INT] NULL ,
              [D4F] [INT] NULL
            )
        ON  [PRIMARY]

    END 
GO

IF NOT EXISTS ( SELECT  1
                FROM    INFORMATION_SCHEMA.TABLES AS t
                WHERE   t.TABLE_NAME LIKE 'ObservationDataPivot'
                        AND t.TABLE_SCHEMA LIKE 'Staging' )
    BEGIN

        CREATE TABLE [staging].[ObservationDataPivot]
            (
              [Id] [NVARCHAR](138) NULL ,
              [EducationOrganizationId] [NVARCHAR](20) NULL ,
              [YearEnding] [DATE] NULL ,
              [Rubric] [NVARCHAR](50) NULL ,
              [Assessment] [VARCHAR](100) NULL ,
              [DistrictCode] [VARCHAR](10) NULL ,
              [SchoolID] [INT] NULL ,
              [ObservationDataID] [INT] NULL ,
              [LicenseNumber] [NVARCHAR](50) NULL ,
              [Score] [VARCHAR](10) NULL ,
              [ScoreName] [NVARCHAR](128) NULL
            )
        ON  [PRIMARY]

    END 
GO
IF NOT EXISTS ( SELECT  1
                FROM    INFORMATION_SCHEMA.TABLES AS t
                WHERE   t.TABLE_NAME LIKE 'SchoolGrades'
                        AND t.TABLE_SCHEMA LIKE 'Staging' )
    BEGIN

        CREATE TABLE [staging].[SchoolGrades]
            (
              [schnumb] [FLOAT] NULL ,
              [AGAID] [FLOAT] NULL ,
              [distcode] [FLOAT] NULL ,
              [distname] [NVARCHAR](255) NULL ,
              [schname] [NVARCHAR](255) NULL ,
              [schtype] [NVARCHAR](255) NULL ,
              [OverallPts] [FLOAT] NULL ,
              [Q3Pts] [FLOAT] NULL ,
              [Q1Pts] [FLOAT] NULL ,
              [Overall3YrsPts] [FLOAT] NULL ,
              [Overall3YrsLetter] [NVARCHAR](255) NULL ,
              [SchoolYear] [NVARCHAR](4) NULL ,
              [OverallLetter] [NVARCHAR](255) NULL
            )
        ON  [PRIMARY]

    END

IF NOT EXISTS ( SELECT  1
                FROM    INFORMATION_SCHEMA.TABLES AS t
                WHERE   t.TABLE_NAME LIKE 'STAFF'
                        AND t.TABLE_SCHEMA LIKE 'Staging' )
    BEGIN
        CREATE TABLE [staging].[STAFF]
            (
              [STAFF_ID] [NVARCHAR](25) NULL ,
              [STAFF_ID_ALT] [NVARCHAR](25) NULL ,
              [STAFF_KEY] [BIGINT] NULL ,
              [UNIQUE_STAFF_ID] [BIGINT] NULL ,
              [LOCATION_KEY] [BIGINT] NULL ,
              [DISTRICT_KEY] [BIGINT] NULL ,
              [ORIG_HIRE_DATE] [DATETIME] NULL ,
              [EXIT_DATE] [DATETIME] NULL ,
              [INACTIVE_DATE] [DATETIME] NULL ,
              [TENURE_DATE] [DATETIME] NULL ,
              [STAFF_BIRTHDATE] [DATETIME] NULL ,
              [ROW_INDICATOR] [NVARCHAR](1) NULL ,
              [STAFF_FIRST_NM] [NVARCHAR](100) NULL ,
              [STAFF_LAST_NM] [NVARCHAR](100) NULL ,
              [HISPANIC_IND] [NVARCHAR](20) NULL
            )
        ON  [PRIMARY]
    END 
GO
IF NOT EXISTS ( SELECT  1
                FROM    INFORMATION_SCHEMA.TABLES AS t
                WHERE   t.TABLE_NAME LIKE 'STAFF_CERT_AREA'
                        AND t.TABLE_SCHEMA LIKE 'Staging' )
    BEGIN

        CREATE TABLE [staging].[STAFF_CERT_AREA]
            (
              [DISTRICT_KEY] [BIGINT] NULL ,
              [CERT_AREA_KEY] [BIGINT] NULL ,
              [CERT_AREA_CODE] [NVARCHAR](32) NULL ,
              [CERT_AREA_DESC] [NVARCHAR](1024) NULL ,
              [REQ_CERT_AREA_IND] [NVARCHAR](1) NULL ,
              [ROW_INDICATOR] [NVARCHAR](1) NULL ,
              [SCHOOL_YEAR] [INT] NULL
            )
        ON  [PRIMARY]
    END 
GO
IF NOT EXISTS ( SELECT  1
                FROM    INFORMATION_SCHEMA.TABLES AS t
                WHERE   t.TABLE_NAME LIKE 'STAFF_CERT_LEVEL'
                        AND t.TABLE_SCHEMA LIKE 'Staging' )
    BEGIN

        CREATE TABLE [staging].[STAFF_CERT_LEVEL]
            (
              [DISTRICT_KEY] [BIGINT] NULL ,
              [SCHOOL_YEAR] [INT] NULL ,
              [CERT_LEVEL_KEY] [BIGINT] NULL ,
              [CERT_LEVEL_CODE] [NVARCHAR](30) NULL ,
              [CERT_LEVEL_DESC] [NVARCHAR](1024) NULL ,
              [CERT_LEVEL_CAT] [NVARCHAR](50) NULL
            )
        ON  [PRIMARY]
    END 
GO
IF NOT EXISTS ( SELECT  1
                FROM    INFORMATION_SCHEMA.TABLES AS t
                WHERE   t.TABLE_NAME LIKE 'STAFF_CERT_SNAPSHOT'
                        AND t.TABLE_SCHEMA LIKE 'Staging' )
    BEGIN

        CREATE TABLE [staging].[STAFF_CERT_SNAPSHOT]
            (
              [STAFF_KEY] [BIGINT] NULL ,
              [DISTRICT_KEY] [BIGINT] NULL ,
              [CERT_TYPE_KEY] [BIGINT] NULL ,
              [CERT_AREA_KEY] [BIGINT] NULL ,
              [CERT_LEVEL_KEY] [BIGINT] NULL ,
              [EFFECTIVE_DATE] [DATETIME] NULL ,
              [EXPIRATION_DATE] [DATETIME] NULL ,
              [ROW_INDICATOR] [NVARCHAR](1) NULL ,
              [CERT_STATUS_CD] [NVARCHAR](20) NULL ,
              [CERT_STATUS] [NVARCHAR](20) NULL ,
              [CERTIFICATE_NUMBER] [NVARCHAR](30) NULL ,
              [SCHOOL_YEAR] [INT] NULL
            )
        ON  [PRIMARY]
    END 
GO
IF NOT EXISTS ( SELECT  1
                FROM    INFORMATION_SCHEMA.TABLES AS t
                WHERE   t.TABLE_NAME LIKE 'STAFF_CERT_TYPE'
                        AND t.TABLE_SCHEMA LIKE 'Staging' )
    BEGIN

        CREATE TABLE [staging].[STAFF_CERT_TYPE]
            (
              [DISTRICT_KEY] [BIGINT] NULL ,
              [CERT_TYPE_KEY] [BIGINT] NULL ,
              [CERT_TYPE_CODE] [NVARCHAR](20) NULL ,
              [CERT_TYPE_DESC] [NVARCHAR](100) NULL ,
              [CERT_TYPE_CAT] [NVARCHAR](50) NULL ,
              [ROW_INDICATOR] [NVARCHAR](1) NULL ,
              [SCHOOL_YEAR] [INT] NULL
            )
        ON  [PRIMARY]
    END 
GO
IF NOT EXISTS ( SELECT  1
                FROM    INFORMATION_SCHEMA.TABLES AS t
                WHERE   t.TABLE_NAME LIKE 'STAFF_SNAPSHOT'
                        AND t.TABLE_SCHEMA LIKE 'Staging' )
    BEGIN
        CREATE TABLE [staging].[STAFF_SNAPSHOT]
            (
              [STAFF_SNAPSHOT_KEY] [BIGINT] NULL ,
              [STAFF_ID] [NVARCHAR](25) NULL ,
              [STAFF_ID_ALT] [NVARCHAR](25) NULL ,
              [STAFF_KEY] [BIGINT] NULL ,
              [LOCATION_KEY] [BIGINT] NULL ,
              [DISTRICT_KEY] [BIGINT] NULL ,
              [SNAPSHOT_DATE] [DATETIME] NULL ,
              [ORIG_HIRE_DATE] [DATETIME] NULL ,
              [EXIT_DATE] [DATETIME] NULL ,
              [INACTIVE_DATE] [DATETIME] NULL ,
              [TENURE_DATE] [DATETIME] NULL ,
              [ROW_INDICATOR] [NVARCHAR](1) NULL ,
              [SCHOOL_YEAR] [INT] NULL
            )
        ON  [PRIMARY]
    END 
GO
IF NOT EXISTS ( SELECT  1
                FROM    INFORMATION_SCHEMA.TABLES AS t
                WHERE   t.TABLE_NAME LIKE 'StaffSchoolAssociation'
                        AND t.TABLE_SCHEMA LIKE 'Staging' )
    BEGIN

        CREATE TABLE [staging].[StaffSchoolAssociation]
            (
              [STAFF_ID] [NVARCHAR](12) NULL ,
              [LOCATION_ID] [NVARCHAR](20) NULL ,
              [MIN_GRADE_LVL_CD] [INT] NULL ,
              [MAX_GRADE_LVL_CD] [INT] NULL ,
              [SCHOOL_YEAR] [INT] NULL
            )
        ON  [PRIMARY]
    END 
GO
IF NOT EXISTS ( SELECT  1
                FROM    INFORMATION_SCHEMA.TABLES AS t
                WHERE   t.TABLE_NAME LIKE 'STATE_COURSE'
                        AND t.TABLE_SCHEMA LIKE 'Staging' )
    BEGIN

        CREATE TABLE [staging].[STATE_COURSE]
            (
              [DISTRICT_KEY] [BIGINT] NULL ,
              [MIN_GRADE_LVL_CD] [NVARCHAR](25) NULL ,
              [MAX_GRADE_LVL_CD] [NVARCHAR](25) NULL ,
              [SUBJECT_AREA_DESC] [NVARCHAR](100) NULL ,
              [STATE_COURSE_KEY] [BIGINT] NULL ,
              [STATE_COURSE_NAME] [NVARCHAR](100) NULL ,
              [STATE_COURSE_ID] [NVARCHAR](60) NULL ,
              [SCHOOL_YEAR] [INT] NULL
            )
        ON  [PRIMARY]
    END 
GO

IF NOT EXISTS ( SELECT  1
                FROM    INFORMATION_SCHEMA.TABLES AS t
                WHERE   t.TABLE_NAME LIKE 'SurveyScores'
                        AND t.TABLE_SCHEMA LIKE 'Staging' )
    BEGIN
        CREATE TABLE [staging].[SurveyScores]
            (
              [SurveyScoreID] [INT] NULL ,
              [YearEnding] [DATETIME] NULL ,
              [TeacherID] [INT] NULL ,
              [SurveyTypeID] [INT] NULL
            )
        ON  [PRIMARY]
    END 
GO
IF NOT EXISTS ( SELECT  1
                FROM    INFORMATION_SCHEMA.TABLES AS t
                WHERE   t.TABLE_NAME LIKE 'TeacherAttendanceScore'
                        AND t.TABLE_SCHEMA LIKE 'Staging' )
    BEGIN
        CREATE TABLE [staging].[TeacherAttendanceScore]
            (
              [TeacherId] [INT] NULL ,
              [SchoolId] [INT] NULL ,
              [ExternalStaffId] [NVARCHAR](50) NULL ,
              [SchoolYear] [DATETIME] NULL ,
              [Score] [NUMERIC](18, 6) NULL ,
              [NumberOfLocations] [INT] NULL ,
              [NumberOfDaysAbsent] [FLOAT] NULL
            )
        ON  [PRIMARY]
    END 
GO
IF NOT EXISTS ( SELECT  1
                FROM    INFORMATION_SCHEMA.TABLES AS t
                WHERE   t.TABLE_NAME LIKE 'TeacherCandidates'
                        AND t.TABLE_SCHEMA LIKE 'Staging' )
    BEGIN
        CREATE TABLE [staging].[TeacherCandidates]
            (
              [TeacherCandidateIdentifier] [NVARCHAR](4000) NULL ,
              [BirthDate] [NVARCHAR](255) NULL ,
              [Gender] [NVARCHAR](255) NULL ,
              [FirstName] [NVARCHAR](255) NULL ,
              [MiddleName] [NVARCHAR](255) NULL ,
              [LastSurname] [NVARCHAR](255) NULL ,
              [NMEthnicity] [NVARCHAR](255) NULL ,
              [ACTScore] [NVARCHAR](255) NULL ,
              [SATScore] [NVARCHAR](255) NULL ,
              [SSN] [NVARCHAR](10) NULL ,
              [LicensureComplete] [NVARCHAR](255) NULL ,
              [CertificateGranted] [NVARCHAR](255) NULL ,
              [OtherMinor1] [NVARCHAR](255) NULL ,
              [OtherMinor2] [NVARCHAR](255) NULL ,
              [ProgramArea1] [NVARCHAR](255) NULL ,
              [Program2Area] [NVARCHAR](255) NULL ,
              [Program1SubjectArea1] [NVARCHAR](255) NULL ,
              [Program1SubjectArea2] [NVARCHAR](255) NULL ,
              [Program2SubjectArea] [NVARCHAR](255) NULL ,
              [BilingualMinor1] [NVARCHAR](255) NULL ,
              [BilingualMinor2] [NVARCHAR](255) NULL
            )
        ON  [PRIMARY]
    END 
GO
IF NOT EXISTS ( SELECT  1
                FROM    INFORMATION_SCHEMA.TABLES AS t
                WHERE   t.TABLE_NAME LIKE 'TeacherCandidateTeacherPreparationProviderAssociation'
                        AND t.TABLE_SCHEMA LIKE 'Staging' )
    BEGIN
        CREATE TABLE [staging].[TeacherCandidateTeacherPreparationProviderAssociation]
            (
              [TeacherCandidateIdentifier] [NVARCHAR](15) NULL ,
              [SSN] [NVARCHAR](5) NULL ,
              [EducationOrganizationId] [NVARCHAR](255) NULL ,
              [InstitutionName] [NVARCHAR](255) NULL ,
              [FileStatus] [VARCHAR](10) NULL ,
              [EndDate] [NVARCHAR](261) NULL ,
              [EntryDate] [NVARCHAR](261) NULL ,
              [StartYear] [NVARCHAR](255) NULL ,
              [StartMonth] [NVARCHAR](255) NULL ,
              [EndYear] [NVARCHAR](255) NULL ,
              [EndMonth] [NVARCHAR](255) NULL ,
              [AdmissionStatus] [NVARCHAR](255) NULL ,
              [ProgramName] [NVARCHAR](255) NULL
            )
        ON  [PRIMARY]
    END 
GO
IF NOT EXISTS ( SELECT  1
                FROM    INFORMATION_SCHEMA.TABLES AS t
                WHERE   t.TABLE_NAME LIKE 'TeacherEvaluation'
                        AND t.TABLE_SCHEMA LIKE 'Staging' )
    BEGIN

        CREATE TABLE [staging].[TeacherEvaluation]
            (
              [STAFF_ID] [NVARCHAR](25) NULL ,
              [Rating] [NVARCHAR](25) NULL ,
              [SCHOOL_DISTRICT_ID] [NVARCHAR](7) NULL ,
              [SchoolYear] [INT] NULL ,
              [EvaluationTotalPoints] [NUMERIC](12, 9) NULL ,
              [MultipleMeasure3Points] [NUMERIC](12, 9) NULL ,
              [MultipleMeasure3PossiblePoints] [NUMERIC](18, 0) NULL
            )
        ON  [PRIMARY]
    END 
GO
IF NOT EXISTS ( SELECT  1
                FROM    INFORMATION_SCHEMA.TABLES AS t
                WHERE   t.TABLE_NAME LIKE 'TeacherEvaluationsV3'
                        AND t.TABLE_SCHEMA LIKE 'Staging' )
    BEGIN
        CREATE TABLE [staging].[TeacherEvaluationsV3]
            (
              [YearEnding] [DATE] NULL ,
              [LicenseNumber] [VARCHAR](10) NULL ,
              [TeacherID] [INT] NULL ,
              [DistrictID] [INT] NULL ,
              [DistrictCode] [NVARCHAR](10) NULL ,
              [SchoolID] [INT] NULL ,
              [SchoolCode] [NVARCHAR](10) NULL ,
              [ExternalLocationKey] [NVARCHAR](10) NULL ,
              [TeacherEvaluationID] [INT] NULL ,
              [Step] [TINYINT] NULL ,
              [Rating] [VARCHAR](50) NULL ,
              [StudentAchievement1Points] [NUMERIC](18, 10) NULL ,
              [StudentAchievement1PossiblePoints] [INT] NULL ,
              [StudentAchievement2Points] [NUMERIC](18, 10) NULL ,
              [StudentAchievement2PossiblePoints] [INT] NULL ,
              [StudentAchievement3Points] [NUMERIC](18, 10) NULL ,
              [StudentAchievement3PossiblePoints] [INT] NULL ,
              [StudentAchievementTotal] [NUMERIC](18, 10) NULL ,
              [MultipleMeasure1Description] [VARCHAR](50) NULL ,
              [MultipleMeasure1Points] [NUMERIC](18, 10) NULL ,
              [MultipleMeasure1PossiblePoints] [INT] NULL ,
              [MultipleMeasure2Description] [NVARCHAR](50) NULL ,
              [MultipleMeasure2Points] [NUMERIC](18, 10) NULL ,
              [MultipleMeasure2PossiblePoints] [INT] NULL ,
              [MultipleMeasure3Description] [NVARCHAR](50) NULL ,
              [MultipleMeasure3Points] [NUMERIC](18, 10) NULL ,
              [MultipleMeasure3PossiblePoints] [INT] NULL ,
              [MultipleMeasureTotal] [NUMERIC](18, 10) NULL ,
              [ObservationPoints] [NUMERIC](18, 10) NULL ,
              [ObservationPossiblePoints] [INT] NULL ,
              [ObservationTotal] [NUMERIC](18, 10) NULL ,
              [EvaluationTotalPoints] [NUMERIC](18, 10) NULL ,
              [EvaluationTotalPointsPossible] [INT] NULL ,
              [DistrictMedian] [NUMERIC](18, 10) NULL ,
              [StateMedian] [NUMERIC](18, 10) NULL
            )
        ON  [PRIMARY]
    END 
GO
IF NOT EXISTS ( SELECT  1
                FROM    INFORMATION_SCHEMA.TABLES AS t
                WHERE   t.TABLE_NAME LIKE 'TeacherObservationScores'
                        AND t.TABLE_SCHEMA LIKE 'Staging' )
    BEGIN
        CREATE TABLE [staging].[TeacherObservationScores]
            (
              [YearEnding] [DATE] NULL ,
              [D1A] [NUMERIC](9, 6) NULL ,
              [D1B] [NUMERIC](9, 6) NULL ,
              [D1D] [NUMERIC](9, 6) NULL ,
              [D1E] [NUMERIC](9, 6) NULL ,
              [D1F] [NUMERIC](9, 6) NULL ,
              [D2B] [NUMERIC](9, 6) NULL ,
              [D2C] [NUMERIC](9, 6) NULL ,
              [D2D] [NUMERIC](9, 6) NULL ,
              [D2E] [NUMERIC](9, 6) NULL ,
              [D3A] [NUMERIC](9, 6) NULL ,
              [D3B] [NUMERIC](9, 6) NULL ,
              [D3C] [NUMERIC](9, 6) NULL ,
              [D3E] [NUMERIC](9, 6) NULL ,
              [D4A] [NUMERIC](9, 6) NULL ,
              [D4B] [NUMERIC](9, 6) NULL ,
              [D4C] [NUMERIC](9, 6) NULL ,
              [D4D] [NUMERIC](9, 6) NULL ,
              [D4E] [NUMERIC](9, 6) NULL ,
              [D4F] [NUMERIC](9, 6) NULL ,
              [D2A] [NUMERIC](9, 6) NULL ,
              [D1D4TotalScore] [NUMERIC](9, 6) NULL ,
              [D2D3TotalScore] [NUMERIC](9, 6) NULL ,
              [LicenseNumber] [VARCHAR](10) NULL ,
              [TeacherId] [INT] NULL ,
              [DistrictId] [INT] NULL ,
              [DistrictCode] [NVARCHAR](10) NULL ,
              [SchoolID] [INT] NULL ,
              [SchoolCode] [NVARCHAR](10) NULL ,
              [ExternalLocationKey] [NVARCHAR](10) NULL ,
              [ID] [INT] NULL
            )
        ON  [PRIMARY]
    END 
GO
IF NOT EXISTS ( SELECT  1
                FROM    INFORMATION_SCHEMA.TABLES AS t
                WHERE   t.TABLE_NAME LIKE 'Teachers'
                        AND t.TABLE_SCHEMA LIKE 'Staging' )
    BEGIN
        CREATE TABLE [staging].[Teachers]
            (
              [TeacherID] [INT] NULL ,
              [ExternalDistrictKey] [NVARCHAR](50) NULL ,
              [ExternalStaffKey] [NVARCHAR](50) NULL ,
              [ExternalStaffID] [NVARCHAR](50) NULL ,
              [FirstName] [NVARCHAR](50) NULL ,
              [MiddleName] [NVARCHAR](50) NULL ,
              [LastName] [NVARCHAR](50) NULL ,
              [LicenseNumber] [NVARCHAR](50) NULL ,
              [Created] [DATETIME] NULL ,
              [CreatedBy] [NVARCHAR](50) NULL ,
              [LastUpdated] [DATETIME] NULL ,
              [LastUpdatedBy] [NVARCHAR](50) NULL ,
              [EmailAddress] [NVARCHAR](150) NULL ,
              [SchoolYear] [DATE] NULL
            )
        ON  [PRIMARY]
    END 
GO
IF NOT EXISTS ( SELECT  1
                FROM    INFORMATION_SCHEMA.TABLES AS t
                WHERE   t.TABLE_NAME LIKE 'TeacherValueAddedTests'
                        AND t.TABLE_SCHEMA LIKE 'Staging' )
    BEGIN
        CREATE TABLE [staging].[TeacherValueAddedTests]
            (
              [ExternalStaffId] [NVARCHAR](50) NULL ,
              [TeacherID] [INT] NULL ,
              [AssessmentSubtestGroupName] [VARCHAR](50) NULL ,
              [TotalNumStudentsCurrentYear] [INT] NULL ,
              [TotalVASOverall] [FLOAT] NULL ,
              [CurrentYear] [INT] NULL
            )
        ON  [PRIMARY]
    END 
GO
IF NOT EXISTS ( SELECT  1
                FROM    INFORMATION_SCHEMA.TABLES AS t
                WHERE   t.TABLE_NAME LIKE 'TeacherValuesAddedScores'
                        AND t.TABLE_SCHEMA LIKE 'Staging' )
    BEGIN
        CREATE TABLE [staging].[TeacherValuesAddedScores]
            (
              [ExternalStaffId] [NVARCHAR](50) NULL ,
              [TeacherID] [INT] NULL ,
              [Year] [INT] NULL ,
              [IsActive] [BIT] NULL ,
              [TotalNumberofStudentsIncluded] [INT] NULL ,
              [VAS] [NUMERIC](18, 10) NULL ,
              [AssessmentSubtestGroupName] [VARCHAR](50) NULL
            )
        ON  [PRIMARY]
    END 
GO
IF NOT EXISTS ( SELECT  1
                FROM    INFORMATION_SCHEMA.TABLES AS t
                WHERE   t.TABLE_NAME LIKE 'vw_crse_instruct_snapshot_staff_snapshot_course_state_enroll'
                        AND t.TABLE_SCHEMA LIKE 'Staging' )
    BEGIN
        CREATE TABLE [staging].[vw_crse_instruct_snapshot_staff_snapshot_course_state_enroll]
            (
              [STAFF_KEY] [BIGINT] NULL ,
              [STAFF_ID] [NVARCHAR](12) NULL ,
              [LOCATION_ID] [NVARCHAR](20) NULL ,
              [COURSE_ID] [NVARCHAR](60) NULL ,
              [COURSE_NAME] [NVARCHAR](100) NULL ,
              [SECTION_CODE] [NVARCHAR](30) NULL ,
              [MIN_GRADE_LVL_CD] [NVARCHAR](25) NULL ,
              [MAX_GRADE_LVL_CD] [NVARCHAR](25) NULL ,
              [SUBJECT_AREA_DESC] [NVARCHAR](100) NULL ,
              [STATE_COURSE_NAME] [NVARCHAR](100) NULL ,
              [STATE_COURSE_ID] [NVARCHAR](60) NULL ,
              [SCHOOL_YEAR] [INT] NULL ,
              [DISTRICT_KEY] [BIGINT] NULL ,
              [LOCATION_KEY] [BIGINT] NULL ,
              [COURSE_KEY] [BIGINT] NULL ,
              [STATE_COURSE_KEY] [BIGINT] NULL ,
              [DISTRICT_NAME] [NVARCHAR](100) NULL ,
              [DISTRICT_CODE] [NVARCHAR](10) NULL ,
              [LOCATION_NAME] [NVARCHAR](100) NULL
            )
        ON  [PRIMARY]
    END 
GO
