<Screen
  id="page1"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  browserTitle=""
  title="Page 1"
  urlSlug=""
  uuid="3ec63acb-9165-4bde-a751-1be9d570465a"
>
  <RetoolStorageQuery
    id="GetSong"
    actionType="read"
    dynamicFileId={true}
    fileId="{{ select1.value }}"
    resourceDisplayName="retool_storage"
    resourceName="retool_storage"
  />
  <RetoolStorageQuery
    id="Getmp3s"
    enableTransformer={true}
    isMultiplayerEdited={false}
    resourceDisplayName="retool_storage"
    resourceName="retool_storage"
    runWhenPageLoads={true}
    transformer="function filterMp3Files(data) {
  return data.filter(item => item.name.endsWith('.mp3'));
}

return filterMp3Files(data);"
  />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    type="main"
  >
    <Select
      id="select1"
      data="{{ Getmp3s.data }}"
      emptyMessage="No options"
      label="Pick a Song"
      labelPosition="top"
      labels="{{ item.name }}"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      values="{{ item.id }}"
    />
    <Image
      id="circularImage1"
      aspectRatio={1}
      fit="contain"
      heightType="fixed"
      horizontalAlign="center"
      src="{{current_user.metadata.profilepic}}"
      style={{ map: { borderRadius: "50%" } }}
    />
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
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="00030" viewKey="View 1" />
    </Container>
    <DynamicWidget_GarrettCoolNewCustomComponents_AudioPlayerComponent
      id="audioPlayerComponent1"
      audioUrl="{{ GetSong.data.base64Data }}"
      collectionUuid="821942d6-3cb9-49bf-aa52-e5541dce1850"
      heightType="fixed"
    />
    <DynamicWidget_GarrettCoolNewCustomComponents_ReactFlowComponent
      id="reactFlowComponent1"
      collectionUuid="821942d6-3cb9-49bf-aa52-e5541dce1850"
      edges={
        '{\n  "edges": [\n    {\n      "id": "e1-2",\n      "source": "1",\n      "target": "2",\n      "animated": true,\n      "label": "to middle"\n    },\n    {\n      "id": "e2-3",\n      "source": "2",\n      "target": "3",\n      "label": "to end"\n    }\n  ]\n}'
      }
      heightType="fixed"
      nodeColor="#ffffff"
      nodes={
        '{\n  "nodes": [\n    {\n      "id": "1",\n      "type": "input",\n      "data": { "label": "Start Node" },\n      "position": { "x": 100, "y": 100 }\n    },\n    {\n      "id": "2",\n      "data": { "label": "Middle Node" },\n      "position": { "x": 300, "y": 200 }\n    },\n    {\n      "id": "3",\n      "type": "output",\n      "data": { "label": "End Node" },\n      "position": { "x": 500, "y": 300 }\n    }\n  ]\n}'
      }
    />
    <DynamicWidget_GarrettCoolNewCustomComponents_ReactFlowComponent
      id="reactFlowComponent2"
      collectionUuid="821942d6-3cb9-49bf-aa52-e5541dce1850"
      edges={
        '{\n  "edges": [\n    {\n      "id": "e1-2",\n      "source": "1",\n      "target": "2"\n    },\n    {\n      "id": "e2-3",\n      "source": "2",\n      "target": "3"\n    },\n    {\n      "id": "e3-4",\n      "source": "3",\n      "target": "4"\n    }\n  ]\n}'
      }
      heightType="fixed"
      nodeColor="#ffffff"
      nodes={
        '{\n  "nodes": [\n    {\n      "id": "1",\n      "x": 0,\n      "y": 0,\n      "label": "Start"\n    },\n    {\n      "id": "2",\n      "x": 200,\n      "y": 100,\n      "label": "Process"\n    },\n    {\n      "id": "3",\n      "x": 400,\n      "y": 200,\n      "label": "Review"\n    },\n    {\n      "id": "4",\n      "x": 600,\n      "y": 300,\n      "label": "Complete"\n    }\n  ]\n}'
      }
    />
  </Frame>
</Screen>
