<SidebarFrame
  id="sidebarFrame1"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  padding="8px 12px"
  showFooter={true}
  showHeader={true}
  width="large"
>
  <Header>
    <Text
      id="text1"
      horizontalAlign="center"
      style={{ ordered: [{ fontSize: "h6Font" }] }}
      value="**DaPool**"
      verticalAlign="center"
    />
    <Image
      id="image1"
      fit="contain"
      heightType="fixed"
      horizontalAlign="center"
      retoolStorageFileId="33d79de3-f6db-4ae0-8597-5ddc05de250a"
      src="https://pbs.twimg.com/media/CmxcO_gWEAA0dNy?format=jpg&name=large"
    />
  </Header>
  <Body>
    <Navigation
      id="navigation1"
      itemMode="static"
      orientation="vertical"
      src={null}
      srcType={null}
    >
      <Option
        id="a6ed5"
        appTarget="613ca036-50db-11ef-a75d-b3cf7079df72"
        icon="bold/interface-home-3"
        iconPosition="left"
        itemType="app"
        label="Leaderboard"
      />
      <Option
        id="f678f"
        appTarget="bafbb3a0-50f4-11ef-be3c-bb8ece76f4d4"
        icon="bold/interface-user-multiple"
        iconPosition="left"
        itemType="app"
        label="Make Picks"
      />
      <Option
        id="02e96"
        appTarget="71ae4c30-50e5-11ef-abc8-1f50cf1f961d"
        disabled={false}
        hidden={false}
        icon="bold/interface-user-single"
        iconPosition="left"
        itemType="app"
        label="Profile"
      />
    </Navigation>
  </Body>
  <Footer>
    <Avatar
      id="avatar1"
      fallback="{{ current_user.fullName }}"
      imageSize={32}
      label="{{ current_user.fullName }}"
      margin="4px 4px"
      src="{{ current_user.profilePhotoUrl }}"
      style={{ ordered: [{ background: "automatic" }] }}
    />
  </Footer>
</SidebarFrame>
