# Group Appointments

## Appointment [/v1/appointments/{id}]
+ Parameters
    + id (string) ... ID of the appointment
+ Model (application/json)
    + Body

            {
                "created_time": "Wed, 03 Sep 2014 08:29:23 GMT",
                "end_time": "2014-09-08T08:00:00-07:00",
                "id": 2,
                "is_active": true,
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
                },
                "manager_notes": null,
                "modified_time": "Wed, 03 Sep 2014 08:29:23 GMT",
                "renter_id": 2,
                "renter_notes": "Some renter written writings",
                "renter_visited": false,
                "start_time": "2014-09-08T08:15:00-07:00",
                "status": "requested",
                "type": "tour",
                "listing": {
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
                        "bathrooms": 2,
                        "bedrooms": 2,
                        "price": 1495,
                        "shared_unit": "false",
                        "size": 1000,
                        "year_built": null
                    },
                    "debug": {
                        "raw_url": "https://mapleleafmanagement.appfolio.com/listings/listings/b038c0e7-066a-4e7c-b459-67af52a0224e",
                        "source": "appfolio",
                        "visibility": "internal"
                    },
                    "details": {
                        "description": {
                            "full": "2 bedroom, 2 bath townhouse style condominium in a very convenient location.  Features include large closets spaces, washer and dryer in unit, bamboo floors, wood burning fireplace, carpet is less than 6 months old and a small private terrace.  The master bedroom is located upstairs with a full bath.  Open and airy floor plan, very private and move-in ready.  One parking spot and additional storage. Great location with a 10 minute commute to downtown, easy access to the UW, Green Lake, Northgate.  Close to I-5, Aurora and Lake City Way which provides a quick commute to many other Seattle area communities and suburbs.   Move in ready condition.  No need for a car, you can either walk everywhere or it is just a short walk to the bus stop.Walk to.....Diva Espresso, Cooper's Ale House, Pagliacci Pizza, iBuger and Shake, Hudson Ale House, Chiang's Chinese, Roosevelt Ale House, Snappy Dragon, COA Mexican Restaurant, Reckless Video, Ace Hardware, Maple Leaf Grill and Maple Leaf Park.Indoor Cats Only with additional Pet Deposit.",
                            "short": "Townhouse Style Condo, Large Closets, Convenient"
                        },
                        "pets": {
                            "allowed": [],
                            "notes": ""
                        },
                        "smoking_allowed": null,
                        "wheelchair_access": null
                    },
                    "id": "054cfc34c7ec452af511cd5e2202c12966fc54a7",
                    "leasing": {
                        "application": {
                            "fee": "",
                            "link": "https://mapleleafmanagement.appfolio.com/listings/rental_applications/new?listable_uid=b038c0e7-066a-4e7c-b459-67af52a0224e&source=Website"
                        },
                        "available_date": null,
                        "company": {
                            "name": "Maple Leaf Management LLC",
                            "phone": "(206) 250-7367",
                            "url": "http://www.mapleleafmgt.com"
                        },
                        "terms": {
                            "deposit": null
                        }
                    },
                    "location": {
                        "address": {
                            "city": "Seattle",
                            "house": "8800",
                            "raw": "8800 20th Ave NE, #B101, Seattle, WA 98115",
                            "state": "WA",
                            "street": "20th Ave",
                            "unit": null,
                            "zip": "98115"
                        },
                        "geo": {
                            "coordinates": [
                                -122.306836,
                                47.692459
                            ],
                            "type": "point"
                        },
                        "name": "8800 20th Ave, 98115",
                        "property_type": "House"
                    },
                    "photos": [
                        "https://pa.cdn.appfolio.com/mapleleafmanagement/images/2a67fa03-1dc8-4b39-925f-55eb5cae7301/medium.jpg",
                        "https://pa.cdn.appfolio.com/mapleleafmanagement/images/ab72917b-d6e4-4f7a-abc6-e52034150b6b/medium.jpg",
                        "https://pa.cdn.appfolio.com/mapleleafmanagement/images/92188f1d-9a3e-4de3-99e7-54dbbd65153c/medium.jpg",
                        "https://pa.cdn.appfolio.com/mapleleafmanagement/images/ebd0b534-7c7e-488e-bf0f-8084f4d45efe/medium.jpg",
                        "https://pa.cdn.appfolio.com/mapleleafmanagement/images/f692fa9e-638a-4843-8000-b41dd83e5cfd/medium.jpg",
                        "https://pa.cdn.appfolio.com/mapleleafmanagement/images/41fd23a1-2fea-44d8-91d3-c75345792256/medium.jpg",
                        "https://pa.cdn.appfolio.com/mapleleafmanagement/images/af24c03e-1460-4b37-84b3-268743500ade/medium.jpg",
                        "https://pa.cdn.appfolio.com/mapleleafmanagement/images/d5087280-4b43-429c-88b6-5e68bca22011/medium.jpg"
                    ],
                    "promotions": "",
                    "social_urls": []
                }
            }

### Retrieve a single Appointment [GET]
+ Response 200
    [Appointment][]

### Cancel a single Appointment [DELETE]
+ Response 204

## Appointments Collection [/v1/appointments{?status,start,end}]
+ Model (application/json)
    + Body

            {
                "appointments": [
                    {
                        "created_time": "Wed, 03 Sep 2014 08:29:23 GMT",
                        "end_time": "2014-09-08T08:00:00-07:00",
                        "id": 2,
                        "is_active": true,
                        "manager_id": 1,
                        "manager_notes": null,
                        "modified_time": "Wed, 03 Sep 2014 08:29:23 GMT",
                        "renter_id": 2,
                        "renter_notes": "Some renter written writings",
                        "renter_visited": false,
                        "start_time": "2014-09-08T08:15:00-07:00",
                        "status": "visited",
                        "type": "tour",
                        "listing": {
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
                                "bathrooms": 2,
                                "bedrooms": 2,
                                "price": 1495,
                                "shared_unit": "false",
                                "size": 1000,
                                "year_built": null
                            },
                            "debug": {
                                "raw_url": "https://mapleleafmanagement.appfolio.com/listings/listings/b038c0e7-066a-4e7c-b459-67af52a0224e",
                                "source": "appfolio",
                                "visibility": "internal"
                            },
                            "details": {
                                "description": {
                                    "full": "2 bedroom, 2 bath townhouse style condominium in a very convenient location.  Features include large closets spaces, washer and dryer in unit, bamboo floors, wood burning fireplace, carpet is less than 6 months old and a small private terrace.  The master bedroom is located upstairs with a full bath.  Open and airy floor plan, very private and move-in ready.  One parking spot and additional storage. Great location with a 10 minute commute to downtown, easy access to the UW, Green Lake, Northgate.  Close to I-5, Aurora and Lake City Way which provides a quick commute to many other Seattle area communities and suburbs.   Move in ready condition.  No need for a car, you can either walk everywhere or it is just a short walk to the bus stop.Walk to.....Diva Espresso, Cooper's Ale House, Pagliacci Pizza, iBuger and Shake, Hudson Ale House, Chiang's Chinese, Roosevelt Ale House, Snappy Dragon, COA Mexican Restaurant, Reckless Video, Ace Hardware, Maple Leaf Grill and Maple Leaf Park.Indoor Cats Only with additional Pet Deposit.",
                                    "short": "Townhouse Style Condo, Large Closets, Convenient"
                                },
                                "pets": {
                                    "allowed": [],
                                    "notes": ""
                                },
                                "smoking_allowed": null,
                                "wheelchair_access": null
                            },
                            "id": "054cfc34c7ec452af511cd5e2202c12966fc54a7",
                            "leasing": {
                                "application": {
                                    "fee": "",
                                    "link": "https://mapleleafmanagement.appfolio.com/listings/rental_applications/new?listable_uid=b038c0e7-066a-4e7c-b459-67af52a0224e&source=Website"
                                },
                                "available_date": null,
                                "company": {
                                    "name": "Maple Leaf Management LLC",
                                    "phone": "(206) 250-7367",
                                    "url": "http://www.mapleleafmgt.com"
                                },
                                "terms": {
                                    "deposit": null
                                }
                            },
                            "location": {
                                "address": {
                                    "city": "Seattle",
                                    "house": "8800",
                                    "raw": "8800 20th Ave NE, #B101, Seattle, WA 98115",
                                    "state": "WA",
                                    "street": "20th Ave",
                                    "unit": null,
                                    "zip": "98115"
                                },
                                "geo": {
                                    "coordinates": [
                                        -122.306836,
                                        47.692459
                                    ],
                                    "type": "point"
                                },
                                "name": "8800 20th Ave, 98115",
                                "property_type": "House"
                            },
                            "photos": [
                                "https://pa.cdn.appfolio.com/mapleleafmanagement/images/2a67fa03-1dc8-4b39-925f-55eb5cae7301/medium.jpg",
                                "https://pa.cdn.appfolio.com/mapleleafmanagement/images/ab72917b-d6e4-4f7a-abc6-e52034150b6b/medium.jpg",
                                "https://pa.cdn.appfolio.com/mapleleafmanagement/images/92188f1d-9a3e-4de3-99e7-54dbbd65153c/medium.jpg",
                                "https://pa.cdn.appfolio.com/mapleleafmanagement/images/ebd0b534-7c7e-488e-bf0f-8084f4d45efe/medium.jpg",
                                "https://pa.cdn.appfolio.com/mapleleafmanagement/images/f692fa9e-638a-4843-8000-b41dd83e5cfd/medium.jpg",
                                "https://pa.cdn.appfolio.com/mapleleafmanagement/images/41fd23a1-2fea-44d8-91d3-c75345792256/medium.jpg",
                                "https://pa.cdn.appfolio.com/mapleleafmanagement/images/af24c03e-1460-4b37-84b3-268743500ade/medium.jpg",
                                "https://pa.cdn.appfolio.com/mapleleafmanagement/images/d5087280-4b43-429c-88b6-5e68bca22011/medium.jpg"
                            ],
                            "promotions": "",
                            "social_urls": []
                        }
                    },
                    {
                        "created_time": "Wed, 03 Sep 2014 08:29:23 GMT",
                        "end_time": "2014-09-09T10:15:00-07:00",
                        "id": 3,
                        "is_active": true,
                        "manager_id": 1,
                        "manager_notes": null,
                        "modified_time": "Wed, 03 Sep 2014 08:29:23 GMT",
                        "renter_id": 2,
                        "renter_notes": "Some renter written writings",
                        "renter_visited": false,
                        "start_time": "2014-09-09T10:00:00-07:00",
                        "status": "confirmed",
                        "type": "tour",
                        "listing": {
                            "id": "511 San Juan Circle, 99504",
                            "icon": "fa-home",
                            "address": "511 San Juan Circle, 99504",
                            "city": "Anchorage",
                            "state": "AK",
                            "price": 1595,
                            "bedrooms": 3,
                            "bathrooms": 2,
                            "squareFeet": 1100,
                            "available": null,
                            "pets": [],
                            "geo": {
                                "longitude": -149.777217,
                                "latitude": 61.217465
                            },
                            "images": [
                                "https://photos.knockrentals.com/30ba145a-b67b-4ce6-82f2-63c7d533d2fa/medium.jpg",
                                "https://photos.knockrentals.com/3ea08774-7de3-49d4-9d3d-686d7518eb30/medium.jpg",
                                "https://photos.knockrentals.com/9c8b6077-abbb-4358-8436-b57f5aebbfd4/medium.jpg",
                                "https://photos.knockrentals.com/45904a15-31fe-4b06-9f05-c46bb488ccd9/medium.jpg",
                                "https://photos.knockrentals.com/d19470de-efe5-4a07-812f-c8ae4ccbad6b/medium.jpg",
                                "https://photos.knockrentals.com/b392ac16-93d9-4a68-b64b-980b96cc87aa/medium.jpg",
                                "https://photos.knockrentals.com/e7d1ed55-3327-4611-89c5-1e22b7a4e18e/medium.jpg",
                                "https://photos.knockrentals.com/17247cb2-c7b4-428c-b6dd-1ed1a5a58a21/medium.jpg",
                                "https://photos.knockrentals.com/99908f90-c340-4782-8d19-273acf46593e/medium.jpg",
                                "https://photos.knockrentals.com/388236a7-d5fa-406a-8206-5365e1b3fc5c/medium.jpg",
                                "https://photos.knockrentals.com/89bd2c4c-d6ae-4ab2-9cf2-bbe1b7549885/medium.jpg",
                                "https://photos.knockrentals.com/367660f2-b03f-4965-93dd-5d9c7ebdeb24/medium.jpg",
                                "https://photos.knockrentals.com/21541216-9ce9-4dab-b30f-c7b9c1c1ea14/medium.jpg",
                                "https://photos.knockrentals.com/89ad8771-a5a3-437d-8008-3d1f7ce61e8b/medium.jpg",
                                "https://photos.knockrentals.com/aaa42e35-2772-480b-a0b3-b74ff522ecc4/medium.jpg"
                            ]
                        }
                    },
                    {
                        "created_time": "Wed, 03 Sep 2014 08:29:23 GMT",
                        "end_time": "2014-09-10T13:30:00-07:00",
                        "id": 4,
                        "is_active": true,
                        "manager_id": 1,
                        "manager_notes": null,
                        "modified_time": "Wed, 03 Sep 2014 08:29:23 GMT",
                        "renter_id": 2,
                        "renter_notes": "Some renter written writings",
                        "renter_visited": false,
                        "start_time": "2014-09-10T13:15:00-07:00",
                        "status": "requested",
                        "type": "tour",
                        "listing": {
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
                                "bathrooms": 2,
                                "bedrooms": 2,
                                "price": 1495,
                                "shared_unit": "false",
                                "size": 1000,
                                "year_built": null
                            },
                            "debug": {
                                "raw_url": "https://mapleleafmanagement.appfolio.com/listings/listings/b038c0e7-066a-4e7c-b459-67af52a0224e",
                                "source": "appfolio",
                                "visibility": "internal"
                            },
                            "details": {
                                "description": {
                                    "full": "2 bedroom, 2 bath townhouse style condominium in a very convenient location.  Features include large closets spaces, washer and dryer in unit, bamboo floors, wood burning fireplace, carpet is less than 6 months old and a small private terrace.  The master bedroom is located upstairs with a full bath.  Open and airy floor plan, very private and move-in ready.  One parking spot and additional storage. Great location with a 10 minute commute to downtown, easy access to the UW, Green Lake, Northgate.  Close to I-5, Aurora and Lake City Way which provides a quick commute to many other Seattle area communities and suburbs.   Move in ready condition.  No need for a car, you can either walk everywhere or it is just a short walk to the bus stop.Walk to.....Diva Espresso, Cooper's Ale House, Pagliacci Pizza, iBuger and Shake, Hudson Ale House, Chiang's Chinese, Roosevelt Ale House, Snappy Dragon, COA Mexican Restaurant, Reckless Video, Ace Hardware, Maple Leaf Grill and Maple Leaf Park.Indoor Cats Only with additional Pet Deposit.",
                                    "short": "Townhouse Style Condo, Large Closets, Convenient"
                                },
                                "pets": {
                                    "allowed": [],
                                    "notes": ""
                                },
                                "smoking_allowed": null,
                                "wheelchair_access": null
                            },
                            "id": "054cfc34c7ec452af511cd5e2202c12966fc54a7",
                            "leasing": {
                                "application": {
                                    "fee": "",
                                    "link": "https://mapleleafmanagement.appfolio.com/listings/rental_applications/new?listable_uid=b038c0e7-066a-4e7c-b459-67af52a0224e&source=Website"
                                },
                                "available_date": null,
                                "company": {
                                    "name": "Maple Leaf Management LLC",
                                    "phone": "(206) 250-7367",
                                    "url": "http://www.mapleleafmgt.com"
                                },
                                "terms": {
                                    "deposit": null
                                }
                            },
                            "location": {
                                "address": {
                                    "city": "Seattle",
                                    "house": "8800",
                                    "raw": "8800 20th Ave NE, #B101, Seattle, WA 98115",
                                    "state": "WA",
                                    "street": "20th Ave",
                                    "unit": null,
                                    "zip": "98115"
                                },
                                "geo": {
                                    "coordinates": [
                                        -122.306836,
                                        47.692459
                                    ],
                                    "type": "point"
                                },
                                "name": "8800 20th Ave, 98115",
                                "property_type": "House"
                            },
                            "photos": [
                                "https://pa.cdn.appfolio.com/mapleleafmanagement/images/2a67fa03-1dc8-4b39-925f-55eb5cae7301/medium.jpg",
                                "https://pa.cdn.appfolio.com/mapleleafmanagement/images/ab72917b-d6e4-4f7a-abc6-e52034150b6b/medium.jpg",
                                "https://pa.cdn.appfolio.com/mapleleafmanagement/images/92188f1d-9a3e-4de3-99e7-54dbbd65153c/medium.jpg",
                                "https://pa.cdn.appfolio.com/mapleleafmanagement/images/ebd0b534-7c7e-488e-bf0f-8084f4d45efe/medium.jpg",
                                "https://pa.cdn.appfolio.com/mapleleafmanagement/images/f692fa9e-638a-4843-8000-b41dd83e5cfd/medium.jpg",
                                "https://pa.cdn.appfolio.com/mapleleafmanagement/images/41fd23a1-2fea-44d8-91d3-c75345792256/medium.jpg",
                                "https://pa.cdn.appfolio.com/mapleleafmanagement/images/af24c03e-1460-4b37-84b3-268743500ade/medium.jpg",
                                "https://pa.cdn.appfolio.com/mapleleafmanagement/images/d5087280-4b43-429c-88b6-5e68bca22011/medium.jpg"
                            ],
                            "promotions": "",
                            "social_urls": []
                        }
                    }
                ]
            }

### List all Appointments [GET]
+ Parameters
    + status (optional, string) .. Status identifier. Valid values are 'requested', 'confirmed', or 'visited'. Only appointments with the provided state are returned./
    + start (optional, string) ... ISO timestamp. Only appointments that start on or after this date are returned.
    + end (optional, string) ... ISO timestamp. Only appointments that end on or before this date are returned.
+ Response 200
    [Appointments Collection][]

### Request an appointment [POST]
+ Request (application/json)

        {
            "manager_id": 1,
            "renter_id": 2,
            "listing_id": "9420d8f9202469a79df197455e9a595ff106f1cc",
            "timezone": "US/Pacific",
            "start_time": "2014-10-13 10:00",
            "end_time": "2014-10-13 12:00",
            "type": "tour",
            "manager_notes": "A note from the manager" (optional),
            "renter_notes": "Some renter written writings" (optional)
        }

+ Response 201 (application/json)
    [Appointment][]

## Confirm [/v1/appointments/{id}/confirm]
+ Parameters
    + id (string) ... ID of the appointment
+ Model

        {
            "id": 2,
            "confirmed": true,
            "dateConfirmed": "2014-09-08T08:00:00-07:00"
        }

### Confirm an appointment [PUT]
+ Response 204

### Cancel confirmation of appointment [DELETE]
+ Response 204

### Check if an appointment is confirmed [GET]
+ Response 200
    [Confirm][]

## Visit [/v1/appointments/{id}/visit]
+ Parameters
    + id (string) ... ID of the appointment
+ Model

        {
            "id": 2,
            "visited": true,
            "dateVisited": "2014-09-08T08:00:00-07:00"
        }

### Mark an appointment as having been visited [PUT]
+ Response 204

### Check if an appointment has been visited [GET]
+ Response 200
    [Visit][]
