<Container
  id="kpiSection"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  showHeader={true}
  style={{ map: { border: "transparent" } }}
>
  <Header>
    <Text
      id="kpiSectionTitle"
      value="## Key Performance Indicators"
      verticalAlign="center"
    />
  </Header>
  <View id="00030" viewKey="View 1">
    <Statistic
      id="totalRevenueStatistic"
      currency="USD"
      decimalPlaces={0}
      formattingStyle="currency"
      label="Total Revenue"
      labelCaption="Sum of revenue across selected period"
      positiveTrend="{{ self.value >= 0 }}"
      secondaryCurrency="USD"
      secondaryDecimalPlaces={1}
      secondaryEnableTrend={true}
      secondaryFormattingStyle="percent"
      secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
      secondaryShowSeparators={true}
      secondarySignDisplay="trendArrows"
      secondaryValue=""
      showSeparators={true}
      value="{{ _.sum(getKpiDataQuery.data.total_revenue) }}"
    />
    <Statistic
      id="totalOrdersStatistic"
      currency="USD"
      decimalPlaces={0}
      label="Total Orders"
      labelCaption="Total orders across selected period"
      positiveTrend="{{ self.value >= 0 }}"
      secondaryCurrency="USD"
      secondaryFormattingStyle="percent"
      secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
      secondaryShowSeparators={true}
      secondaryValue=""
      showSeparators={true}
      suffix=" orders"
      value="{{ _.sum(getKpiDataQuery.data.order_count) }}"
    />
    <Statistic
      id="avgOrderValueStatistic"
      currency="USD"
      decimalPlaces={2}
      formattingStyle="currency"
      label="Avg Order Value"
      labelCaption="Average across selected period"
      padDecimal={true}
      positiveTrend="{{ self.value >= 0 }}"
      secondaryCurrency="USD"
      secondaryDecimalPlaces={1}
      secondaryFormattingStyle="percent"
      secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
      secondaryShowSeparators={true}
      secondarySignDisplay="trendArrows"
      secondaryValue=""
      showSeparators={true}
      value="{{ _.mean(getKpiDataQuery.data.avg_order_value) }}"
    />
    <Statistic
      id="refundRateStatistic"
      currency="USD"
      decimalPlaces={2}
      formattingStyle="percent"
      label="Refund Rate"
      labelCaption="Average across selected period"
      positiveTrend="{{ self.value >= 0 }}"
      secondaryCurrency="USD"
      secondaryDecimalPlaces={1}
      secondaryEnableTrend={true}
      secondaryFormattingStyle="percent"
      secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
      secondaryShowSeparators={true}
      secondarySignDisplay="trendArrows"
      secondaryValue="{{ (Array.isArray(getKpiDataQuery.data?.refund_rate) && getKpiDataQuery.data.refund_rate.length > 1) ? ((getKpiDataQuery.data.refund_rate[getKpiDataQuery.data.refund_rate.length - 1] || 0) - (getKpiDataQuery.data.refund_rate[0] || 0)) : null }}"
      showSeparators={true}
      value="{{ _.mean(getKpiDataQuery.data.refund_rate) || 0 }}"
    />
  </View>
</Container>
