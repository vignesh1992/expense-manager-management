exports.handler = async (event) => {
  
  let response = {
      statusCode: 200,
      body: ["Groceries", "Shopping", "Rent"]
  };

  console.log("Returning expense category labels")
  
  return response;
};
