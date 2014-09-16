# Group Search

## Search [/v1/search/]


+ Model (application/json)

    + Body
   
         {
              "num_results": 1,
              "objects": {
                "1005 N Thorne Ave, 93728": {
                  "coordinates": {
                    "latitude": 36.755985,
                    "longitude": -119.813107
                  },
                  "listings": [
                    {
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
                        "https://photos.knockrentals.com/535d8d6f-f39d-48d8-9782-7e35ba261fbd/medium.jpg",
                        "https://photos.knockrentals.com/60177a25-8f1b-40a4-ad92-c1a417bfba62/medium.jpg",
                        "https://photos.knockrentals.com/6321346b-120d-4ad5-b5d8-d1e8912ac00e/medium.jpg",
                        "https://photos.knockrentals.com/f13679ad-ee7f-4145-9e63-ac5f4dff8038/medium.jpg",
                        "https://photos.knockrentals.com/3466a9c9-cce4-4b80-8b1b-b59566eeacaa/medium.jpg",
                        "https://photos.knockrentals.com/d9e77424-3ebf-4469-8255-a71b9ae47786/medium.jpg",
                        "https://photos.knockrentals.com/2cdf758a-1ea6-442b-ad7c-3e71258cc6c6/medium.jpg",
                        "https://photos.knockrentals.com/ec10bdfd-ff24-427c-be15-7671a658612f/medium.jpg",
                        "https://photos.knockrentals.com/9ca680a0-aa8d-4642-98ec-23bdd81a5d41/medium.jpg",
                        "https://photos.knockrentals.com/89390baa-b292-4f23-a35a-ed7eee4da042/medium.jpg",
                        "https://photos.knockrentals.com/497d8bce-c4c2-48a3-96ae-7e02287e625e/medium.jpg",
                        "https://photos.knockrentals.com/a79a7a09-01d6-4446-8690-a769b69af102/medium.jpg",
                        "https://photos.knockrentals.com/397958b4-aa64-4a21-8d0e-3d800bf20bcb/medium.jpg"
                      ],
                      "promotions": "",
                      "social_urls": []
                    }
                  ],
                  "type": "H"
                }
              },
              "page": 1,
              "total_pages": 1.0
            }
   
   
### Post search parameters [POST]

+ Request (application/json)

    {
      "price": {
        "low": 100,
        "high": 1200
      },
      "bedrooms": {
        "low": 2,
        "high": 5
      },
      "bathrooms": {
        "low": 1,
        "high": 4
      },
      "size": {
        "low": 0,
        "high": 2000
      },
      "shape": {
          "id": "fresno_high_fresno_ca",
          "type": "neighborhood"
      }
    }


+ Response 200

    [Search][]



## Search Suggest [/v1/search/suggest?{query}/]

+ Parameters
    
    + query (required, string, 'was') ... The beginning letters of a city name [minimum 3] 

+ Model (application/json)
    
    + Body
        
        {
             "num_results": 5,
             "page": 1,
             "search_query": "was",
             "suggestions": [
               {
                 "center": {
                   "lat": 38.9041031,
                   "lon": -77.017229
                 },
                 "id": "washington_dc",
                 "score": 646449.0,
                 "text": "Washington, DC",
                 "type": "city"
               },
               {
                 "center": {
                   "lat": 40.7352483454,
                   "lon": -111.835355467
                 },
                 "id": "wasatch_hollow_salt_lake_city_ut",
                 "score": 1.0,
                 "text": "Wasatch Hollow, Salt Lake City, UT",
                 "type": "neighborhood"
               },
               {
                 "center": {
                   "lat": 35.5937752,
                   "lon": -119.3673065
                 },
                 "id": "wasco_ca",
                 "score": 1.0,
                 "text": "Wasco, CA",
                 "type": "city"
               },
               {
                 "center": {
                   "lat": 45.5916658,
                   "lon": -120.6974942
                 },
                 "id": "wasco_or",
                 "score": 1.0,
                 "text": "Wasco, OR",
                 "type": "city"
               },
               {
                 "center": {
                   "lat": 44.0822636,
                   "lon": -93.4998284
                 },
                 "id": "waseca_mn",
                 "score": 1.0,
                 "text": "Waseca, MN",
                 "type": "city"
               }
             ],
             "total_pages": 1
        }

### Get search suggestion [GET]

+ Response 200

    [Search Suggest][]


