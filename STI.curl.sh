# Generate Next Record Name
curl -k -F token=${TOKEN} -F content=generateNextRecordName ${SERVICE}
# Import Records
curl --insecure --form token=${TOKEN} --form content=record --form forceAutoNumber=false --form data="new_record.xml" ${SERVICE}
# Export List of Export Field Names (i.e. variables used during exports and imports)
curl --insecure --form token=${TOKEN} --form content=exportFieldNames --form format=xml ${SERVICE}
curl --insecure --form token=${TOKEN} --form content=exportFieldNames --form format=json ${SERVICE}
curl --insecure --form token=${TOKEN} --form content=exportFieldNames --form format=csv ${SERVICE}
# Export Records
curl --insecure --form token=${TOKEN} --form content=record --form records=1,2 --form format=xml --form type=eav ${SERVICE}
curl --insecure --form token=${TOKEN} --form content=record --form records=1,2 --form format=xml --form type=flat ${SERVICE}
# Export a Survey Link for a Participant
curl --insecure --form token=${TOKEN} --form content=surveyLink --form record=1 --form instrument=my_first_instrument --form format=xml --form type=flat ${SERVICE}
# Export a Survey Queue Link for a Participant
curl --insecure --form token=${TOKEN} --form content=surveyQueueLink --form record=1 --form format=xml --form type=flat ${SERVICE}
