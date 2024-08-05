<GlobalFunctions>
  <WorkflowRun
    id="profileCreateUpdate"
    resourceName="WorkflowRun"
    workflowId="ed502591-c5a6-495d-9c8a-231e59e4fd6b"
    workflowParams={include("./lib/profileCreateUpdate.json", "string")}
  />
  <SqlQueryUnified
    id="userInfo"
    query={include("./lib/userInfo.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="43225dde-2ff6-4dba-bf96-31d8139721a2"
    warningCodes={[]}
  />
</GlobalFunctions>
