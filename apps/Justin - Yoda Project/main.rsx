<App>
  <Include src="./functions.rsx" />
  <CustomAppTheme
    id="$appTheme"
    _migrated={true}
    automatic={[
      "#fde68a",
      "#eecff3",
      "#a7f3d0",
      "#bfdbfe",
      "#c7d2fe",
      "#fecaca",
      "#fcd6bb",
    ]}
    borderRadius="4px"
    canvas="#f6f6f6"
    danger="#dc2626"
    defaultFont={{ size: "12px" }}
    h1Font={{ size: "36px" }}
    h2Font={{ size: "28px" }}
    h3Font={{ size: "24px" }}
    h4Font={{ size: "18px" }}
    h5Font={{ size: "16px" }}
    h6Font={{ size: "14px" }}
    highlight="#fde68a"
    info="#3170f9"
    primary="#008b53"
    secondary=""
    success="#059669"
    surfacePrimary="#ffffff"
    surfacePrimaryBorder=""
    surfaceSecondary="#fafafa"
    surfaceSecondaryBorder=""
    tertiary=""
    textDark="#0d0d0d"
    textLight="#ffffff"
    warning="#cd6f00"
  />
  <Include src="./header.rsx" />
  <Include src="./src/modalFrame1.rsx" />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <Form
      id="form1"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      requireValidation={true}
      resetAfterSubmit={true}
      showBody={true}
      showFooter={true}
      showHeader={true}
      style={{ ordered: [{ headerBackground: "primary" }] }}
    >
      <Header>
        <Text id="formTitle1" value="#### Criteria" verticalAlign="center" />
      </Header>
      <Body>
        <TextInput
          id="textInput1"
          label="Person ID"
          labelPosition="top"
          placeholder="12345"
        />
        <TextInput
          id="textInput5"
          label="SSN"
          labelPosition="top"
          placeholder="123-45-6789"
        />
        <TextInput
          id="textInput2"
          label="First Name"
          labelPosition="top"
          placeholder="Garrett"
        />
        <TextInput
          id="textInput4"
          label="Retire System"
          labelPosition="top"
          placeholder="Enter value"
        />
        <TextInput
          id="textInput3"
          label="Last Name"
          labelPosition="top"
          placeholder="Daly"
        />
      </Body>
      <Footer>
        <Button id="button1" text="Search">
          <Event
            event="click"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="Search"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
        <Button id="button2" text="Reset">
          <Event
            event="click"
            method="clearValue"
            params={{ ordered: [] }}
            pluginId="textInput1"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            event="click"
            method="clearValue"
            params={{ ordered: [] }}
            pluginId="textInput2"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            event="click"
            method="clearValue"
            params={{ ordered: [] }}
            pluginId="textInput3"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            event="click"
            method="clearValue"
            params={{ ordered: [] }}
            pluginId="textInput4"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            event="click"
            method="clearValue"
            params={{ ordered: [] }}
            pluginId="textInput5"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
        <Button
          id="formButton1"
          submit={true}
          submitTargetId="form1"
          text="Store Search"
        />
        <Button id="button5" text="Button" />
      </Footer>
    </Form>
    <Container
      id="container1"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      showHeader={true}
      style={{ ordered: [{ headerBackground: "primary" }] }}
    >
      <Header>
        <Text
          id="containerTitle1"
          value="#### Search Results"
          verticalAlign="center"
        />
      </Header>
      <View id="30df5" viewKey="View 1">
        <Button id="button3" text="Open">
          <Event
            event="click"
            method="show"
            params={{ ordered: [] }}
            pluginId="modalFrame1"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            event="click"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="Person_Data"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
        <Table
          id="table1"
          cellSelection="none"
          clearChangesetOnSave={true}
          data="{{ Search.data }}"
          defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
          emptyMessage="No rows found"
          enableSaveActions={true}
          showBorder={true}
          showFooter={true}
          showHeader={true}
          toolbarPosition="bottom"
        >
          <Column
            id="8ecb0"
            alignment="right"
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            groupAggregationMode="sum"
            key="person_id"
            label="Person ID"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="82222"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            key="retire_system"
            label="Retire system"
            placeholder="Select option"
            position="center"
            size={100}
            summaryAggregationMode="none"
            valueOverride="{{ _.startCase(item) }}"
          />
          <Column
            id="7f4d1"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="ssn"
            label="Ssn"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="3c2d6"
            alignment="left"
            editableOptions={{ showStepper: true }}
            format="string"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            groupAggregationMode="sum"
            key="emplrid"
            label="Emplrid"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="b9000"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="first_name"
            label="First name"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="b43c3"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="last_name"
            label="Last name"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="8d159"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            key="database_source"
            label="Database source"
            placeholder="Select option"
            position="center"
            size={100}
            summaryAggregationMode="none"
            valueOverride="{{ _.startCase(item) }}"
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
  </Frame>
</App>
