SELECT
a.VersionID as VersionID,
a.JourneyID as JourneyID,
a.JourneyName as JourneyName,
a.VersionNumber as VersionNumber,
a.JourneyStatus as JourneyStatus,
b.JourneyActivityObjectID as JourneyActivityObjectID,
b.ActivityName as ActivityName,
b.ActivityType as ActivityType,
c.TriggeredSendCustomerKey as TriggeredSendCustomerKey,
'Refresh' as Remark
FROM
_Journey as a
INNER JOIN
_JourneyActivity as b
ON a.VersionID = b.VersionID
INNER JOIN
_Job as c
ON b.JourneyActivityObjectID = c.TriggererSendDefinitionObjectID
WHERE
a.JourneyName = 'Plan Package Email' /* my journey name */
AND
a.JourneyStatus = 'Running'
AND
b.ActivityType = 'EMAILV2'