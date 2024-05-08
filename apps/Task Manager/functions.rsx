<GlobalFunctions>
  <SqlQueryUnified
    id="unassigned_tasks"
    isMultiplayerEdited={false}
    query={include("./lib/unassigned_tasks.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="43225dde-2ff6-4dba-bf96-31d8139721a2"
    tableName="Tasks"
    warningCodes={[]}
  />
  <RESTQuery
    id="list_users"
    resourceDisplayName="get_users"
    resourceName="32e6a925-0dec-4061-853d-20ab1ed72361"
  />
  <SqlQueryUnified
    id="update_user"
    actionType="UPDATE_BY"
    changeset={'[{"key":"engineer_assigned","value":"{{select1.value}}"}]'}
    changesetObject="{}"
    filterBy={
      '[{"key":"task_name","value":"{{ table1.selectedRow.task_id }}","operation":"="}]'
    }
    isMultiplayerEdited={false}
    query={include("./lib/update_user.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="43225dde-2ff6-4dba-bf96-31d8139721a2"
    runWhenModelUpdates={false}
    tableName="tasks"
    warningCodes={[]}
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
    headers={'[{"key":"Content-Type","value":"application/json"}]'}
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    resourceDisplayName="new_user"
    resourceName="d12639a2-c3c9-4cd1-a92e-2bdf933e9632"
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    type="POST"
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
    resourceDisplayName="list_groups"
    resourceName="b8fe22de-2616-40cb-ac1c-93a75a67b5c2"
  />
  <RESTQuery
    id="add_to_group"
    body={
      '{\n"members": [\n{\n"id": {{ new_user.data.data.id }},\n"is_group_admin": false\n}\n]\n}\n'
    }
    bodyType="raw"
    headers={'[{"key":"Content-Type","value":"application/json"}]'}
    isMultiplayerEdited={false}
    query="api/v2//groups/{{select2.value}}/members/"
    resourceDisplayName="add_to_group"
    resourceName="7b0b9f0e-fbbd-490d-af83-efdacdcb8156"
    runWhenModelUpdates={false}
    type="POST"
  />
  <SqlQueryUnified
    id="selected_user"
    query={include("./lib/selected_user.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="43225dde-2ff6-4dba-bf96-31d8139721a2"
    warningCodes={[]}
  />
</GlobalFunctions>
