
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


IF ( EXISTS ( SELECT    *
              FROM      INFORMATION_SCHEMA.TABLES
              WHERE     TABLE_SCHEMA = 'mapping'
                        AND TABLE_NAME = 'GeneratedFiles' ) )
    BEGIN
        DROP TABLE [mapping].[GeneratedFiles]
    END

CREATE TABLE [mapping].[GeneratedFiles]
    (
      [FileName] [NVARCHAR](255) NOT NULL ,
      [FileType] [NVARCHAR](255) NOT NULL ,
      [Executed] [INT] NOT NULL
    )
ON  [PRIMARY]

GO
IF ( EXISTS ( SELECT    *
              FROM      INFORMATION_SCHEMA.TABLES
              WHERE     TABLE_SCHEMA = 'mapping'
                        AND TABLE_NAME = 'StoredProcedure' ) )
    BEGIN
        DROP TABLE [mapping].[StoredProcedure]
    END
 GO
CREATE TABLE [mapping].[StoredProcedure]
    (
      [StoredProcedureName] [NVARCHAR](250) NOT NULL ,
      [FileName] [NVARCHAR](250) NOT NULL ,
      [Enabled] [BIT] NULL ,
      [MaxRowsQuery] [NVARCHAR](MAX) NULL ,
      [FileHeader] [NVARCHAR](4000) NULL ,
      [MaxRows] [BIGINT] NULL
    )
ON  [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
IF ( EXISTS ( SELECT    *
              FROM      INFORMATION_SCHEMA.TABLES
              WHERE     TABLE_SCHEMA = 'mapping'
                        AND TABLE_NAME = 'XMLData' ) )
    BEGIN
        DROP TABLE [mapping].[XMLData]
    END

CREATE TABLE [mapping].[XMLData]
    (
      [FileName] [NVARCHAR](1000) NULL ,
      [XMLData] [XML] NULL
    )
ON  [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT  [mapping].[StoredProcedure]
        ( [StoredProcedureName] ,
          [FileName] ,
          [Enabled] ,
          [MaxRowsQuery] ,
          [FileHeader] ,
          [MaxRows]
        )
VALUES  ( N'mapping.EducationOrganization_proc' ,
          N'Interchange-EducationOrganization' ,
          1 ,
          N'
SELECT  ( COUNT(*) / REPLACEME ), COUNT(*)
FROM [staging].[vw_crse_instruct_snapshot_staff_snapshot_course_state_enroll]
' ,
          N'<InterchangeEducationOrganization xmlns="http://ed-fi.org/0200" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://ed-fi.org/0200 C:\Projects\Ed-Fi\interchange\Schemas\EXTENSION-Interchange-EducationOrganization-Extension.xsd"' ,
          4000000
        )
INSERT  [mapping].[StoredProcedure]
        ( [StoredProcedureName] ,
          [FileName] ,
          [Enabled] ,
          [MaxRowsQuery] ,
          [FileHeader] ,
          [MaxRows]
        )
VALUES  ( N'mapping.EducationOrgCalendar_proc' ,
          N'Interchange-EducationOrgCalendar' ,
          1 ,
          N'
SELECT  ( COUNT(*) / REPLACEME ), COUNT(*)
FROM [staging].[vw_crse_instruct_snapshot_staff_snapshot_course_state_enroll]
' ,
          N'<InterchangeEducationOrgCalendar xmlns="http://ed-fi.org/0200" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://ed-fi.org/0200 C:\Projects\Ed-Fi\interchange\Schemas\EXTENSION-Interchange-EducationOrgCalendar-Extension.xsd"' ,
          4000000
        )
INSERT  [mapping].[StoredProcedure]
        ( [StoredProcedureName] ,
          [FileName] ,
          [Enabled] ,
          [MaxRowsQuery] ,
          [FileHeader] ,
          [MaxRows]
        )
VALUES  ( N'mapping.MasterSchedule_proc' ,
          N'Interchange-MasterSchedule' ,
          1 ,
          N'SELECT  ( count(distinct [LOCATION_ID] +COURSE_ID + SECTION_CODE ) / REPLACEME ), count(distinct [LOCATION_ID] +COURSE_ID + SECTION_CODE )
FROM [staging].[vw_crse_instruct_snapshot_staff_snapshot_course_state_enroll]
' ,
          N'<InterchangeMasterSchedule xmlns="http://ed-fi.org/0200" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://ed-fi.org/0200 C:\Projects\Ed-Fi\interchange\Schemas\Interchange-MasterSchedule.xsd"' ,
          80000
        )
INSERT  [mapping].[StoredProcedure]
        ( [StoredProcedureName] ,
          [FileName] ,
          [Enabled] ,
          [MaxRowsQuery] ,
          [FileHeader] ,
          [MaxRows]
        )
VALUES  ( N'mapping.TeacherCandidate_Credential_proc' ,
          N'Interchange-TeacherCandidate-Credential' ,
          1 ,
          N'
SELECT  ( COUNT(*) / REPLACEME ), COUNT(*)
FROM [staging].[vw_crse_instruct_snapshot_staff_snapshot_course_state_enroll]
' ,
          N'<InterchangeTeacherCandidate xsi:schemaLocation="http://ed-fi.org/0200 EXTENSION-Interchange-TeacherCandidate-Extension.xsd" xmlns="http://ed-fi.org/0200" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"' ,
          4000000
        )
INSERT  [mapping].[StoredProcedure]
        ( [StoredProcedureName] ,
          [FileName] ,
          [Enabled] ,
          [MaxRowsQuery] ,
          [FileHeader] ,
          [MaxRows]
        )
VALUES  ( N'mapping.TeacherCandidate_TeacherCandidate_proc' ,
          N'Interchange-TeacherCandidate-TeacherCandidate' ,
          1 ,
          N'
SELECT  ( COUNT(*) / REPLACEME ), COUNT(*)
FROM [staging].[vw_crse_instruct_snapshot_staff_snapshot_course_state_enroll]
' ,
          N'<InterchangeTeacherCandidate xsi:schemaLocation="http://ed-fi.org/0200 EXTENSION-Interchange-TeacherCandidate-Extension.xsd" xmlns="http://ed-fi.org/0200" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"' ,
          4000000
        )
INSERT  [mapping].[StoredProcedure]
        ( [StoredProcedureName] ,
          [FileName] ,
          [Enabled] ,
          [MaxRowsQuery] ,
          [FileHeader] ,
          [MaxRows]
        )
VALUES  ( N'mapping.TeacherCandidate_TeacherCandidateTeacherPreparationProviderAssociation_proc' ,
          N'Interchange-TeacherCandidate-TeacherCandidateTeacherPreparationProviderAssociation' ,
          1 ,
          N'
SELECT  ( COUNT(*) / REPLACEME ), COUNT(*)
FROM [staging].[vw_crse_instruct_snapshot_staff_snapshot_course_state_enroll]
' ,
          N'<InterchangeTeacherCandidate xsi:schemaLocation="http://ed-fi.org/0200 EXTENSION-Interchange-TeacherCandidate-Extension.xsd" xmlns="http://ed-fi.org/0200" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"' ,
          4000000
        )
INSERT  [mapping].[StoredProcedure]
        ( [StoredProcedureName] ,
          [FileName] ,
          [Enabled] ,
          [MaxRowsQuery] ,
          [FileHeader] ,
          [MaxRows]
        )
VALUES  ( N'mapping.TeacherCandidate_TeacherCandidateTeacherPreparationProviderProgramAssociation_proc' ,
          N'Interchange-TeacherCandidate-TeacherCandidateTeacherPreparationProviderProgramAssociation' ,
          1 ,
          N'
SELECT  ( COUNT(*) / REPLACEME ), COUNT(*)
FROM [staging].[vw_crse_instruct_snapshot_staff_snapshot_course_state_enroll]
' ,
          N'<InterchangeTeacherCandidate xsi:schemaLocation="http://ed-fi.org/0200 EXTENSION-Interchange-TeacherCandidate-Extension.xsd" xmlns="http://ed-fi.org/0200" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"' ,
          4000000
        )
INSERT  [mapping].[StoredProcedure]
        ( [StoredProcedureName] ,
          [FileName] ,
          [Enabled] ,
          [MaxRowsQuery] ,
          [FileHeader] ,
          [MaxRows]
        )
VALUES  ( N'mapping.PerformanceMeasure_Rubric_proc' ,
          N'Interchange-PerformanceMeasure-Rubric' ,
          1 ,
          N'
SELECT  ( COUNT(*) / REPLACEME ), COUNT(*)
FROM [staging].[vw_crse_instruct_snapshot_staff_snapshot_course_state_enroll]
' ,
          N'<InterchangePerformanceMeasure xsi:schemaLocation="http://ed-fi.org/0200 EXTENSION-Interchange-PerformanceMeasure-Extension.xsd" xmlns="http://ed-fi.org/0200" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"' ,
          4000000
        )
INSERT  [mapping].[StoredProcedure]
        ( [StoredProcedureName] ,
          [FileName] ,
          [Enabled] ,
          [MaxRowsQuery] ,
          [FileHeader] ,
          [MaxRows]
        )
VALUES  ( N'mapping.StaffAssociation_proc' ,
          N'Interchange-StaffAssociation' ,
          1 ,
          N'SELECT  (  COUNT(DISTINCT STAFF_ID )  / REPLACEME ),  COUNT(DISTINCT STAFF_ID) 
FROM [staging].[vw_crse_instruct_snapshot_staff_snapshot_course_state_enroll]
' ,
          N'<InterchangeStaffAssociation xmlns="http://ed-fi.org/0200" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://ed-fi.org/0200 C:\Projects\Ed-Fi\interchange\Schemas\EXTENSION-Interchange-StaffAssociation-Extension.xsd"' ,
          1000
        )
INSERT  [mapping].[StoredProcedure]
        ( [StoredProcedureName] ,
          [FileName] ,
          [Enabled] ,
          [MaxRowsQuery] ,
          [FileHeader] ,
          [MaxRows]
        )
VALUES  ( N'mapping.PerformanceMeasure_RubricLevel_proc' ,
          N'Interchange-PerformanceMeasure-RubricLevel' ,
          1 ,
          N'
SELECT  ( COUNT(*) / REPLACEME ), COUNT(*)
FROM [staging].[vw_crse_instruct_snapshot_staff_snapshot_course_state_enroll]
' ,
          N'<InterchangePerformanceMeasure xsi:schemaLocation="http://ed-fi.org/0200 EXTENSION-Interchange-PerformanceMeasure-Extension.xsd" xmlns="http://ed-fi.org/0200" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"' ,
          4000000
        )
INSERT  [mapping].[StoredProcedure]
        ( [StoredProcedureName] ,
          [FileName] ,
          [Enabled] ,
          [MaxRowsQuery] ,
          [FileHeader] ,
          [MaxRows]
        )
VALUES  ( N'mapping.PerformanceMeasure_RubricLevelResponse_proc' ,
          N'Interchange-PerformanceMeasure-RubricLevelResponse' ,
          1 ,
          N'
SELECT  ( COUNT(*) / REPLACEME ), COUNT(*)
FROM staging.ObservationDataPivot
' ,
          N'<InterchangePerformanceMeasure xsi:schemaLocation="http://ed-fi.org/0200 EXTENSION-Interchange-PerformanceMeasure-Extension.xsd" xmlns="http://ed-fi.org/0200" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"' ,
          100000
        )
INSERT  [mapping].[StoredProcedure]
        ( [StoredProcedureName] ,
          [FileName] ,
          [Enabled] ,
          [MaxRowsQuery] ,
          [FileHeader] ,
          [MaxRows]
        )
VALUES  ( N'mapping.PerformanceMeasure_PerformanceMeasure_proc' ,
          N'Interchange-PerformanceMeasure-PerformanceMeasure' ,
          1 ,
          N'
SELECT  ( COUNT(*) / REPLACEME ), COUNT(*)
FROM [staging].[vw_crse_instruct_snapshot_staff_snapshot_course_state_enroll]
' ,
          N'<InterchangePerformanceMeasure xsi:schemaLocation="http://ed-fi.org/0200 EXTENSION-Interchange-PerformanceMeasure-Extension.xsd" xmlns="http://ed-fi.org/0200" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"' ,
          4000000
        )
INSERT  [mapping].[StoredProcedure]
        ( [StoredProcedureName] ,
          [FileName] ,
          [Enabled] ,
          [MaxRowsQuery] ,
          [FileHeader] ,
          [MaxRows]
        )
VALUES  ( N'mapping.TeacherCandidate_TeacherCandidateFieldworkExperience_proc' ,
          N'Interchange-TeacherCandidate-TeacherCandidateFieldworkExperience' ,
          1 ,
          N'
SELECT  ( COUNT(*) / REPLACEME ), COUNT(*)
FROM [staging].[vw_crse_instruct_snapshot_staff_snapshot_course_state_enroll]
' ,
          N'<InterchangeTeacherCandidate xmlns="http://ed-fi.org/0200" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://ed-fi.org/0200 EXTENSION-Interchange-TeacherCandidate-Extension.xsd"' ,
          4000000
        )
INSERT  [mapping].[StoredProcedure]
        ( [StoredProcedureName] ,
          [FileName] ,
          [Enabled] ,
          [MaxRowsQuery] ,
          [FileHeader] ,
          [MaxRows]
        )
VALUES  ( N'mapping.TeacherCandidate_Student_proc' ,
          N'Interchange-TeacherCandidate-Student' ,
          1 ,
          N'
SELECT  ( COUNT(*) / REPLACEME ), COUNT(*)
FROM [staging].[vw_crse_instruct_snapshot_staff_snapshot_course_state_enroll]
' ,
          N'<InterchangeTeacherCandidate xsi:schemaLocation="http://ed-fi.org/0200 EXTENSION-Interchange-TeacherCandidate-Extension.xsd" xmlns="http://ed-fi.org/0200" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"' ,
          4000000
        )
INSERT  [mapping].[StoredProcedure]
        ( [StoredProcedureName] ,
          [FileName] ,
          [Enabled] ,
          [MaxRowsQuery] ,
          [FileHeader] ,
          [MaxRows]
        )
VALUES  ( N'mapping.TeacherCandidate_TeacherCandidateAcademicRecord_proc' ,
          N'Interchange-TeacherCandidate-TeacherCandidateAcademicRecord' ,
          1 ,
          N'
SELECT  ( COUNT(*) / REPLACEME ), COUNT(*)
FROM [staging].[vw_crse_instruct_snapshot_staff_snapshot_course_state_enroll]
' ,
          N'<InterchangeTeacherCandidate xsi:schemaLocation="http://ed-fi.org/0200 EXTENSION-Interchange-TeacherCandidate-Extension.xsd" xmlns="http://ed-fi.org/0200" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"' ,
          4000000
        )
