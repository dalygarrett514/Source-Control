<GlobalFunctions>
  <SqlQueryUnified
    id="getLines"
    isMultiplayerEdited={false}
    query={include("./lib/getLines.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="43225dde-2ff6-4dba-bf96-31d8139721a2"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="ranks"
    isMultiplayerEdited={false}
    query={include("./lib/ranks.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="43225dde-2ff6-4dba-bf96-31d8139721a2"
    warningCodes={[]}
  />
  <JavascriptQuery
    id="errorCheck"
    notificationDuration={4.5}
    query={include("./lib/errorCheck.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
  />
  <WorkflowRun
    id="submitPicks"
    resourceName="WorkflowRun"
    workflowId="0222bcf1-c028-4e6f-98bb-2682ca393e4c"
    workflowParams={include("./lib/submitPicks.json", "string")}
  />
  <JavascriptQuery
    id="aggregateData"
    notificationDuration={4.5}
    query={include("./lib/aggregateData.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="submitPicks"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </JavascriptQuery>
  <JavascriptQuery
    id="lockout"
    notificationDuration={4.5}
    query={include("./lib/lockout.js", "string")}
    resourceName="JavascriptQuery"
    runWhenPageLoads={true}
    showSuccessToaster={false}
  />
</GlobalFunctions>
