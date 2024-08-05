function isWithinTimeFrame() {
  const now = moment();
  const sunday1PM = moment().day(0).hour(13).minute(0).second(0);
  const wednesday1PM = moment().day(3).hour(13).minute(0).second(0);
  return now.isBetween(sunday1PM, wednesday1PM, null, '[]');
}

return isWithinTimeFrame();