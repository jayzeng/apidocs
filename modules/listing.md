# Group Listing

## Listing [/v1/listing/{listing_id}/]

+ Model (application/json)

        + Body
        
        {
          "listings": {
            "amenities": {
              "appliances": null,
              "common": "",
              "laundry": null,
              "parking_type": null,
              "unit": [],
              "utilities": {
                "estimated_cost": null,
                "included": []
              },
              "views": null
            },
            "basic": {
              "bathrooms": 1.5,
              "bedrooms": 3.0,
              "price": 1095.0,
              "shared_unit": "false",
              "size": 1532.0,
              "year_built": null
            },
            "debug": {
              "raw_url": "https://fresnomanagement.appfolio.com/listings/listings/24d529e2-c0c9-4932-92d5-89194bdd8378",
              "source": "appfolio",
              "visibility": "internal"
            },
            "details": {
              "description": {
                "full": "Charming 3 bedroom 2 bath home located on the corner lot includes a small bonus room that can be used office space or a play area.  Traditional Tower style home consists of built in cabinets throughout the home, detached 1 car garage, refrigerator and gas stove, laundry hookups located on the interior porch like setting. There is a covered patio that is great for entertaining and mature landscaping give you a nice and shady backyard.  Call today to schedule your appointment to view the inside as it won't last long!Fresno Management Companywww.FresnoPMC.com(559)438-9411BRE# 01795978",
                "short": "Charming Tower Bungalow"
              },
              "pets": {
                "allowed": [],
                "notes": ""
              },
              "smoking_allowed": null,
              "wheelchair_access": null
            },
            "id": "edf2bf3b291066e95cfeee8105248927db884bac",
            "leasing": {
              "application": {
                "fee": "",
                "link": ""
              },
              "available_date": null,
              "company": {
                "name": "Fresno Management Company",
                "phone": "(559) 438-9411",
                "url": ""
              },
              "terms": {
                "deposit": null
              }
            },
            "location": {
              "address": {
                "city": "Fresno",
                "house": "1005",
                "raw": "1005 N. Thorne Ave., Fresno, CA 93728",
                "state": "CA",
                "street": "N Thorne Ave",
                "unit": null,
                "zip": "93728"
              },
              "geo": {
                "coordinates": [
                  -119.813107,
                  36.755985
                ],
                "type": "point"
              },
              "name": "1005 N Thorne Ave, 93728",
              "property_type": "House"
            },
            "photos": [
              "https://photos.knockrentals.com535d8d6f-f39d-48d8-9782-7e35ba261fbd/medium.jpg",
              "https://photos.knockrentals.com60177a25-8f1b-40a4-ad92-c1a417bfba62/medium.jpg",
              "https://photos.knockrentals.com6321346b-120d-4ad5-b5d8-d1e8912ac00e/medium.jpg",
              "https://photos.knockrentals.comf13679ad-ee7f-4145-9e63-ac5f4dff8038/medium.jpg",
              "https://photos.knockrentals.com3466a9c9-cce4-4b80-8b1b-b59566eeacaa/medium.jpg",
              "https://photos.knockrentals.comd9e77424-3ebf-4469-8255-a71b9ae47786/medium.jpg",
              "https://photos.knockrentals.com2cdf758a-1ea6-442b-ad7c-3e71258cc6c6/medium.jpg",
              "https://photos.knockrentals.comec10bdfd-ff24-427c-be15-7671a658612f/medium.jpg",
              "https://photos.knockrentals.com9ca680a0-aa8d-4642-98ec-23bdd81a5d41/medium.jpg",
              "https://photos.knockrentals.com89390baa-b292-4f23-a35a-ed7eee4da042/medium.jpg",
              "https://photos.knockrentals.com497d8bce-c4c2-48a3-96ae-7e02287e625e/medium.jpg",
              "https://photos.knockrentals.coma79a7a09-01d6-4446-8690-a769b69af102/medium.jpg",
              "https://photos.knockrentals.com397958b4-aa64-4a21-8d0e-3d800bf20bcb/medium.jpg"
            ],
            "promotions": "",
            "social_urls": []
          }
        }

### Get listing [GET]

+ Response 200 (application/json)

    [Listing][]        

## Listing Openhouse [/v1/listing/{listing_id}/openhouse/]

+ Model (application/json)
		
    + Body

    {
        open_houses: [ ]
    }
		
### Get listing's openhouses [GET]

+ Response 200
	
    [Listing Openhouse][]
	
## Listing Calendar [/v1/listing/{listing_id}/calendar{?start,end}/]
 
+ Parameters
	
    + start (required, string, '2014-09-01T09:00-07:00') ... Timestamp in ISO 8601 for beginning of calendar period

    + end (required, string, '2014-10-13T13:00-07:00') ... Timestamp in ISO 8601 for end of calendar period

+ Model (application/json)
	
    + Body
	
    {
        appointments: [ ]
        open_houses: [ ]
    }
		
### Get listing's calendar [GET]

+ Response 200
	
    [Listing Calendar][]