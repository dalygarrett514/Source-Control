<Frame
  id="$header"
  enableFullBleed={null}
  isHiddenOnDesktop={true}
  isHiddenOnMobile={false}
  padding="8px 12px"
  sticky={true}
  type="header"
>
  <Button
    id="button1"
    horizontalAlign="right"
    iconBefore="line/interface-setting-menu-1"
    styleVariant="outline"
  >
    <Event
      event="click"
      method="setHidden"
      params={{ ordered: [{ hidden: "{{ !sidebarFrame1.hidden }}" }] }}
      pluginId="sidebarFrame1"
      type="widget"
      waitMs={0}
      waitType="debounce"
    />
  </Button>
</Frame>
