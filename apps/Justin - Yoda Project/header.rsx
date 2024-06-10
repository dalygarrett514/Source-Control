<Frame
  id="$header"
  enableFullBleed={null}
  isHiddenOnDesktop={false}
  isHiddenOnMobile={true}
  padding="8px 12px"
  sticky={true}
  type="header"
>
  <Navigation
    id="navigation1"
    itemMode="static"
    src="https://pngimg.com/d/yoda_PNG8.png"
  >
    <Option id="c44fe" itemType="app" label="YODA Person Inquiry" />
  </Navigation>
  <Text
    id="text1"
    horizontalAlign="right"
    value="**Welcome {{ current_user.firstName || 'friend' }}!**"
    verticalAlign="center"
  />
</Frame>
