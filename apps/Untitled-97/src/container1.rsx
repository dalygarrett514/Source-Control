<Container
  id="container1"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  showHeader={true}
>
  <Header>
    <Text id="containerTitle1" value="#### QA Data" verticalAlign="center" />
  </Header>
  <View id="00030" viewKey="View 1">
    <Statistic
      id="statistic1"
      currency="USD"
      formattingStyle="currency"
      label="Gross volume"
      labelCaption="Since last month"
      positiveTrend="{{ self.value >= 0 }}"
      secondaryCurrency="USD"
      secondaryEnableTrend={true}
      secondaryFormattingStyle="percent"
      secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
      secondaryShowSeparators={true}
      secondarySignDisplay="trendArrows"
      secondaryValue=""
      showSeparators={true}
      value="{{ query1.data }}"
    />
    <Container
      id="stack1"
      _flexWrap={true}
      _gap="0px"
      _type="stack"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
    >
      <View id="00030" viewKey="View 1">
        <Text
          id="text2"
          heightType="fixed"
          value="👋 **Hello {{ current_user.firstName || 'friend' }}!**"
          verticalAlign="center"
        />
        <Button id="button2" disabled="{{ current_user }}" text="Button" />
        <Text
          id="text3"
          heightType="fixed"
          value="👋 **Hello {{ current_user.firstName || 'friend' }}!**"
          verticalAlign="center"
        />
      </View>
    </Container>
    <Table
      id="table1"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ getData.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      dynamicColumnProperties={{ formatByIndex: "auto" }}
      dynamicColumnsEnabled={true}
      emptyMessage="No rows found"
      enableSaveActions={true}
      primaryKeyColumnId="ec57e"
      rowHeight="small"
      showBorder={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="ec57e"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="id"
        label="ID"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="7e6ea"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="order_id"
        label="Order ID"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="21147"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="product_id"
        label="Product ID"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="5cf4e"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="quantity"
        label="Quantity"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="170cb"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="total_price"
        label="Total price"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="dc63a"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="user_id"
        label="User ID"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="ed5c7"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="user_name"
        label="User name"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="cb61c"
        alignment="left"
        format="link"
        formatOptions={{ showUnderline: "hover" }}
        groupAggregationMode="none"
        key="user_email"
        label="User email"
        position="center"
        size={100}
        summaryAggregationMode="none"
      >
        <Event
          event="clickCell"
          method="openUrl"
          params={{ map: { url: "mailto:{{ item }}" } }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Column>
      <Column
        id="ff409"
        alignment="left"
        format="date"
        groupAggregationMode="none"
        hidden="true"
        key="order_date"
        label="Order date"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="84d4a"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="refunded"
        label="Refunded"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="35d4d"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="refund_amount"
        label="Refund amount"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
    </Table>
    <KeyValue
      id="keyValue1"
      data="{{ table1.selectedRow }}"
      editIcon="bold/interface-edit-pencil"
      enableSaveActions={true}
      groupLayout="singleColumn"
      itemLabelPosition="top"
      labelWrap={true}
    />
    <Button id="button1" text="Summarize">
      <Event
        event="click"
        method="trigger"
        params={{}}
        pluginId="summarize"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Text id="text1" value="{{ summarize.data }}" verticalAlign="center" />
  </View>
</Container>
