<Screen
  id="page1"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  browserTitle=""
  title="Page 1"
  urlSlug=""
  uuid="5da32015-f2c9-4a51-878f-1dbc46ee0cea"
>
  <SqlQueryUnified
    id="merchants"
    query={include("../lib/merchants.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="43225dde-2ff6-4dba-bf96-31d8139721a2"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="statements"
    notificationDuration={4.5}
    query={include("../lib/statements.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="43225dde-2ff6-4dba-bf96-31d8139721a2"
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    updateSetValueDynamically={true}
    warningCodes={[]}
  />
  <JavascriptQuery
    id="download"
    notificationDuration={4.5}
    query={include("../lib/download.js", "string")}
    resourceName="JavascriptQuery"
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
    <Container
      id="container1"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
    >
      <Header>
        <Text
          id="containerTitle1"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="00030" viewKey="View 1">
        <Text
          id="text1"
          value="### Random Merchant Sampling by CRM & Processor

This query selects a random sample of merchants from the `demo_merchants_250` table based on predefined counts for each `CRM|Processor` combination.

Each block in the query:
- Filters the merchants by a specific `CRM` and `Processor`
- Randomly orders the results
- Limits the selection to a specified count
- Combines all the groups to return a single unified result

#### Breakdown of Samples:
| CRM   | Processor   | Sample Size |
|--------|-------------|--------------|
| MXA    | TSYS        | 25           |
| MXA    | FD          | 25           |
| Vimas  | TSYS        | 30           |
| MXC    | TSYS        | 25           |
| MXC    | FD-North    | 10           |
| MXC    | FD-Omaha    | 25           |
"
          verticalAlign="center"
        />
        <TextInput
          id="textInput1"
          label="Search"
          labelPosition="top"
          placeholder="Enter value"
        />
        <Table
          id="table1"
          autoColumnWidth={true}
          cellSelection="none"
          clearChangesetOnSave={true}
          data="{{ merchants.data }}"
          defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
          emptyMessage="No rows found"
          enableSaveActions={true}
          primaryKeyColumnId="ac054"
          searchTerm="{{ textInput1.value }}"
          showBorder={true}
          showFooter={true}
          showHeader={true}
          toolbarPosition="bottom"
        >
          <Column
            id="ac054"
            alignment="right"
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            groupAggregationMode="sum"
            key="id"
            label="ID"
            placeholder="Enter value"
            position="center"
            size={31.203125}
            summaryAggregationMode="none"
          />
          <Column
            id="64632"
            alignment="right"
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: false, notation: "standard" }}
            groupAggregationMode="sum"
            key="merchant_number"
            label="Merchant number"
            placeholder="Enter value"
            position="center"
            size={127.59375}
            summaryAggregationMode="none"
          />
          <Column
            id="35175"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            key="crm"
            label="Crm"
            placeholder="Select option"
            position="center"
            size={58.484375}
            summaryAggregationMode="none"
            valueOverride="{{ _.startCase(item) }}"
          />
          <Column
            id="c28e3"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            key="processor"
            label="Processor"
            placeholder="Select option"
            position="center"
            size={72.890625}
            summaryAggregationMode="none"
            valueOverride="{{ _.startCase(item) }}"
          />
          <Column
            id="09d80"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="merchant_name"
            label="Merchant name"
            placeholder="Enter value"
            position="center"
            size={179.453125}
            summaryAggregationMode="none"
          />
          <ToolbarButton
            id="1a"
            icon="bold/interface-text-formatting-filter-2"
            label="Filter"
            type="filter"
          />
          <ToolbarButton
            id="3c"
            icon="bold/interface-download-button-2"
            label="Download"
            type="custom"
          >
            <Event
              event="clickToolbar"
              method="exportData"
              pluginId="table1"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
          </ToolbarButton>
          <ToolbarButton
            id="4d"
            icon="bold/interface-arrows-round-left"
            label="Refresh"
            type="custom"
          >
            <Event
              event="clickToolbar"
              method="refresh"
              pluginId="table1"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
          </ToolbarButton>
        </Table>
      </View>
    </Container>
    <Container
      id="container2"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      hidden="{{ table1.selectedRow == null }}"
      padding="12px"
      showBody={true}
    >
      <Header>
        <Text
          id="containerTitle2"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="00030" viewKey="View 1">
        <Text
          id="text2"
          value="### Retrieve Statement for Selected Merchant

This query retrieves the monthly statement record for a single merchant selected in the UI.

It filters the `demo_statements_250` table using the `merchant_number` of the row currently selected in `table1`."
          verticalAlign="center"
        />
        <KeyValue
          id="keyValue1"
          data="{{ statements.data }}"
          editIcon="bold/interface-edit-pencil"
          enableSaveActions={true}
          itemLabelPosition="top"
          labelWrap={true}
        >
          <Property
            id="id"
            editable="false"
            editableOptions={{}}
            format="decimal"
            formatOptions={{ showSeparators: false, notation: "standard" }}
            hidden="false"
            label="ID"
          />
          <Property
            id="statement_id"
            editable="false"
            editableOptions={{}}
            format="string"
            formatOptions={{}}
            hidden="false"
            label="Statement ID"
            valueOverride="{{ item[0] }}"
          />
          <Property
            id="statement_month"
            editable="false"
            editableOptions={{}}
            format="decimal"
            formatOptions={{ showSeparators: false, notation: "standard" }}
            hidden="false"
            label="Statement month"
          />
          <Property
            id="crm"
            editable="false"
            editableOptions={{}}
            format="tags"
            formatOptions={{ automaticColors: true }}
            hidden="false"
            label="Crm"
          />
          <Property
            id="processor"
            editable="false"
            editableOptions={{}}
            format="tags"
            formatOptions={{ automaticColors: true }}
            hidden="false"
            label="Processor"
          />
          <Property
            id="merchant_number"
            editable="false"
            editableOptions={{}}
            format="decimal"
            formatOptions={{ showSeparators: false, notation: "standard" }}
            hidden="false"
            label="Merchant number"
          />
          <Property
            id="transactions"
            editable="false"
            editableOptions={{}}
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            hidden="false"
            label="Transactions"
          />
          <Property
            id="volume"
            editable="false"
            editableOptions={{}}
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            hidden="false"
            label="Volume"
          />
          <Property
            id="merchant_fee_income"
            editable="false"
            editableOptions={{}}
            format="currency"
            formatOptions={{
              currency: "USD",
              currencySign: "standard",
              notation: "standard",
              showSeparators: true,
              currencyDisplay: "symbol",
            }}
            hidden="false"
            label="Merchant fee income"
          />
          <Property
            id="file_name"
            editable="false"
            editableOptions={{}}
            format="tags"
            formatOptions={{ automaticColors: true }}
            hidden="true"
            label="File name"
          />
        </KeyValue>
        <Button
          id="button1"
          hidden="{{ keyValue1.data == null }}"
          text="Download Statement"
        >
          <Event
            event="click"
            method="trigger"
            params={{}}
            pluginId="download"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
      </View>
    </Container>
  </Frame>
</Screen>
