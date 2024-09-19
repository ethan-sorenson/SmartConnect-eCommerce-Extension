# SmartConnect eCommerce Extension
Extension for SmartConnect eCommerce integrations

This extension makes some small modifications to Business Central to improve eCommerce integrations.

## Included Changes

This Extension modifies two pages in the Business Central, and publishes several web services.

### Page Changes
The following two pages are modified in the [SCPageChanges.PageExt.al](SCPageChanges.PageExt.al) file.

1. Item Card - expose the 'No. 2' field to store the eCommerce Item Id.
2. Item Category Card - Create and expose a 'No. 2' field to store eCommerce Item Category Id. 
3. Sales Invoice Sub form - Added custom 'eCommerce Id' field to store Shopify line number.
4. Sales Cr. Memo Sub form - Added custom 'eCommerce Id' field to store Shopify line number.
5. Location Card - Added and exposed 'External No.' field to store external location Ids

### Web Service Changes
1. Included is one API page, [SCShippingAddress.Page.al](SCShippingAddress.Page.al), which allows us to work around a web service limitation as outlined [here](https://www.eonesolutions.com/help-article/failed-to-create-record-property-editable-for-ship-to-address-is-invalid/ "here")

2. Also included are three API Queries, which allows us to efficiently perform complex queries.
- [SCCreditMemosQuery.al](SCCreditMemosQuery.al)
- [SCPaymentsQuery.al](SCPaymentsQuery.al)
- [SCItemInventoryLevelByLocation.al](SCItemInventoryLevelByLocation.al)

3. Finally, there is the [WSPublishing.xml](WSPublishing.xml) which will automatically publish all needed web services when the app is published.

## Getting Started

1. You can either install the .app file directly or download the source code and make your own extension.
2. Publish the extension, and click ***Refresh Service List*** on any BC OData data source.
3. Import the integration processes for your eCommerce integration.

![increment](https://i.imgur.com/ENxN3bc.jpg)

## Troubleshooting

**Web Service isn't available after publishing**

- Make sure the service is published as outlined [here](https://docs.microsoft.com/en-us/dynamics365/business-central/across-how-publish-web-service "documentation").
- Make sure the service is named as expected ex. /ODataV4/Company('Sample')/SCCreditMemosQuery

**Something else isn't working properly**

- Use GitHub's issue reporter on the right
- Send me an email ethan.sorenson@eonesolutions.com (might take a few days)

## Updates

- 1.0.0.0 first release on BC v16
- 1.0.0.1 added custom fields to Sales Lines to store Shopify Id
- 1.0.0.2 updated Runtime to 7.0 and switched to AL Permission Sets
- 1.0.0.3 added custom "External location identifier" field to location card, custom "Inventory Identifier" field to Item and Payments Query
- 1.0.0.4 added additional detail to the credit memo and inventory location queries
- 1.0.0.5 added Document Type and Your Reference to Shipping Address page. added No. 2 Field to Customer Card. Tested on BC v21
- 1.0.0.6 added Fulfillment Order web service and query.
- 1.0.0.7 replaced Item No. 2 field on Item table with custom eCommerce Id field.

***Enjoy!***