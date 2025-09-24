// Get the statement data directly from the keyValue component
const statement = keyValue1.data;

// Build CSV content
const csvContent = [
  Object.keys(statement).join(","),        // CSV header
  Object.values(statement).join(",")       // CSV row
].join("\n");

// Generate file name using the required format
const fileName = `${statement.statement_month}_${statement.crm}-${statement.processor}_${statement.merchant_number}.csv`;

// Trigger download
const blob = new Blob([csvContent], { type: "text/csv;charset=utf-8;" });
const url = URL.createObjectURL(blob);
const link = document.createElement("a");
link.setAttribute("href", url);
link.setAttribute("download", fileName);
link.style.visibility = "hidden";
document.body.appendChild(link);
link.click();
document.body.removeChild(link);
