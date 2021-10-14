SELECT
sfdc._ContactKey as SubscriberKey,
sfdc.Email as SF_email,
allsub.EmailAddress as MC_email,
'Duc quick test' as Remark
FROM
ent.[Contact_Salesforce_1] as sfdc
INNER JOIN
ent._Subscribers as allsub
ON
sfdc._ContactKey = allsub.SubscriberKey
WHERE sfdc.Email != allsub.EmailAddress