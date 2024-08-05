function aggregateData() {
  const userId = current_user.id;
  const instanceValues = listView1.instanceValues || [];
  const data = listView1.data || [];
  
  return {
    userId,
    instanceValues,
    data
  };
}

return aggregateData();