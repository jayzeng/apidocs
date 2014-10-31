# Group Manager
## Manager [/v1/manager/{manager_id}]
### Get Manager [GET]
Get manager using the manager_id parameter
+ Parameters
    + manager_id (required, string, 'gPZMUKwFBrCjgWqU') ... Unique manager ID

+ Response 200 (application/json)

          {
              "manager": {
                  "created_time": "Wed, 03 Sep 2014 06:41:48 GMT",
                  "id": 'gPZMUKwFBrCjgWqU',
                  "is_active": true,
                  "modified_time": "Wed, 03 Sep 2014 06:41:48 GMT",
                  "provider": "knock",
                  "username": "spock@enterprise.com"
              }
          }

## Manager Info [/v1/manager/{manager_id}/info]
### Get Manger Info [GET]
+ Parameters
    + manager_id (required, string, 'gPZMUKwFBrCjgWqU') ... Unique manager ID

+ Response 200 (application/json)

        {
            "manager_info": {
                "bio": "I'm a doctor Jim",
                "email": "mccoy@enterprise.com",
                "first_name": "Leonard",
                "job_title": "Doctor",
                "last_name": "McCoy",
                "manager_id": 1,
                "phone": "206-333-2222",
                "photo": null,
                "verification_method": "text"
            }
        }


## Manager from Auth [/v1/manager/]
### Get Manager [GET]
Get manager using the ID imbedded in the authorization header
+ Response 200 (application/json)

        {
            "manager": {
                "created_time": "Wed, 03 Sep 2014 06:41:48 GMT",
                "id": 'gPZMUKwFBrCjgWqU',
                "is_active": true,
                "modified_time": "Wed, 03 Sep 2014 06:41:48 GMT",
                "provider": "knock",
                "username": "spock@enterprise.com"
            }
        }

## Manager Info from Auth [/v1/manager/info]
### Get Manager Info [GET]
Get manager info using the ID imbedded in the authorization header
+ Response 200 (application/json)

        {
            "manager_info": {
                "bio": "I'm a doctor Jim",
                "email": "mccoy@enterprise.com",
                "first_name": "Leonard",
                "job_title": "Doctor",
                "last_name": "McCoy",
                "manager_id": 1,
                "phone": "206-333-2222",
                "photo": null,
                "verification_method": "text"
            }
        }

### Update Manager Info [POST]
+ Request

            {
                "bio": "Still a doctor",
                "email": "mccoy@enterprise.com",
                "first_name": "Leonard",
                "job_title": "Doctor",
                "last_name": "McCoy",
                "phone": "206-222-3333",
                "photo": null,
                "verification_method": "text"
            }

+ Response 201 (application/json)
    
            {
                "manager_info": 'gPZMUKwFBrCjgWqU'
            }

## Manager Preferences [/v1/manager/preferences]
### Get Manager Preferences [GET]
+ Response 200 (application/json)

        {
            "manager_preferences": {
                "adjacent_showing_interval": "0:15:00",
                "all_showings": false,
                "concurrent_showing_visitors": 3,
                "income_requirement_multiplier": 2,
                "manager_id": 1
            }
        }

### Update Manager Preferences [POST]
+ Request

        {
            "all_showings": false,
            "concurrent_showing_visitors": 3,
            "adjacent_showing_interval": 15,
            "income_requirement_multiplier": 1.5
        }

+ Response 201 (application/json)

        {
            "manager_preferences": 'ukee6w5hrjyerz3a'
        }

## Manager Listings [/v1/manager/listing/]
### Get Manager Listings [GET]
+ Response 200 (application/json)
    
        {
            'listings': [
                {
                  "social": {
                    "website": "",
                    "twitter": "",
                    "facebook": ""
                  },
                  "laundry": {
                    "notes": "",
                    "types": []
                  },
                  "description": {
                    "short": "",
                    "full": ""
                  },
                  "floorplan": {
                    "image": null,
                    "bedrooms": "1",
                    "bathrooms": "1",
                    "size": "1000"
                  },
                  "views": [],
                  "extra": {
                    "isSmokingAllowed": null,
                    "yearBuilt": "",
                    "hasWheelchairAccess": null,
                    "sharedUnit": false
                  },
                  "utilities": {
                    "estimatedCost": "",
                    "included": []
                  },
                  "photos": {
                    "files": [
                      {
                        "s3url":
                "https://example_photos.s3.amazonaws.com/knock/community/a3VwdG9uLmpwZzIwMTdtMTAtMjkgMTU6NDq6NTE4OTkw...",
                        "s3key":
                "knock/community/a3VwdG9uLmpwvzIwMTQtnTAtMjkg6TU6NDQ6NTEuOtkwOTQw.jpg",
                        "filename": "kupton.jpg"
                      }
                    ]
                  },
                  "amenities": {
                    "common": [],
                    "unit": []
                  },
                  "location": {
                    "propertyType": "",
                    "geo": {
                      "type": "point",
                      "coordinates": [
                        -122.3748877,
                        47.6545525
                      ]
                    },
                    "name": "1234 5th Street",
                    "address": {
                      "city": "Seattle",
                      "zip": "98119",
                      "house": "",
                      "raw": "1234 5th Street",
                      "state": "WA",
                      "street": ""5th Street"
                      "unit": "A"
                    }
                  },
                  "appliances": [],
                  "parking": {
                    "notes": "",
                    "types": []
                  },
                  "leasing": {
                    "availableDate": "2014-10-29T07:00:00.000Z",
                    "application": {
                      "fee": "",
                      "link": ""
                    },
                    "terms": {
                      "deposit": ""
                    },
                    "monthlyRent": "1500"
                  },
                  "pets": {
                    "notes": "",
                    "allowed": []
                  }
                }
            ]
        }

## Manager Listing [/v1/manager/listing/{listing_id}]
### Update Manager Listing [PUT]
+ Parameters
    + listing_id (required, sring, 'PKzrzpCYnpCCsnHf') ... Unique listing ID

+ Request (application/json)
    
        {
            'listing':
                {
                  "social": {
                    "website": "",
                    "twitter": "",
                    "facebook": ""
                  },
                  "laundry": {
                    "notes": "",
                    "types": []
                  },
                  "description": {
                    "short": "",
                    "full": ""
                  },
                  "floorplan": {
                    "image": null,
                    "bedrooms": "1",
                    "bathrooms": "1",
                    "size": "1000"
                  },
                  "views": [],
                  "extra": {
                    "isSmokingAllowed": null,
                    "yearBuilt": "",
                    "hasWheelchairAccess": null,
                    "sharedUnit": false
                  },
                  "utilities": {
                    "estimatedCost": "",
                    "included": []
                  },
                  "photos": {
                    "files": [
                      {
                        "s3url":
                "https://example_photos.s3.amazonaws.com/knock/community/a3VwdG9uLmpwZzIwMTdtMTAtMjkgMTU6NDq6NTE4OTkw...",
                        "s3key":
                "knock/community/a3VwdG9uLmpwvzIwMTQtnTAtMjkg6TU6NDQ6NTEuOtkwOTQw.jpg",
                        "filename": "kupton.jpg"
                      }
                    ]
                  },
                  "amenities": {
                    "common": [],
                    "unit": []
                  },
                  "location": {
                    "propertyType": "",
                    "geo": {
                      "type": "point",
                      "coordinates": [
                        -122.3748877,
                        47.6545525
                      ]
                    },
                    "name": "1234 5th Street",
                    "address": {
                      "city": "Seattle",
                      "zip": "98119",
                      "house": "",
                      "raw": "1234 5th Street",
                      "state": "WA",
                      "street": ""5th Street"
                      "unit": "A"
                    }
                  },
                  "appliances": [],
                  "parking": {
                    "notes": "",
                    "types": []
                  },
                  "leasing": {
                    "availableDate": "2014-10-29T07:00:00.000Z",
                    "application": {
                      "fee": "",
                      "link": ""
                    },
                    "terms": {
                      "deposit": ""
                    },
                    "monthlyRent": "1500"
                  },
                  "pets": {
                    "notes": "",
                    "allowed": []
                  }
                }
        }

+ Response 201 (applicatin/json)

        {
            'listing_id': 'ebsfejwfrbhj6uqs6bvyusus65pxtk8x'
        }

