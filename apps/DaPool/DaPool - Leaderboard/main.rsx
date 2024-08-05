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
    defaultFont={{
      size: "12px",
      name: "All-ProSans,Helvetica,Arial,sans-serif",
    }}
    h1Font={{ size: "36px", fontWeight: "700" }}
    h2Font={{ size: "28px", fontWeight: "700" }}
    h3Font={{ size: "24px", fontWeight: "700" }}
    h4Font={{ size: "18px", fontWeight: "700" }}
    h5Font={{ size: "16px", fontWeight: "700" }}
    h6Font={{ size: "14px", fontWeight: "700" }}
    highlight="#fde68a"
    info="#3170f9"
    labelEmphasizedFont={{ size: "12px", fontWeight: "600" }}
    labelFont={{ size: "12px", fontWeight: "500" }}
    primary="#6eacb7"
    secondary=""
    success="#059669"
    surfacePrimary="#ffffff"
    surfacePrimaryBorder=""
    surfaceSecondary="#ffffff"
    surfaceSecondaryBorder=""
    tertiary=""
    textDark="#0d0d0d"
    textLight="#ffffff"
    warning="#cd6f00"
  />
  <Include src="./header.rsx" />
  <Include src="./sidebar.rsx" />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <Container
      id="container1"
      enableFullBleed={true}
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      heightType="fixed"
      overflowType="hidden"
      padding="12px"
      showBody={true}
      showHeader={true}
      style={{ ordered: [{ headerBackground: "primary" }] }}
    >
      <Header>
        <Text
          id="listViewTitle1"
          horizontalAlign="center"
          value="#### Leaderboard
The current ranking of all players in the league. Leaderboard updates every Wednesday at 8am."
          verticalAlign="center"
        />
      </Header>
      <View id="1e588" viewKey="View 1">
        <ListViewBeta
          id="listView1"
          data="{{ getLeaderboard.data }}"
          itemWidth="200px"
          margin="0"
          numColumns={3}
          padding="12px"
        >
          <Image
            id="circularImage1"
            aspectRatio={1}
            fit="contain"
            heightType="fixed"
            horizontalAlign="center"
            src="{{item.pic}}"
            style={{ ordered: [{ borderRadius: "50%" }] }}
          />
          <Statistic
            id="statistic1"
            align="center"
            currency="USD"
            label=""
            labelCaption="{{ item.points }} Pts."
            positiveTrend="{{ self.value >= 0 }}"
            secondaryCurrency="USD"
            secondaryEnableTrend={true}
            secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
            secondaryShowSeparators={true}
            secondarySignDisplay="trendArrows"
            secondaryValue="{{item.change}}"
            showSeparators={true}
            value="{{ item.rank }}"
          />
          <Text
            id="text2"
            horizontalAlign="center"
            style={{ ordered: [{ fontSize: "h4Font" }] }}
            value="**{{item.name}}**"
            verticalAlign="center"
          />
          <Divider id="divider1" />
        </ListViewBeta>
      </View>
    </Container>
  </Frame>
</App>
