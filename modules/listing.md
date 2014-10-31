# Group Listing
## Listing [/v1/listing/{listing_id}/]
### Get Listing [GET]
+ Parameters
    + listing_id (string) ... Unique ID for a listing

+ Response 200
     
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
                  "https://zipdigs_photos.s3.amazonaws.com/knock/community/a3VwdG9uLmpwZzIwMTQtMTAtMjkgMTU6NDQ6NTEuOTkw...",
                          "s3key":
                  "knock/community/a3VwdG9uLmpwZzIwMTQtMTAtMjkgMTU6NDQ6NTEuOTkwOTQw.jpg",
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
                      "name": "3810 14th Avenue West",
                      "address": {
                        "city": "Seattle",
                        "zip": "98119",
                        "house": "",
                        "raw": "3810 14th Avenue West, Seattle, WA 98119, USA",
                        "state": "WA",
                        "street": "3810 14th Avenue West",
                        "unit": "B202"
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
                    "id": "GELe3Qv7MJGXQb69",
                    "pets": {
                      "notes": "",
                      "allowed": []
                    }
                  }
          }


## New Listing [/v1/listing/]
### Create Listing [POST]
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
                  "https://zipdigs_photos.s3.amazonaws.com/knock/community/a3VwdG9uLmpwZzIwMTQtMTAtMjkgMTU6NDQ6NTEuOTkw...",
                          "s3key":
                  "knock/community/a3VwdG9uLmpwZzIwMTQtMTAtMjkgMTU6NDQ6NTEuOTkwOTQw.jpg",
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
                      "name": "3810 14th Avenue West",
                      "address": {
                        "city": "Seattle",
                        "zip": "98119",
                        "house": "",
                        "raw": "3810 14th Avenue West, Seattle, WA 98119, USA",
                        "state": "WA",
                        "street": "3810 14th Avenue West",
                        "unit": "B202"
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
                    "id": "GELe3Qv7MJGXQb69",
                    "pets": {
                      "notes": "",
                      "allowed": []
                    }
                  }
        }

+ Response 201 (application/json)

        {
            'listing_id': 'JQpNKcNbCzYYysuu'
        }


## Listing Openhouse [/v1/listing/{listing_id}/openhouse/]
### Get listing's openhouses [GET]
+ Parameters
    + listing_id (string) ... Unique listing ID

+ Response 200 (application/json)

        {
            'open_houses': [
                {
                    pass
                }
            ]
        }


## Listing Calendar [/v1/listing/{listing_id}/calendar{?start,end}/]

+ Parameters
    + start (required, string, '2014-09-01T09:00-07:00') ... Timestamp in ISO 8601 for beginning of calendar period
    + end (required, string, '2014-10-13T13:00-07:00') ... Timestamp in ISO 8601 for end of calendar period

+ Model (application/json)

    + Body

        {
            "appointments": [ ],
            "open_houses": [ ]
        }

### Get listing's calendar [GET]

+ Response 200

    [Listing Calendar][]

## Listing Available Times [/v1/listing/{listing_id}/availableTimes{?start,end}/]

+ Parameters

    + start (required, string, '2014-09-01T09:00-07:00') ... Timestamp in ISO 8601 for beginning of schedule period

    + end (required, string, '2014-10-13T13:00-07:00') ... Timestamp in ISO 8601 for end of schedule period

+ Model (application/json)

    + Body

        {
            "open_houses": [
                {
                    "id": 1,
                    "time_slots": [
                        "2014-09-25T16:00-07:00",
                        "2014-09-25T16:15-07:00",
                        "2014-09-25T16:30-07:00",
                        "2014-09-25T16:45-07:00",
                        "2014-09-25T17:00-07:00",
                        "2014-09-25T17:15-07:00",
                    ]
                },
                {
                    "id": 2,
                    "time_slots": [
                        "2014-09-26T16:00-07:00",
                        "2014-09-26T16:15-07:00",
                        "2014-09-26T16:30-07:00",
                        "2014-09-26T16:45-07:00",
                        "2014-09-26T17:00-07:00",
                        "2014-09-26T17:15-07:00",
                    ]
                }
            ],
            "available_times": [
                "2014-09-25T09:00-07:00",
                "2014-09-25T09:15-07:00",
                "2014-09-25T10:00-07:00",
                "2014-09-25T10:30-07:00",
                "2014-09-25T13:15-07:00",
                "2014-09-26T09:00-07:00",
                "2014-09-26T11:45-07:00",
                "2014-09-26T16:00-07:00",
                "2014-09-27T09:00-07:00",
                "2014-09-27T10:45-07:00",
                "2014-09-27T14:00-07:00",
                "2014-09-27T15:15-07:00",
                "2014-09-28T08:15-07:00",
                "2014-09-28T08:45-07:00",
                "2014-09-28T12:30-07:00"
            ]
        }
        
### Get listing's available times [GET]

+ Response 200

    [Listing Available Times][]
