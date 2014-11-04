# Group Listing

## Listing [/v1/listing/{listing_id}/]
### Get Listing [GET]
+ Parameters
    + listing_id (required, string, `xfp5uhm4wx9sm54722thtf2t3t9xr2hahf4536jq`) ... Unique ID for a listing

+ Response 200
             
            {
                'listing': {
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
                              "s3url": "https://zipdigs_photos.s3.amazonaws.com/knock/community/a3VwdG9uLmpwZzIwMTQtMTAtMjkgMTU6NDQ6NTEuOTkw...",
                              "s3key": "knock/community/a3VwdG9uLmpwZzIwMTQtMTAtMjkgMTU6NDQ6NTEuOTkwOTQw.jpg",
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
                        "name": "1234 5th Ave",
                        "address": {
                          "city": "Seattle",
                          "zip": "98119",
                          "house": "",
                          "raw": "1234 5th Avenue, Seattle, WA 98119, USA",
                          "state": "WA",
                          "street": "1234 5th Avenue",
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
### Get Listing Open Houses [GET]
+ Parameters
    + listing_id (required, string, `xfp5uhm4wx9sm54722thtf2t3t9xr2hahf4536jq`) ... Unique listing ID

+ Response 200 (application/json)

            {
                'open_houses': [
                    {
                        'id': 14,
                        'manager_id': 45,
                        'listing_id': 'b2pk65wvzb9cr7hny6jmx98yh4b5dwrnbv8e3q7m',
                        'start_time': "2014-10-29T07:00:00.000Z",
                        'end_time': "2014-10-29T07:00:00.000Z",
                        'notes': '',
                        'created_time': "2014-10-29T07:00:00.000Z",
                        'modified_time': "2014-10-29T07:00:00.000Z",
                        'is_active': true
                    }
                ]
            }


## Listing Calendar [/v1/listing/{listing_id}/calendar{?start,end}/]
+ Parameters
    + listing_id (required, string, `3dfre7dtdpun4c6wx8fbkss32a2szbe2sfyvnyyq`) ... Unique listing ID
    + start (optional, string, `2014-09-01T09:00-07:00`) ... Timestamp in ISO 8601 for beginning of calendar period
    + end (optional, string, `2014-10-13T13:00-07:00`) ... Timestamp in ISO 8601 for end of calendar period

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
### Get Listing's Available Times [GET]
+ Parameters
    + listing_id (required, string, `3dfre7dtdpun4c6wx8fbkss32a2szbe2sfyvnyyq`) ... Unique listing ID
    + start (optional, string, `2014-09-01T09:00-07:00`) ... Timestamp in ISO 8601 for beginning of schedule period
    + end (optional, string, `2014-10-13T13:00-07:00`) ... Timestamp in ISO 8601 for end of schedule period

+ Response 200 (application/json)
        
            {
                'tour_slots': [
                    '2014-09-01T09:00-07:00'
                ],
                'open_house_slots': [
                    '2014-09-01T10:00-07:00'
                ]
            }


## Listing Photo [/v1/listing/photo]
### Upload Listing Photo [POST]
+ Request (multipart/form-data; boundary=---BOUNDARY)

            -----BOUNDARY
            Content-Disposition: form-data; name="image[file]"; filename="image.jpg"
            Content-Type: image/jpeg
            Content-Transfer-Encoding: base64

            /9j/4AAQSkZJRgABAQEAYABgAAD/2wBDAAgGBgcGBQgHBwcJCQgKDBQNDAsLDBkSEw8UHRofHh0a
            HBwgJC4nICIsIxwcKDcpLDAxNDQ0Hyc5PTgyPC4zNDL/2wBDAQkJCQwLDBgNDRgyIRwhMjIyMjIy
            MjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjL/wAARCAABAAEDASIA
            AhEBAxEB/8QAFQABAQAAAAAAAAAAAAAAAAAAAAf/xAAUEAEAAAAAAAAAAAAAAAAAAAAA/8QAFAEB
            AAAAAAAAAAAAAAAAAAAAAP/EABQRAQAAAAAAAAAAAAAAAAAAAAD/2gAMAwEAAhEDEQA/AL+AD//Z
            -----BOUNDARY
 
+ Response 201 (application/json)
                   
            {
                's3key': 'knock/community/d3d3Lmdvb2dsZS5jb20xMC0zMS0xOTkx.jpg',
                's3url':
                'knock.example.picture.s3.amazonaws.com/an84nJd8snd8JJ8.jpg'
            }

## Delete Listing Photo [/v1/listing/photo/delete]
### Delete Photo [POST]
+ Request (application/json)

            {
                's3key':'knock/community/d3d3Lmdvb2dsZS5jb20xMC0zMS0xOTkx.jpg'
            }

+ Response 201 (application/json)

            {
                'deleted': 'knock/community/d3d3Lmdvb2dsZS5jb20xMC0zMS0xOTkx.jpg' 
            }
