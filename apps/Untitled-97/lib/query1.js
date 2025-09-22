
function sumTotalPrices() {
  return table1.data.reduce((sum, item) => sum + (item.total_price || 0), 0);
}

return sumTotalPrices();

