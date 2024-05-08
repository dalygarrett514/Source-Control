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
    canvas="#dbdbdb"
    danger="#dc2626"
    defaultFont={{ size: "12px", name: "" }}
    h1Font={{ size: "36px" }}
    h2Font={{ size: "28px" }}
    h3Font={{ size: "24px" }}
    h4Font={{ size: "18px" }}
    h5Font={{ size: "16px" }}
    h6Font={{ size: "14px" }}
    highlight="#fde68a"
    info="#3170f9"
    primary="#446fcd"
    secondary="#8ce163"
    success="#059669"
    surfacePrimary="#ffffff"
    surfacePrimaryBorder=""
    surfaceSecondary="#fbfbfb"
    surfaceSecondaryBorder=""
    tertiary=""
    textDark="#0d0d0d"
    textLight="#ffffff"
    warning="#cd6f00"
  />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <Select
      id="select3"
      captionByIndex=""
      colorByIndex=""
      data="{{list_users.data.data}}"
      disabledByIndex="{{item.active == false }}"
      emptyMessage="No options"
      fallbackTextByIndex=""
      hiddenByIndex=""
      iconByIndex={'{{ "/icon:bold/interface-user-single" }}'}
      imageByIndex=""
      label="User Viewing:"
      labelPosition="top"
      labels="{{item.first_name}} {{item.last_name}}"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      tooltipByIndex=""
      values="{{item.id}}"
    />
    <Include src="./src/tabbedContainer1.rsx" />
    <Form
      id="form1"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      hidden={'{{ select3.value !== "user_1f1d319c083a4075ad78f5ba820b5b28"}}'}
      padding="12px"
      requireValidation={true}
      resetAfterSubmit={true}
      showBody={true}
      showFooter={true}
      showHeader={true}
      style={{ ordered: [{ headerBackground: "primary" }] }}
    >
      <Header>
        <Text
          id="formTitle1"
          value="#### Create a User"
          verticalAlign="center"
        />
      </Header>
      <Body>
        <Text
          id="text1"
          value="This form will create a new user, and subsequently add them to a user group based on the following inputs:"
          verticalAlign="center"
        />
        <TextInput
          id="textInput1"
          label="Email"
          labelPosition="top"
          placeholder="Enter value"
        />
        <TextInput
          id="textInput2"
          label="First Name"
          labelPosition="top"
          placeholder="Enter value"
        />
        <TextInput
          id="textInput3"
          label="Last Name"
          labelPosition="top"
          placeholder="Enter value"
        />
        <Select
          id="select2"
          data="{{ list_groups.data.data }}"
          emptyMessage="No options"
          hiddenByIndex=""
          label="User Group"
          labelPosition="top"
          labels="{{ item.name }}"
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
          values="{{ item.id }}"
        >
          <Option id="0e57b" value="Option 1" />
          <Option id="1b85e" value="Option 2" />
          <Option id="96c41" value="Option 3" />
        </Select>
      </Body>
      <Footer>
        <Button
          id="formButton1"
          submit={true}
          submitTargetId="form1"
          text="Submit"
        />
      </Footer>
      <Event
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="new_user"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
    <Container
      id="tabbedContainer2"
      currentViewKey="{{ self.viewKeys[0] }}"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      hidden=""
      padding="12px"
      showBody={true}
      showHeader={true}
      style={{ ordered: [{ headerBackground: "primary" }] }}
    >
      <Header>
        <Text id="text3" value="#### Manage Tasks" verticalAlign="center" />
      </Header>
      <View id="f7a09" viewKey="Assign Tasks">
        <IconText
          id="iconText2"
          horizontalAlign="center"
          text="Hello {{ select3.selectedItem.first_name || 'friend' }}! Manage tasks by editing content below"
        />
        <Table
          id="table2"
          cellSelection="none"
          clearChangesetOnSave={true}
          data="{{ selected_user.data }}"
          defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
          emptyMessage="No rows found"
          enableSaveActions={true}
          showBorder={true}
          showFooter={true}
          showHeader={true}
          toolbarPosition="bottom"
        >
          <Column
            id="69f0e"
            alignment="right"
            editable="true"
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            groupAggregationMode="sum"
            key="task_id"
            label="Task ID"
            placeholder="Enter value"
            position="center"
            size={58.890625}
            summaryAggregationMode="none"
          />
          <Column
            id="1f50d"
            alignment="left"
            editable="true"
            editableOptions={{ object: {} }}
            format="string"
            groupAggregationMode="none"
            key="task_name"
            label="Task name"
            placeholder="Enter value"
            position="center"
            size={81.25}
            summaryAggregationMode="none"
          />
          <Column
            id="dd7ce"
            alignment="left"
            editable="true"
            editableOptions={{ object: {} }}
            format="string"
            groupAggregationMode="none"
            key="engineer_assigned"
            label="Engineer Assigned"
            placeholder="Enter value"
            position="center"
            size={125.859375}
            summaryAggregationMode="none"
          />
          <Column
            id="b7b53"
            alignment="left"
            editable="true"
            editableOptions={{ object: {} }}
            format="date"
            groupAggregationMode="none"
            key="deadline"
            label="Deadline"
            placeholder="Enter value"
            position="center"
            size={87.5}
            summaryAggregationMode="none"
          />
          <Column
            id="73c96"
            alignment="left"
            editable="true"
            editableOptions={{ object: {} }}
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            key="priority"
            label="Priority"
            optionList={{
              manualData: [
                {
                  ordered: [
                    { value: "NORMAL" },
                    { color: "{{ theme.primary }}" },
                  ],
                },
                {
                  ordered: [{ value: "LOW" }, { color: "{{ theme.success }}" }],
                },
                {
                  ordered: [{ value: "HIGH" }, { color: "{{ theme.danger }}" }],
                },
              ],
            }}
            placeholder="Select option"
            position="center"
            size={62.5625}
            summaryAggregationMode="none"
          />
          <Column
            id="7d616"
            alignment="left"
            editable="true"
            editableOptions={{ object: {} }}
            format="string"
            groupAggregationMode="none"
            key="notes"
            label="Notes"
            placeholder="Enter value"
            position="center"
            size={263}
            summaryAggregationMode="none"
          />
          <Column
            id="16415"
            alignment="left"
            editable="true"
            editableOptions={{ object: {} }}
            format="boolean"
            groupAggregationMode="none"
            key="progress"
            label="In Progress"
            placeholder="Enter value"
            position="center"
            size={100}
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
              pluginId="table2"
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
              pluginId="table2"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
          </ToolbarButton>
        </Table>
      </View>
      <View id="3e21d" viewKey="Tasks" />
    </Container>
  </Frame>
</App>
