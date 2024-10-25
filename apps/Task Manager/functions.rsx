<GlobalFunctions>
  <SqlQueryUnified
    id="unassigned_tasks"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isMultiplayerEdited={false}
    query={include("./lib/unassigned_tasks.sql", "string")}
    resourceName="43225dde-2ff6-4dba-bf96-31d8139721a2"
    tableName="Tasks"
    transformer="// Query results are available as the `data` variable
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <RESTQuery
    id="list_users"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    resourceName="32e6a925-0dec-4061-853d-20ab1ed72361"
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="update_user"
    actionType="UPDATE_BY"
    changeset={'[{"key":"engineer_assigned","value":"{{select1.value}}"}]'}
    changesetObject="{}"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    filterBy={
      '[{"key":"task_name","value":"{{ table1.selectedRow.task_id }}","operation":"="}]'
    }
    isMultiplayerEdited={false}
    query={include("./lib/update_user.sql", "string")}
    resourceName="43225dde-2ff6-4dba-bf96-31d8139721a2"
    runWhenModelUpdates={false}
    tableName="tasks"
    transformer="// Query results are available as the `data` variable
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="unassigned_tasks"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <RESTQuery
    id="new_user"
    body={
      '{\n"email": {{textInput1.value}},\n"first_name": {{textInput2.value}},\n"last_name": {{textInput3.value}},\n"active": true,\n"metadata": { }\n}\n'
    }
    bodyType="raw"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    headers={'[{"key":"Content-Type","value":"application/json"}]'}
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    resourceName="d12639a2-c3c9-4cd1-a92e-2bdf933e9632"
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    type="POST"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="add_to_group"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{
        ordered: [
          {
            options: {
              ordered: [
                { onSuccess: null },
                { onFailure: null },
                { additionalScope: null },
              ],
            },
          },
        ],
      }}
      pluginId="list_users"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </RESTQuery>
  <RESTQuery
    id="list_groups"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    resourceName="b8fe22de-2616-40cb-ac1c-93a75a67b5c2"
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <RESTQuery
    id="add_to_group"
    body={
      '{\n"members": [\n{\n"id": {{ new_user.data.data.id }},\n"is_group_admin": false\n}\n]\n}\n'
    }
    bodyType="raw"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    headers={'[{"key":"Content-Type","value":"application/json"}]'}
    isMultiplayerEdited={false}
    query="api/v2//groups/{{select2.value}}/members/"
    resourceName="7b0b9f0e-fbbd-490d-af83-efdacdcb8156"
    runWhenModelUpdates={false}
    transformer="// Query results are available as the `data` variable
return data"
    type="POST"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="selected_user"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("./lib/selected_user.sql", "string")}
    resourceName="43225dde-2ff6-4dba-bf96-31d8139721a2"
    transformer="// Query results are available as the `data` variable
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
</GlobalFunctions>
