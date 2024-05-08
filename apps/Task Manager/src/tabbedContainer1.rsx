<Container
  id="tabbedContainer1"
  currentViewKey="{{ self.viewKeys[0] }}"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  hidden={'{{ select3.value !== "user_1f1d319c083a4075ad78f5ba820b5b28"}}'}
  padding="12px"
  showBody={true}
  showHeader={true}
  style={{ ordered: [{ headerBackground: "primary" }] }}
>
  <Header>
    <Text
      id="text2"
      style={{ ordered: [] }}
      value="#### Assign Tasks"
      verticalAlign="center"
    />
  </Header>
  <View id="f7a09" viewKey="Assign Tasks">
    <IconText
      id="iconText1"
      horizontalAlign="center"
      text={
        "Hello {{ current_user.firstName || 'friend' }}! Assign tasks by selecting a row and engineer, then clicking \"Assign\""
      }
    />
    <Table
      id="table1"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ unassigned_tasks.data }}"
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
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="task_id"
        label="Task ID"
        placeholder="Enter value"
        position="center"
        size={70}
        summaryAggregationMode="none"
      />
      <Column
        id="1f50d"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="task_name"
        label="Task name"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="dd7ce"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="engineer_assigned"
        label="Engineer Assigned"
        placeholder="Enter value"
        position="center"
        size={155.203125}
        summaryAggregationMode="none"
      />
      <Column
        id="b7b53"
        alignment="left"
        format="date"
        groupAggregationMode="none"
        key="deadline"
        label="Deadline"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="73c96"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="priority"
        label="Priority"
        optionList={{
          manualData: [
            {
              ordered: [{ value: "NORMAL" }, { color: "{{ theme.primary }}" }],
            },
            { ordered: [{ value: "LOW" }, { color: "{{ theme.success }}" }] },
            { ordered: [{ value: "HIGH" }, { color: "{{ theme.danger }}" }] },
          ],
        }}
        placeholder="Select option"
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
    <Select
      id="select1"
      captionByIndex=""
      colorByIndex=""
      data="{{list_users.data.data}}"
      disabledByIndex="{{item.active == false }}"
      emptyMessage="No options"
      fallbackTextByIndex=""
      hiddenByIndex=""
      iconByIndex={'{{ "/icon:bold/interface-user-single" }}'}
      imageByIndex=""
      label="Assign to:"
      labelPosition="top"
      labels=""
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      tooltipByIndex=""
      values="{{item.first_name}} {{item.last_name}}"
    />
    <Button id="button1" text="Assign">
      <Event
        enabled=""
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="update_user"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </View>
  <View id="3e21d" viewKey="Tasks" />
</Container>
