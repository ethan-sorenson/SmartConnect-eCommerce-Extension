# SmartConnect eCommerce Extension
Extension for SmartConnect eCommerce integrations

This extension makes some small modifications to Business Central to improve eCommerce integrations.

## Included Changes

This Extension modifies two pages in the Business Central, and publishes several web services.

### Page Changes
The following two pages are modified in the [SCPageChanges.PageExt.al](SCPageChanges.PageExt.al) file.

1. Item Card - expose the 'No. 2' field to store the eCommerce Item Id.
2. Item Category Card - Create and expose a 'No. 2' field to store eCommerce Item Category Id. 

### Web Service Changes
1. Included is one API page, [SCShippingAddress.Page.al](SCShippingAddress.Page.al), which allows us to work around a web service limitation as outlined [here](https://www.eonesolutions.com/help-article/failed-to-create-record-property-editable-for-ship-to-address-is-invalid/ "here")

2. Also included is one API Query, [SCCreditMemosQuery.al](SCCreditMemosQuery.al), which allows us to efficiently query for posted Credit Memos to export to the eCommerce system.

3. Finally, there is the [WSPublishing.xml](WSPublishing.xml) which will automatically publish all needed web services when the app is published.

### Getting Started

1. You can either install the .app file directly or download the source code and make your own extension.
2. Publish the extension, and click ***Refresh Service List*** on any BC Odata data source.
3. Import the integration processes for your eCommerce integration.

![increment](https://i.imgur.com/ENxN3bc.jpg)

### Troubleshooting

**Web Service isn't available after publishing**

- Make sure the service is published as outlined [here](https://docs.microsoft.com/en-us/dynamics365/business-central/across-how-publish-web-service "documentation").
- Make sure the service is named as expected ex. /ODataV4/Company('Sample')/SCCreditMemosQuery

**Something else isn't working properly**

- Use github's issue reporter on the right
- Send me an email ethan.sorenson@eonesolutions.com (might take a few days)

### Updates

- 1.0.0.0 first release on BC v16

***Enjoy!***