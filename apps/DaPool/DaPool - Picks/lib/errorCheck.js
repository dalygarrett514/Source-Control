function checkDuplicatesInSelect() {
    // Extract values and filter out nulls
    const values = listView1.instanceValues.map(item => item.select2);
    
    // Check if there are any null values
    const nullValues = values.filter(v => v === null);
    if (nullValues.length > 0) {
        return `Error: One or more ranks are blank`;
    }

    // Check for duplicates
    const duplicates = values.filter((value, index) => values.indexOf(value) !== index);
    if (duplicates.length > 0) {
        return `Error: Duplicate ranking: ${duplicates[0]}`;
    }

    return true;
}

return checkDuplicatesInSelect();
