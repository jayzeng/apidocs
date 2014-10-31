# Group Manager

## Manager [/v1/manager/{manager_id}]
### Get Manager by ID [GET]
Get manager using the manager_id parameter
+ Parameters
    + manager_id (required, string, `gPZMUKwFBrCjgWqU`) ... Unique manager ID

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
### Get Manger Info by ID [GET]
+ Parameters
    + manager_id (required, string, `gPZMUKwFBrCjgWqU`) ... Unique manager ID

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
+ Model
    + Body

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

### Get Manager Listing [GET]
+ Parameters
    + listing_id (required, string, `PKzrzpCYnpCCsnHf`) ... Unique listing ID

+ Response 200 (application/json)
    [Manager Listing][]

### Update Manager Listing [PUT]
+ Parameters
    + listing_id (required, string, `PKzrzpCYnpCCsnHf`) ... Unique listing ID

+ Request (application/json)
     [Manager Listing][]

+ Response 201 (application/json)

            {
                'listing_id': 'ebsfejwfrbhj6uqs6bvyusus65pxtk8x'
            }

## Manager Hours [/v1/manager/hours/]
### Get Manager Hours [GET]
+ Response 200 (application/json)
    
            {
                'office_hours': [
                    {
                        'id': 141,
                        'manager_id': 63,
                        'date': "2014-10-08T09:00-07:00",
                        'day_of_week': 3,
                        'start_time': "2014-10-13T09:00-07:00",
                        'end_time': "2014-10-13T10:00-07:00",
                        'notes': '',
                        'created_time': "2014-10-04T09:00-07:00",
                        'modified_time': "2014-10-04T09:00-07:00",
                        'is_active': True
                    }
                ]
            }

### Post Manager Hours [POST]
+ Request (application/json)
    
            [
                {
                    "start_time": "2014-10-13T09:00-07:00",
                    "end_time": "2014-10-13T16:30-07:00",
                    "notes": "some sort of note" (optional)
                },
                {
                    "start_time": "2014-10-14T09:00-07:00",
                    "end_time": "2014-10-14T16:30-07:00",
                    "notes": "some sort of note" (optional)
                }
            ]

+ Response 201 (application/json)

            {
                'weekly_office_hour_id': 345
            }


## Open House [/v1/manager/openhouse/]
### Get Open Houses [GET]
+ Response 200 (application/json)
    
            {
                'open_houses': [
                    {
                        'id': 31,
                        'manager_id': 63,
                        'listing_id': '3k39sp2t668tcz7fjzex6j45t4hbgfj8tq7gmzp5',
                        'start_time': "2014-10-13T09:00-07:00",
                        'end_time': "2014-10-13T10:00-07:00",
                        'notes': '',
                        'created_time': "2014-10-04T09:00-07:00",
                        'modified_time': "2014-10-04T09:00-07:00",
                        'is_active': True     
                    }
                ]
            }

## Open House Details [/v1/manager/openhouse/{open_house_id}]
### Get Open House [GET]
+ Parameters
    + open_house_id (required, number, `54`) ... Unique ID for an open house
        event

+ Response 200 (application/json)
    
            {
                'open_house_id': 54
            }


## Manager Calendar [/v1/manager/calendar/]
### Get Manager Calendar [GET]
+ Parameters
    + manager_id (optional, number, `43`) ... Unique manager ID
    + start (optional, string, `2014-10-04T09:00-07:00`) ... Start time
    + end (optional, string, `2014-10-04T10:00-07:00`) ... End time

+ Response 200 (application/json)

            {
                'appointments': [
                    {
                        "created_time": "Wed, 03 Sep 2014 08:29:23 GMT",
                        "end_time": "2014-09-08T08:00:00-07:00",
                        "id": 2,
                        "is_active": true,
                        "manager_id: 1,
                        "manager_notes": null,
                        "modified_time": "Wed, 03 Sep 2014 08:29:23 GMT",
                        "renter_id": 2,
                        "renter_notes": "Some renter written writings",
                        "renter_visited": false,
                        "start_time": "2014-09-08T08:15:00-07:00",
                        "status": "requested",
                        "type": "tour",
                        "listing_id": "054cfc34c7ec452af511cd5e2202c12966fc54a7"
                    }

                ],
                'requests': [

                ],
                'open_houses': [
                    {
                        'id': 31,
                        'manager_id': 63,
                        'listing_id': '3k39sp2t668tcz7fjzex6j45t4hbgfj8tq7gmzp5',
                        'start_time': "2014-10-13T09:00-07:00",
                        'end_time': "2014-10-13T10:00-07:00",
                        'notes': '',
                        'created_time': "2014-10-04T09:00-07:00",
                        'modified_time': "2014-10-04T09:00-07:00",
                        'is_active': True     
                    }
                ]
            }


## Manager Community [/v1/manager/community/]
### Get Manager Communities [GET]
+ Response 200 (application/json)

            {
                'communities': [
                    
                ]
            }
