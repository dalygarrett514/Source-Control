<Container
  id="container1"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  showHeader={true}
>
  <Header>
    <Text
      id="containerTitle1"
      value="#### {{current_user.firstName}}'s Profile"
      verticalAlign="center"
    />
  </Header>
  <View id="34267" viewKey="View 1">
    <TextInput
      id="textInput3"
      label="Display Name"
      labelPosition="top"
      placeholder="Enter value"
      value="{{ userInfo.data.name[0] }}"
    />
    <Spacer id="spacer1" />
    <TextInput
      id="textInput1"
      label="Email Address"
      labelPosition="top"
      placeholder="Enter value"
      value="{{ userInfo.data.email[0] }}"
    />
    <Spacer id="spacer2" />
    <Image
      id="circularImage1"
      aspectRatio={1}
      fit="contain"
      heightType="fixed"
      hidden=""
      horizontalAlign="center"
      src="{{textInput2.value}}"
      style={{ ordered: [{ borderRadius: "50%" }] }}
    />
    <TextInput
      id="textInput2"
      label="Profile Picture"
      labelPosition="top"
      placeholder="Enter URL"
      value="{{ userInfo.data.pic[0] }}"
    />
    <Spacer id="spacer3" />
    <Button id="button2" text="Save Changes">
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="profileCreateUpdate"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </View>
</Container>
