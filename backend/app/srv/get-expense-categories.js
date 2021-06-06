exports.handler = async (event) => {
  
  let expenseCategories = ["Groceries", "Shopping", "Housing", "Rent"];
  let response = {
      statusCode: 200,
      body: JSON.stringify(expenseCategories)
  };

  console.log("Returning expense category labels")
  
  return response;
};
