<Screen
  id="page1"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  browserTitle=""
  title="Page 1"
  urlSlug=""
  uuid="d38ed97f-1660-4bfb-b0ff-529aa21dcbca"
>
  <SqlQueryUnified
    id="getData"
    query={include("../lib/getData.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="43225dde-2ff6-4dba-bf96-31d8139721a2"
    warningCodes={[]}
  />
  <RetoolAIQuery
    id="summarize"
    customSystemMessage="Highlight any insights from this order record, keep it concise to 200 words."
    defaultModelInitialized={true}
    instruction="{{ keyValue1.data }}"
    notificationDuration={4.5}
    resourceDisplayName="retool_ai"
    resourceName="retool_ai"
    showSuccessToaster={false}
  />
  <JavascriptQuery
    id="query1"
    notificationDuration={4.5}
    query={include("../lib/query1.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
  />
  <WorkflowRun
    id="query2"
    notificationDuration={4.5}
    resourceName="WorkflowRun"
    showSuccessToaster={false}
  />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    type="main"
  >
    <Include src="./container1.rsx" />
  </Frame>
</Screen>
