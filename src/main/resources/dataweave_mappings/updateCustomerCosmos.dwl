%dw 2.0
output application/json skipNullOn = "everywhere"
---
{
	id: vars.requestPayload.id,
	customerId: vars.requestPayload.id,
	personalInformation: {
		firstName: vars.requestPayload.firstName,
		lastName: vars.requestPayload.lastName,
		companyName: vars.requestPayload.companyName,
		email: vars.requestPayload.email,
		phone: vars.requestPayload.phone
	},
	address: vars.requestPayload.address map ( address , indexOfAddress ) -> {
		street: address.street,
		houseNumber: address.houseNumber,
		city: address.city,
		country: address.country,
		postalCode: address.postalCode
	}
}