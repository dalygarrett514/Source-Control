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
    <Text id="text3" value="**Search**" verticalAlign="center" />
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
        size={31.34375}
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
        size={180.0625}
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
