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
    <Include src="./container1.rsx" />
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
