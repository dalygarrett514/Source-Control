<GlobalFunctions>
  <SqlQueryUnified
    id="Search"
    query={include("./lib/Search.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="43225dde-2ff6-4dba-bf96-31d8139721a2"
    runWhenModelUpdates={false}
    warningCodes={["SQL_TEMPLATED_COLUMN_NAME_ERR"]}
  />
  <SqlQueryUnified
    id="Person_Data"
    query={include("./lib/Person_Data.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="43225dde-2ff6-4dba-bf96-31d8139721a2"
    warningCodes={[]}
  />
</GlobalFunctions>
