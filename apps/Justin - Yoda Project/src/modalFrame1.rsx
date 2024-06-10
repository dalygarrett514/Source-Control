<ModalFrame
  id="modalFrame1"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden={true}
  hideOnEscape={true}
  isHiddenOnMobile={true}
  overlayInteraction={true}
  padding="8px 12px"
  showFooter={true}
  showHeader={true}
  showOverlay={true}
  size="fullScreen"
>
  <Header>
    <Text
      id="modalTitle1"
      value="### Employee Info Details Page"
      verticalAlign="center"
    />
    <Button
      id="modalCloseButton1"
      ariaLabel="Close"
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      style={{ ordered: [{ border: "transparent" }] }}
      styleVariant="outline"
    >
      <Event
        event="click"
        method="setHidden"
        params={{ ordered: [{ hidden: true }] }}
        pluginId="modalFrame1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Container
      id="container2"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      showHeader={true}
    >
      <Header>
        <Text
          id="containerTitle2"
          value="#### Person Information"
          verticalAlign="center"
        />
      </Header>
      <View id="30df5" viewKey="View 1">
        <Button id="button4" text="Refresh">
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
        <KeyValue
          id="keyValue1"
          data="{
  person_id: {{Person_Data.data.person_id}},
  last_name: {{Person_Data.data.last_name}},
  previous_name: {{Person_Data.data.previous_name}},
  gaba_date: {{Person_Data.data.gaba_date}},
  birth_date: {{Person_Data.data.birth_date}},
  ssn: {{Person_Data.data.ssn}},
  first_name: {{Person_Data.data.first_name}},
  gender: {{Person_Data.data.gender}},
  gaba_ind: {{Person_Data.data.gaba_ind}},
  converted_hire_date: {{Person_Data.data.converted_hire_date}},
  retire_system: {{Person_Data.data.retire_system}},
  attach_ind: {{Person_Data.data.attach_ind}},
  original_hire_date: {{Person_Data.data.original_hire_date}},
  emplrid: {{Person_Data.data.emplrid}},
  data_base_source: {{Person_Data.data.database_source}},
  death_date: {{Person_Data.data.death_date}}
}"
          enableSaveActions={true}
          itemLabelPosition="top"
        >
          <Property
            id="person_id"
            editable="false"
            editableOptions={{}}
            format="tags"
            formatOptions={{ automaticColors: false }}
            hidden="false"
            label="Person ID"
          />
          <Property
            id="ssn"
            editable="false"
            editableOptions={{}}
            format="tags"
            formatOptions={{ automaticColors: false }}
            hidden="false"
            label="SSN"
          />
          <Property
            id="first_name"
            editable="false"
            editableOptions={{}}
            format="tags"
            formatOptions={{ automaticColors: false }}
            hidden="false"
            label="First Name"
          />
          <Property
            id="last_name"
            editable="false"
            editableOptions={{}}
            format="tags"
            formatOptions={{ automaticColors: false }}
            hidden="false"
            label="Last Name"
          />
          <Property
            id="previous_name"
            editable="false"
            editableOptions={{}}
            format="tags"
            formatOptions={{ automaticColors: false }}
            hidden="false"
            label="Previous Name"
          />
          <Property
            id="gender"
            editable="false"
            editableOptions={{}}
            format="tags"
            formatOptions={{ automaticColors: false }}
            hidden="false"
            label="Gender"
          />
          <Property
            id="birth_date"
            editable="false"
            editableOptions={{}}
            format="tags"
            formatOptions={{ automaticColors: false }}
            hidden="false"
            label="Birth Date"
          />
          <Property
            id="death_date"
            editable="false"
            editableOptions={{}}
            format="tags"
            formatOptions={{ automaticColors: false }}
            hidden="false"
            label="Death Date"
          />
          <Property
            id="original_hire_date"
            editable="false"
            editableOptions={{}}
            format="tags"
            formatOptions={{ automaticColors: false }}
            hidden="false"
            label="Original Hire Date"
          />
          <Property
            id="converted_hire_date"
            editable="false"
            editableOptions={{}}
            format="tags"
            formatOptions={{ automaticColors: false }}
            hidden="false"
            label="Converted Hire Date"
          />
          <Property
            id="gaba_date"
            editable="false"
            editableOptions={{}}
            format="tags"
            formatOptions={{ automaticColors: false }}
            hidden="false"
            label="GABA Date"
          />
          <Property
            id="gaba_ind"
            editable="false"
            editableOptions={{}}
            format="tags"
            formatOptions={{ automaticColors: false }}
            hidden="false"
            label="GABA Ind"
          />
          <Property
            id="retire_system"
            editable="false"
            editableOptions={{}}
            format="tags"
            formatOptions={{ automaticColors: false }}
            hidden="false"
            label="Retire System"
          />
          <Property
            id="attach_ind"
            editable="false"
            editableOptions={{}}
            format="tags"
            formatOptions={{ automaticColors: false }}
            hidden="false"
            label="Attach Ind"
          />
          <Property
            id="emplrid"
            editable="false"
            editableOptions={{}}
            format="tags"
            formatOptions={{ automaticColors: false }}
            hidden="false"
            label="Emplrid"
          />
          <Property
            id="data_base_source"
            editable="false"
            editableOptions={{}}
            format="tags"
            formatOptions={{ automaticColors: false }}
            hidden="false"
            label="Data Base Source"
          />
        </KeyValue>
      </View>
    </Container>
    <Container
      id="container3"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      showHeader={true}
    >
      <Header>
        <Text
          id="containerTitle3"
          value="#### Account Information"
          verticalAlign="center"
        />
      </Header>
      <View id="30df5" viewKey="View 1">
        <Container
          id="tabbedContainer1"
          currentViewKey="{{ self.viewKeys[0] }}"
          footerPadding="4px 12px"
          headerPadding="4px 12px"
          padding="12px"
          showBody={true}
          showHeader={true}
        >
          <Header>
            <Tabs
              id="tabs1"
              itemMode="static"
              navigateContainer={true}
              style={{ ordered: [] }}
              targetContainerId="tabbedContainer1"
              value="{{ self.values[0] }}"
            >
              <Option id="fa2d3" value="Tab 1" />
              <Option id="37d2e" value="Tab 2" />
              <Option id="f6694" value="Tab 3" />
            </Tabs>
          </Header>
          <View id="8a05d" viewKey="Employer List" />
          <View id="664b3" viewKey="Total Service" />
          <View id="7fe79" viewKey="Account Balance" />
          <View
            id="d8cd0"
            disabled={false}
            hidden={false}
            iconPosition="left"
            viewKey="Account Balance by Emplrid"
          />
          <View
            id="e5035"
            disabled={false}
            hidden={false}
            iconPosition="left"
            viewKey="Compensation"
          >
            <Table
              id="table2"
              cellSelection="none"
              clearChangesetOnSave={true}
              data=""
              defaultSelectedRow={{
                mode: "index",
                indexType: "display",
                index: 0,
              }}
              emptyMessage="No rows found"
              enableSaveActions={true}
              primaryKeyColumnId="6f3a7"
              showBorder={true}
              showFooter={true}
              showHeader={true}
              toolbarPosition="bottom"
            >
              <Column
                id="1f03e"
                alignment="left"
                format="string"
                groupAggregationMode="none"
                label="FY"
                placeholder="Enter value"
                position="center"
                referenceId="fy"
                size={124.34375}
                summaryAggregationMode="none"
              />
              <Column
                id="cad0d"
                alignment="left"
                format="string"
                groupAggregationMode="none"
                label="JAN"
                placeholder="Enter value"
                position="center"
                referenceId="jan"
                size={40.4375}
                summaryAggregationMode="none"
              />
              <Column
                id="2ea54"
                alignment="left"
                format="string"
                groupAggregationMode="none"
                label="FEB"
                placeholder="Enter value"
                position="center"
                referenceId="feb"
                size={38.59375}
                summaryAggregationMode="none"
              />
              <Column
                id="37ed1"
                alignment="left"
                format="string"
                groupAggregationMode="none"
                label="MAR"
                placeholder="Enter value"
                position="center"
                referenceId="mar"
                size={43.46875}
                summaryAggregationMode="none"
              />
              <Column
                id="6c46d"
                alignment="left"
                format="string"
                groupAggregationMode="none"
                label="APR"
                placeholder="Enter value"
                position="center"
                referenceId="apr"
                size={40.65625}
                summaryAggregationMode="none"
              />
              <Column
                id="e8602"
                alignment="left"
                format="string"
                groupAggregationMode="none"
                label="MAY"
                placeholder="Enter value"
                position="center"
                referenceId="may"
                size={42.640625}
                summaryAggregationMode="none"
              />
              <Column
                id="3a342"
                alignment="left"
                format="string"
                groupAggregationMode="none"
                label="JUN"
                placeholder="Enter value"
                position="center"
                referenceId="jun"
                size={41.09375}
                summaryAggregationMode="none"
              />
              <Column
                id="8608f"
                alignment="left"
                format="string"
                groupAggregationMode="none"
                label="JUL"
                placeholder="Enter value"
                position="center"
                referenceId="jul"
                size={39.015625}
                summaryAggregationMode="none"
              />
              <Column
                id="4f30c"
                alignment="left"
                format="string"
                groupAggregationMode="none"
                label="AUG"
                placeholder="Enter value"
                position="center"
                referenceId="aug"
                size={42.453125}
                summaryAggregationMode="none"
              />
              <Column
                id="8a40e"
                alignment="left"
                format="string"
                groupAggregationMode="none"
                label="SEP"
                placeholder="Enter value"
                position="center"
                referenceId="sep"
                size={39.234375}
                summaryAggregationMode="none"
              />
              <Column
                id="2f216"
                alignment="left"
                format="string"
                groupAggregationMode="none"
                label="OCT"
                placeholder="Enter value"
                position="center"
                referenceId="oct"
                size={41.765625}
                summaryAggregationMode="none"
              />
              <Column
                id="dd601"
                alignment="left"
                format="string"
                groupAggregationMode="none"
                label="NOV"
                placeholder="Enter value"
                position="center"
                referenceId="nov"
                size={42.671875}
                summaryAggregationMode="none"
              />
              <Column
                id="bf4e9"
                alignment="left"
                format="string"
                groupAggregationMode="none"
                label="DEC"
                placeholder="Enter value"
                position="center"
                referenceId="dec"
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
          <View
            id="dcd3a"
            disabled={false}
            hidden={false}
            iconPosition="left"
            viewKey="Payroll History"
          />
          <View
            id="e76ff"
            disabled={false}
            hidden={false}
            iconPosition="left"
            viewKey="Refunds"
          />
          <View
            id="ae940"
            disabled={false}
            hidden={false}
            iconPosition="left"
            viewKey="Service Purchase"
          />
          <View
            id="3fcfc"
            disabled={false}
            hidden={false}
            iconPosition="left"
            viewKey="Status History"
          />
          <View
            id="fe918"
            disabled={false}
            hidden={false}
            iconPosition="left"
            viewKey="Adjustments"
          />
          <View
            id="f2f1d"
            disabled={false}
            hidden={false}
            iconPosition="left"
            viewKey="TRD Transfer Inquiry"
          />
          <View
            id="4dbe3"
            disabled={false}
            hidden={false}
            iconPosition="left"
            viewKey="Bene Calc"
          />
        </Container>
      </View>
    </Container>
  </Body>
</ModalFrame>
