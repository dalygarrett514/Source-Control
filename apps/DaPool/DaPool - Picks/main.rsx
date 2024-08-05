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
  <Include src="./src/modalFrame1.rsx" />
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
          value="#### Make Your Picks Below
For each game, select one team to win against the spread and assign a ranking.
Picks open every Wednesday at 1pm and close Sunday at 1pm."
          verticalAlign="center"
        />
      </Header>
      <View id="fb613" viewKey="View 1">
        <ListViewBeta
          id="listView1"
          data="{{ getLines.data }}"
          enableInstanceValues={true}
          itemWidth="200px"
          margin="0"
          numColumns={3}
          padding="12px"
        >
          <Text
            id="text2"
            horizontalAlign="center"
            value="{{ item.team1 }}"
            verticalAlign="center"
          />
          <Text
            id="text3"
            horizontalAlign="center"
            value="{{ item.team2 }}"
            verticalAlign="center"
          />
          <Select
            id="select1"
            captionByIndex=""
            colorByIndex=""
            data="[{{ item.team1 }}, {{ item.team2 }}]"
            disabled="{{ lockout.data }}"
            disabledByIndex=""
            emptyMessage="No options"
            fallbackTextByIndex=""
            hiddenByIndex=""
            iconByIndex=""
            imageByIndex=""
            label="Pick"
            labelPosition="top"
            labels=""
            overlayMaxHeight={375}
            placeholder="Select"
            showSelectionIndicator={true}
            style={{ ordered: [] }}
            tooltipByIndex=""
            value="{{ item.pick }}"
            values=""
          >
            <Option id="734fc" disabled={false} hidden={false} />
          </Select>
          <Image
            id="image2"
            fit="contain"
            heightType="fixed"
            horizontalAlign="center"
            src={
              '{{ item.team1 === "Baltimore Ravens" ? "https://content.sportslogos.net/logos/7/153/thumbs/318.gif" :\n    item.team1 === "Cincinnati Bengals" ? "https://content.sportslogos.net/logos/7/154/thumbs/15420492021.gif" :\n    item.team1 === "Buffalo Bills" ? "https://content.sportslogos.net/logos/7/149/thumbs/n0fd1z6xmhigb0eej3323ebwq.gif" :\n    item.team1 === "Atlanta Falcons" ? "https://content.sportslogos.net/logos/7/173/thumbs/299.gif" :\n    item.team1 === "Arizona Cardinals" ? "https://content.sportslogos.net/logos/7/177/thumbs/kwth8f1cfa2sch5xhjjfaof90.gif" :\n    item.team1 === "Carolina Panthers" ? "https://content.sportslogos.net/logos/7/174/thumbs/f1wggq2k8ql88fe33jzhw641u.gif" :\n    item.team1 === "Chicago Bears" ? "https://content.sportslogos.net/logos/7/169/thumbs/16975942023.gif" :\n    item.team1 === "Cleveland Browns" ? "https://content.sportslogos.net/logos/7/155/thumbs/15566962024.gif" :\n    item.team1 === "Dallas Cowboys" ? "https://content.sportslogos.net/logos/7/165/thumbs/406.gif" :\n    item.team1 === "Denver Broncos" ? "https://content.sportslogos.net/logos/7/161/thumbs/9ebzja2zfeigaziee8y605aqp.gif" :\n    item.team1 === "Detroit Lions" ? "https://content.sportslogos.net/logos/7/170/thumbs/17013982017.gif" :\n    item.team1 === "Green Bay Packers" ? "https://content.sportslogos.net/logos/7/171/thumbs/dcy03myfhffbki5d7il3.gif" :\n    item.team1 === "Houston Texans" ? "https://content.sportslogos.net/logos/7/157/thumbs/15758902024.gif" :\n    item.team1 === "Indianapolis Colts" ? "https://content.sportslogos.net/logos/7/158/thumbs/593.gif" :\n    item.team1 === "Jacksonville Jaguars" ? "https://content.sportslogos.net/logos/7/159/thumbs/15988562013.gif" :\n    item.team1 === "Kansas City Chiefs" ? "https://content.sportslogos.net/logos/7/162/thumbs/857.gif" :\n    item.team1 === "Las Vegas Raiders" ? "https://content.sportslogos.net/logos/7/6708/thumbs/670885212020.gif" :\n    item.team1 === "Los Angeles Chargers" ? "https://content.sportslogos.net/logos/7/6446/thumbs/644616602020.gif" :\n    item.team1 === "Los Angeles Rams" ? "https://content.sportslogos.net/logos/7/5941/thumbs/594183342020.gif" :\n    item.team1 === "Miami Dolphins" ? "https://content.sportslogos.net/logos/7/150/thumbs/15073062018.gif" :\n    item.team1 === "Minnesota Vikings" ? "https://content.sportslogos.net/logos/7/172/thumbs/17227042013.gif" :\n    item.team1 === "New England Patriots" ? "https://content.sportslogos.net/logos/7/151/thumbs/y71myf8mlwlk8lbgagh3fd5e0.gif" :\n    item.team1 === "New Orleans Saints" ? "https://content.sportslogos.net/logos/7/175/thumbs/907.gif" :\n    item.team1 === "New York Giants" ? "https://content.sportslogos.net/logos/7/166/thumbs/919.gif" :\n    item.team1 === "New York Jets" ? "https://content.sportslogos.net/logos/7/152/thumbs/15274172024.gif" :\n    item.team1 === "Philadelphia Eagles" ? "https://content.sportslogos.net/logos/7/167/thumbs/960.gif" :\n    item.team1 === "Pittsburgh Steelers" ? "https://content.sportslogos.net/logos/7/156/thumbs/970.gif" :\n    item.team1 === "San Francisco 49ers" ? "https://content.sportslogos.net/logos/7/179/thumbs/17994552009.gif" :\n    item.team1 === "Seattle Seahawks" ? "https://content.sportslogos.net/logos/7/180/thumbs/pfiobtreaq7j0pzvadktsc6jv.gif" :\n    item.team1 === "Tampa Bay Buccaneers" ? "https://content.sportslogos.net/logos/7/176/thumbs/17683632020.gif" :\n    item.team1 === "Tennessee Titans" ? "https://content.sportslogos.net/logos/7/160/thumbs/1053.gif" :\n    item.team1 === "Washington Commanders" ? "https://content.sportslogos.net/logos/7/6832/thumbs/683260482022.gif" :\n    "https://content.sportslogos.net/logos/7/1007/thumbs/dwuw5lojnwsj12vfe0hfa6z47.gif" }}'
            }
          />
          <Image
            id="image3"
            fit="contain"
            heightType="fixed"
            horizontalAlign="center"
            src={
              '{{item.team2 === "Baltimore Ravens" ? "https://content.sportslogos.net/logos/7/153/thumbs/318.gif" :\n    item.team2 === "Cincinnati Bengals" ? "https://content.sportslogos.net/logos/7/154/thumbs/15420492021.gif" :\n    item.team2 === "Buffalo Bills" ? "https://content.sportslogos.net/logos/7/149/thumbs/n0fd1z6xmhigb0eej3323ebwq.gif" :\n    item.team2 === "Atlanta Falcons" ? "https://content.sportslogos.net/logos/7/173/thumbs/299.gif" :\n    item.team2 === "Arizona Cardinals" ? "https://content.sportslogos.net/logos/7/177/thumbs/kwth8f1cfa2sch5xhjjfaof90.gif" :\n    item.team2 === "Carolina Panthers" ? "https://content.sportslogos.net/logos/7/174/thumbs/f1wggq2k8ql88fe33jzhw641u.gif" :\n    item.team2 === "Chicago Bears" ? "https://content.sportslogos.net/logos/7/169/thumbs/16975942023.gif" :\n    item.team2 === "Cleveland Browns" ? "https://content.sportslogos.net/logos/7/155/thumbs/15566962024.gif" :\n    item.team2 === "Dallas Cowboys" ? "https://content.sportslogos.net/logos/7/165/thumbs/406.gif" :\n    item.team2 === "Denver Broncos" ? "https://content.sportslogos.net/logos/7/161/thumbs/9ebzja2zfeigaziee8y605aqp.gif" :\n    item.team2 === "Detroit Lions" ? "https://content.sportslogos.net/logos/7/170/thumbs/17013982017.gif" :\n    item.team2 === "Green Bay Packers" ? "https://content.sportslogos.net/logos/7/171/thumbs/dcy03myfhffbki5d7il3.gif" :\n    item.team2 === "Houston Texans" ? "https://content.sportslogos.net/logos/7/157/thumbs/15758902024.gif" :\n    item.team2 === "Indianapolis Colts" ? "https://content.sportslogos.net/logos/7/158/thumbs/593.gif" :\n    item.team2 === "Jacksonville Jaguars" ? "https://content.sportslogos.net/logos/7/159/thumbs/15988562013.gif" :\n    item.team2 === "Kansas City Chiefs" ? "https://content.sportslogos.net/logos/7/162/thumbs/857.gif" :\n    item.team2 === "Las Vegas Raiders" ? "https://content.sportslogos.net/logos/7/6708/thumbs/670885212020.gif" :\n    item.team2 === "Los Angeles Chargers" ? "https://content.sportslogos.net/logos/7/6446/thumbs/644616602020.gif" :\n    item.team2 === "Los Angeles Rams" ? "https://content.sportslogos.net/logos/7/5941/thumbs/594183342020.gif" :\n    item.team2 === "Miami Dolphins" ? "https://content.sportslogos.net/logos/7/150/thumbs/15073062018.gif" :\n    item.team2 === "Minnesota Vikings" ? "https://content.sportslogos.net/logos/7/172/thumbs/17227042013.gif" :\n    item.team2 === "New England Patriots" ? "https://content.sportslogos.net/logos/7/151/thumbs/y71myf8mlwlk8lbgagh3fd5e0.gif" :\n    item.team2 === "New Orleans Saints" ? "https://content.sportslogos.net/logos/7/175/thumbs/907.gif" :\n    item.team2 === "New York Giants" ? "https://content.sportslogos.net/logos/7/166/thumbs/919.gif" :\n    item.team2 === "New York Jets" ? "https://content.sportslogos.net/logos/7/152/thumbs/15274172024.gif" :\n    item.team2 === "Philadelphia Eagles" ? "https://content.sportslogos.net/logos/7/167/thumbs/960.gif" :\n    item.team2 === "Pittsburgh Steelers" ? "https://content.sportslogos.net/logos/7/156/thumbs/970.gif" :\n    item.team2 === "San Francisco 49ers" ? "https://content.sportslogos.net/logos/7/179/thumbs/17994552009.gif" :\n    item.team2 === "Seattle Seahawks" ? "https://content.sportslogos.net/logos/7/180/thumbs/pfiobtreaq7j0pzvadktsc6jv.gif" :\n    item.team2 === "Tampa Bay Buccaneers" ? "https://content.sportslogos.net/logos/7/176/thumbs/17683632020.gif" :\n    item.team2 === "Tennessee Titans" ? "https://content.sportslogos.net/logos/7/160/thumbs/1053.gif" :\n    item.team2 === "Washington Commanders" ? "https://content.sportslogos.net/logos/7/6832/thumbs/683260482022.gif" :\n    "https://content.sportslogos.net/logos/7/1007/thumbs/dwuw5lojnwsj12vfe0hfa6z47.gif"}}'
            }
          />
          <Select
            id="select2"
            captionByIndex=""
            colorByIndex=""
            data="{{ ranks.data }}"
            disabled="{{ lockout.data }}"
            disabledByIndex=""
            emptyMessage="No options"
            fallbackTextByIndex=""
            hiddenByIndex=""
            iconByIndex=""
            imageByIndex=""
            label="Rank"
            labelPosition="top"
            labels=""
            overlayMaxHeight={375}
            placeholder="Select"
            showSelectionIndicator={true}
            style={{ ordered: [] }}
            tooltipByIndex=""
            value={'"{{ item.rank }}"'}
            values="{{ item.record_numbers }}"
          />
          <Text
            id="text4"
            horizontalAlign="center"
            value="#### {{ item.team1spread }}"
            verticalAlign="center"
          />
          <Text
            id="text5"
            horizontalAlign="center"
            value="#### {{ item.team2spread }}"
            verticalAlign="center"
          />
          <Divider id="divider2" />
          <Spacer id="spacer1" />
          <Divider id="divider1" />
          <Spacer id="spacer2" />
        </ListViewBeta>
      </View>
    </Container>
    <Button
      id="button2"
      disabled="{{ lockout.data }}"
      hidden=""
      text="Submit Picks"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="errorCheck"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="aggregateData"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Text
      id="text6"
      hidden="{{ errorCheck.data == true }}"
      horizontalAlign="center"
      style={{ ordered: [{ color: "danger" }] }}
      value="{{submitPicks.error}}"
      verticalAlign="center"
    />
  </Frame>
</App>
