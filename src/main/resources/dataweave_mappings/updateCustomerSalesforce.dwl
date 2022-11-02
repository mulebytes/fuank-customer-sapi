%dw 2.0
output application/java
---
[{
	Id: vars.customerId,
	Name: (vars.requestPayload.firstName default "") ++ (vars.requestPayload.lastName default ""),
	customerId__c: vars.requestPayload.id,
	firstName__c: vars.requestPayload.firstName,
	lastName__c: vars.requestPayload.lastName,
	companyName__c: vars.requestPayload.companyName,
	email__c: vars.requestPayload.email,
	phone__c: vars.requestPayload.phone
}]