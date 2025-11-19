<Screen
  id="page1"
  _customShortcuts={[]}
  _hashParams={[]}
  _order={0}
  _searchParams={[]}
  browserTitle=""
  title="Page 1"
  urlSlug=""
  uuid="41cdcd47-7d27-4124-85b7-a7e37f930d59"
>
  <SqlQueryUnified
    id="getKpiDataQuery"
    notificationDuration={4.5}
    query={include("../lib/getKpiDataQuery.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="43225dde-2ff6-4dba-bf96-31d8139721a2"
    showSuccessToaster={false}
  />
  <SqlQueryUnified
    id="getRevenueOverTimeQuery"
    notificationDuration={4.5}
    query={include("../lib/getRevenueOverTimeQuery.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="43225dde-2ff6-4dba-bf96-31d8139721a2"
    showSuccessToaster={false}
  />
  <SqlQueryUnified
    id="getOrdersOverTimeQuery"
    notificationDuration={4.5}
    query={include("../lib/getOrdersOverTimeQuery.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="43225dde-2ff6-4dba-bf96-31d8139721a2"
    showSuccessToaster={false}
  />
  <SqlQueryUnified
    id="getAllOrdersQuery"
    notificationDuration={4.5}
    query={include("../lib/getAllOrdersQuery.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="43225dde-2ff6-4dba-bf96-31d8139721a2"
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
    <Text
      id="dashboardTitle"
      value="# Order Management Dashboard"
      verticalAlign="center"
    />
    <Include src="./kpiSection.rsx" />
    <Container
      id="visualizationSection"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      showHeader={true}
      style={{ map: { border: "transparent" } }}
    >
      <Header>
        <Text
          id="visualizationSectionTitle"
          value="## Performance Analytics"
          verticalAlign="center"
        />
      </Header>
      <View id="00030" viewKey="View 1">
        <Container
          id="revenueChartContainer"
          footerPadding="4px 12px"
          headerPadding="4px 12px"
          padding="12px"
          showBody={true}
          showHeader={true}
          style={{ map: { border: "transparent" } }}
        >
          <Header>
            <Text
              id="revenueChartTitle"
              value="### Revenue Over Time"
              verticalAlign="center"
            />
          </Header>
          <View id="00030" viewKey="View 1">
            <Chart
              id="revenueChart"
              barMode="group"
              barOrientation=""
              chartType="line"
              clearOnEmptyData={true}
              legendPosition={null}
              selectedPoints="[]"
              stackedBarTotalsDataLabelPosition="none"
              title={null}
              xAxisLineWidth={1}
              xAxisRangeMax=""
              xAxisRangeMin=""
              xAxisShowLine={true}
              xAxisShowTickLabels={true}
              xAxisTickFormatMode="gui"
              xAxisTitle="Order Date"
              xAxisTitleStandoff={20}
              yAxis2LineWidth={1}
              yAxis2RangeMax=""
              yAxis2RangeMin=""
              yAxis2ShowTickLabels={true}
              yAxis2TickFormatMode="gui"
              yAxis2TitleStandoff={20}
              yAxisGrid={true}
              yAxisLineWidth={1}
              yAxisRangeMax=""
              yAxisRangeMin=""
              yAxisShowTickLabels={true}
              yAxisTickFormatMode="gui"
              yAxisTitle="Revenue (USD)"
              yAxisTitleStandoff={20}
            >
              <Series
                id="0"
                aggregationType="none"
                colorArray={{ array: [] }}
                colorArrayDropDown={{ array: [] }}
                colorInputMode="gradientColorArray"
                connectorLineColor="#000000"
                dataLabelPosition="none"
                datasourceMode="manual"
                decreasingBorderColor="#000000"
                decreasingColor="#000000"
                filteredGroupsMode="source"
                gradientColorArray={{ array: [{ array: [] }] }}
                groupBy={{ array: [] }}
                groupByDropdownType="manual"
                groupByStyles={{}}
                hidden={false}
                hiddenMode="source"
                hoverTemplateArray={{ array: [] }}
                hoverTemplateMode="manual"
                increasingBorderColor="#000000"
                increasingColor="#000000"
                lineColor="#2E77D0"
                lineDash="solid"
                lineShape="linear"
                lineUnderFillMode="none"
                lineWidth={2}
                markerBorderColor="#ffffff"
                markerBorderWidth={1}
                markerColor="#2E77D0"
                markerSize={6}
                markerSymbol="circle"
                name="Daily Revenue"
                showMarkers={false}
                textTemplateMode="manual"
                type="line"
                waterfallBase={0}
                waterfallMeasures={{ array: [] }}
                waterfallMeasuresMode="source"
                xData="{{ getRevenueOverTimeQuery.data.order_date }}"
                xDataMode="manual"
                yAxis="y"
                yData="{{ getRevenueOverTimeQuery.data.revenue }}"
                yDataMode="manual"
                zData="[1, 2, 3, 4, 5]"
                zDataMode="manual"
              />
            </Chart>
          </View>
        </Container>
        <Container
          id="ordersChartContainer"
          footerPadding="4px 12px"
          headerPadding="4px 12px"
          padding="12px"
          showBody={true}
          showHeader={true}
          style={{ map: { border: "transparent" } }}
        >
          <Header>
            <Text
              id="ordersChartTitle"
              value="### Order Volume by Date"
              verticalAlign="center"
            />
          </Header>
          <View id="00030" viewKey="View 1">
            <Chart
              id="ordersChart"
              barGap={0.4}
              barMode="group"
              clearOnEmptyData={true}
              legendPosition={null}
              selectedPoints="[]"
              stackedBarTotalsDataLabelPosition="none"
              title="Daily Orders Over Time"
              xAxisRangeMax=""
              xAxisRangeMin=""
              xAxisShowTickLabels={true}
              xAxisTickFormatMode="gui"
              xAxisTitle="Order date"
              xAxisTitleStandoff={20}
              yAxis2LineWidth={1}
              yAxis2RangeMax=""
              yAxis2RangeMin=""
              yAxis2ShowTickLabels={true}
              yAxis2TickFormatMode="gui"
              yAxis2TitleStandoff={20}
              yAxisRangeMax=""
              yAxisRangeMin=""
              yAxisShowTickLabels={true}
              yAxisTickFormatMode="gui"
              yAxisTitle="Orders (count)"
              yAxisTitleStandoff={20}
            >
              <Series
                id="0"
                aggregationType="none"
                colorArray={{ array: [] }}
                colorArrayDropDown={{ array: [] }}
                colorInputMode="gradientColorArray"
                connectorLineColor="#000000"
                dataLabelPosition="none"
                datasourceMode="manual"
                decreasingBorderColor="#000000"
                decreasingColor="#000000"
                filteredGroupsMode="source"
                gradientColorArray={{ array: [{ array: [] }] }}
                groupBy={{ array: [] }}
                groupByDropdownType="manual"
                groupByStyles={{}}
                hidden={false}
                hiddenMode="source"
                hoverTemplateArray={{ array: [] }}
                hoverTemplateMode="manual"
                increasingBorderColor="#000000"
                increasingColor="#000000"
                lineColor="#2563eb"
                lineDash="solid"
                lineShape="linear"
                lineUnderFillMode="none"
                lineWidth={2}
                markerBorderColor="#ffffff"
                markerBorderWidth={1}
                markerColor="#2563eb"
                markerSize={6}
                markerSymbol="circle"
                name="Daily orders"
                showMarkers={false}
                textTemplateMode="manual"
                type="bar"
                waterfallBase={0}
                waterfallMeasures={{ array: [] }}
                waterfallMeasuresMode="source"
                xData="{{ getOrdersOverTimeQuery.data.order_date }}"
                xDataMode="manual"
                yAxis="y"
                yData="{{ getOrdersOverTimeQuery.data.orders.map(n => Number(n)) }}"
                yDataMode="manual"
                zData="[1, 2, 3, 4, 5]"
                zDataMode="manual"
              />
            </Chart>
          </View>
        </Container>
      </View>
    </Container>
    <Container
      id="ordersTableSection"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      showHeader={true}
      style={{ map: { border: "transparent" } }}
    >
      <Header>
        <Text
          id="ordersTableTitle"
          value="## Order Details"
          verticalAlign="center"
        />
        <Button id="refreshButton" text="Refresh Orders">
          <Event
            event="click"
            method="run"
            params={{ map: { src: "getAllOrdersQuery.trigger()" } }}
            pluginId=""
            type="script"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
      </Header>
      <View id="00030" viewKey="View 1">
        <Table
          id="ordersTable"
          cellSelection="none"
          clearChangesetOnSave={true}
          data="{{ formatDataAsArray(getAllOrdersQuery.data) }}"
          defaultSelectedRow={{ mode: "none", indexType: "display", index: 0 }}
          emptyMessage="No rows found"
          enableSaveActions={true}
          primaryKeyColumnId="c2f97"
          rowHeight="medium"
          showBorder={true}
          showFooter={true}
          showHeader={true}
          toolbarPosition="bottom"
        >
          <Column
            id="ab117"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="order_id"
            label="Order #"
            position="center"
            referenceId="order_id"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="bed3b"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="user_name"
            label="Customer"
            position="center"
            referenceId="user_name"
            size={160}
            summaryAggregationMode="none"
          />
          <Column
            id="b4cac"
            alignment="left"
            format="email"
            groupAggregationMode="none"
            key="user_email"
            label="Email"
            position="center"
            referenceId="user_email"
            size={220}
            summaryAggregationMode="none"
          />
          <Column
            id="b6dd2"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="product_id"
            label="Product ID"
            position="center"
            referenceId="product_id"
            size={110}
            summaryAggregationMode="none"
          />
          <Column
            id="861bb"
            alignment="right"
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: true }}
            groupAggregationMode="none"
            key="quantity"
            label="Qty"
            position="center"
            referenceId="quantity"
            size={72}
            summaryAggregationMode="none"
          />
          <Column
            id="2b767"
            alignment="right"
            editableOptions={{ showStepper: true }}
            format="currency"
            formatOptions={{
              showSeparators: true,
              decimalPlaces: 2,
              currency: "USD",
              currencyDisplay: "symbol",
            }}
            groupAggregationMode="none"
            key="total_price"
            label="Total"
            position="center"
            referenceId="total_price"
            size={110}
            summaryAggregationMode="none"
          />
          <Column
            id="a1e21"
            alignment="right"
            editableOptions={{ showStepper: true }}
            format="currency"
            formatOptions={{
              showSeparators: true,
              decimalPlaces: 2,
              currency: "USD",
              currencyDisplay: "symbol",
            }}
            groupAggregationMode="none"
            key="refund_amount"
            label="Refund"
            position="center"
            referenceId="refund_amount"
            size={110}
            summaryAggregationMode="none"
          />
          <Column
            id="c67ef"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            key="refunded"
            label="Refunded"
            position="center"
            referenceId="refunded"
            size={100}
            summaryAggregationMode="none"
            valueOverride="{{ currentSourceRow.refunded ? 'Yes' : 'No' }}"
          />
          <Column
            id="4ad79"
            alignment="left"
            format="date"
            formatOptions={{ dateFormat: "yyyy-MM-dd" }}
            groupAggregationMode="none"
            key="order_date"
            label="Order date"
            position="center"
            referenceId="order_date"
            size={130}
            summaryAggregationMode="none"
          />
          <Column
            id="c2f97"
            alignment="right"
            format="bigint"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            groupAggregationMode="none"
            hidden="true"
            key="id"
            label="Internal ID"
            position="center"
            referenceId="id"
            size={80}
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
              pluginId="ordersTable"
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
              pluginId="ordersTable"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
          </ToolbarButton>
        </Table>
      </View>
    </Container>
  </Frame>
</Screen>
