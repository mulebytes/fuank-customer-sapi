# fuank-customer-sapi
## Fuank Customer API


This Project is Structued in following ways.

- /src/main/mule has:
    - implementation.xml (Business Logic for the Resources Implemented)
    - global-config.xml (Connector Configurations and Global Configurations)
    - fuank-customer-sapi.xml (Scaffolded Flows of API Specification)
    - /common-flows/global-error-handler.xml (Global Exception Handler for Complete API)
    - /common-flows/mule-four-common-flows.xml (Custom JSON logging modules and sub flows are created for ease of logging in JSON format without changing log4j.xml)

- /src/main/resources has:
    - /api (RAML and dependent files)
    - /datawaeve_mappings (Externalized DWL files)
    - /modules (Reusable Global dataweave functions)
    - /properties (API configuration parameters)

## How to Run ?
**Authentication is already added in postman collection**
- This API is already deployed in CloudHub (http://faunk-customer-sapi.us-e2.cloudhub.io/api/*)
- Or You can Import the API and deploy locally (http://localhost:8081/api/*)
- import the postman collection (faunk-customer-api.postman_collection.json) and execute the requests

## API Resources
- # POST:/api/createCustomer 
    (Creates the Customer record in Salesforce and Cosmos DB)
- # POST:/api/updateCustomer
    (Updates the Customer record in Salesforce and Cosmos DB)
- # GET:/api/createCustomer/{customerId}
    (Retrieves the Customer record in Salesforce)
- # GET:/api/listCustomersCosmos
    (Lists all the Customers records from Cosmos DB)
