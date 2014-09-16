# Group Appointments

## Appointment [/appointments/{id}]
+ Parameters
    + id (string) ... ID of the appointment
+ Model (application/json)
    + Body
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
            "status": "requested",
            "type": "tour",
            "listing": {
                "id":"511 San Juan Circle, 99504",
                "icon":"fa-home",
                "address":"511 San Juan Circle, 99504",
                "city":"Anchorage",
                "state":"AK",
                "price":1595,
                "bedrooms":3,
                "bathrooms":2,
                "squareFeet":1100,
                "available":null,
                "pets":[

                ],
                "geo":{
                    "longitude":-149.777217,
                    "latitude":61.217465
                    },
                    "images":[
                    "https://pa.cdn.appfolio.com/krkmanagement/images/30ba145a-b67b-4ce6-82f2-63c7d533d2fa/medium.jpg",
                    "https://pa.cdn.appfolio.com/krkmanagement/images/3ea08774-7de3-49d4-9d3d-686d7518eb30/medium.jpg",
                    "https://pa.cdn.appfolio.com/krkmanagement/images/9c8b6077-abbb-4358-8436-b57f5aebbfd4/medium.jpg",
                    "https://pa.cdn.appfolio.com/krkmanagement/images/45904a15-31fe-4b06-9f05-c46bb488ccd9/medium.jpg",
                    "https://pa.cdn.appfolio.com/krkmanagement/images/d19470de-efe5-4a07-812f-c8ae4ccbad6b/medium.jpg",
                    "https://pa.cdn.appfolio.com/krkmanagement/images/b392ac16-93d9-4a68-b64b-980b96cc87aa/medium.jpg",
                    "https://pa.cdn.appfolio.com/krkmanagement/images/e7d1ed55-3327-4611-89c5-1e22b7a4e18e/medium.jpg",
                    "https://pa.cdn.appfolio.com/krkmanagement/images/17247cb2-c7b4-428c-b6dd-1ed1a5a58a21/medium.jpg",
                    "https://pa.cdn.appfolio.com/krkmanagement/images/99908f90-c340-4782-8d19-273acf46593e/medium.jpg",
                    "https://pa.cdn.appfolio.com/krkmanagement/images/388236a7-d5fa-406a-8206-5365e1b3fc5c/medium.jpg",
                    "https://pa.cdn.appfolio.com/krkmanagement/images/89bd2c4c-d6ae-4ab2-9cf2-bbe1b7549885/medium.jpg",
                    "https://pa.cdn.appfolio.com/krkmanagement/images/367660f2-b03f-4965-93dd-5d9c7ebdeb24/medium.jpg",
                    "https://pa.cdn.appfolio.com/krkmanagement/images/21541216-9ce9-4dab-b30f-c7b9c1c1ea14/medium.jpg",
                    "https://pa.cdn.appfolio.com/krkmanagement/images/89ad8771-a5a3-437d-8008-3d1f7ce61e8b/medium.jpg",
                    "https://pa.cdn.appfolio.com/krkmanagement/images/aaa42e35-2772-480b-a0b3-b74ff522ecc4/medium.jpg"
                    ]
                }
            }

### Retrieve a single Appointment [GET]
+ Response 200
    [Appointment][]

### Cancel a single Appointment [DELETE]
+ Response 204

## Appointments Collection [/appointments{?status, start, end}]
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
                        "id":"511 San Juan Circle, 99504",
                        "icon":"fa-home",
                        "address":"511 San Juan Circle, 99504",
                        "city":"Anchorage",
                        "state":"AK",
                        "price":1595,
                        "bedrooms":3,
                        "bathrooms":2,
                        "squareFeet":1100,
                        "available":null,
                        "pets":[

                        ],
                        "geo":{
                            "longitude":-149.777217,
                            "latitude":61.217465
                            },
                        "images":[
                        "https://pa.cdn.appfolio.com/krkmanagement/images/30ba145a-b67b-4ce6-82f2-63c7d533d2fa/medium.jpg",
                        "https://pa.cdn.appfolio.com/krkmanagement/images/3ea08774-7de3-49d4-9d3d-686d7518eb30/medium.jpg",
                        "https://pa.cdn.appfolio.com/krkmanagement/images/9c8b6077-abbb-4358-8436-b57f5aebbfd4/medium.jpg",
                        "https://pa.cdn.appfolio.com/krkmanagement/images/45904a15-31fe-4b06-9f05-c46bb488ccd9/medium.jpg",
                        "https://pa.cdn.appfolio.com/krkmanagement/images/d19470de-efe5-4a07-812f-c8ae4ccbad6b/medium.jpg",
                        "https://pa.cdn.appfolio.com/krkmanagement/images/b392ac16-93d9-4a68-b64b-980b96cc87aa/medium.jpg",
                        "https://pa.cdn.appfolio.com/krkmanagement/images/e7d1ed55-3327-4611-89c5-1e22b7a4e18e/medium.jpg",
                        "https://pa.cdn.appfolio.com/krkmanagement/images/17247cb2-c7b4-428c-b6dd-1ed1a5a58a21/medium.jpg",
                        "https://pa.cdn.appfolio.com/krkmanagement/images/99908f90-c340-4782-8d19-273acf46593e/medium.jpg",
                        "https://pa.cdn.appfolio.com/krkmanagement/images/388236a7-d5fa-406a-8206-5365e1b3fc5c/medium.jpg",
                        "https://pa.cdn.appfolio.com/krkmanagement/images/89bd2c4c-d6ae-4ab2-9cf2-bbe1b7549885/medium.jpg",
                        "https://pa.cdn.appfolio.com/krkmanagement/images/367660f2-b03f-4965-93dd-5d9c7ebdeb24/medium.jpg",
                        "https://pa.cdn.appfolio.com/krkmanagement/images/21541216-9ce9-4dab-b30f-c7b9c1c1ea14/medium.jpg",
                        "https://pa.cdn.appfolio.com/krkmanagement/images/89ad8771-a5a3-437d-8008-3d1f7ce61e8b/medium.jpg",
                        "https://pa.cdn.appfolio.com/krkmanagement/images/aaa42e35-2772-480b-a0b3-b74ff522ecc4/medium.jpg"
                        ]
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
                        "id":"511 San Juan Circle, 99504",
                        "icon":"fa-home",
                        "address":"511 San Juan Circle, 99504",
                        "city":"Anchorage",
                        "state":"AK",
                        "price":1595,
                        "bedrooms":3,
                        "bathrooms":2,
                        "squareFeet":1100,
                        "available":null,
                        "pets":[

                        ],
                        "geo":{
                            "longitude":-149.777217,
                            "latitude":61.217465
                            },
                        "images":[
                        "https://pa.cdn.appfolio.com/krkmanagement/images/30ba145a-b67b-4ce6-82f2-63c7d533d2fa/medium.jpg",
                        "https://pa.cdn.appfolio.com/krkmanagement/images/3ea08774-7de3-49d4-9d3d-686d7518eb30/medium.jpg",
                        "https://pa.cdn.appfolio.com/krkmanagement/images/9c8b6077-abbb-4358-8436-b57f5aebbfd4/medium.jpg",
                        "https://pa.cdn.appfolio.com/krkmanagement/images/45904a15-31fe-4b06-9f05-c46bb488ccd9/medium.jpg",
                        "https://pa.cdn.appfolio.com/krkmanagement/images/d19470de-efe5-4a07-812f-c8ae4ccbad6b/medium.jpg",
                        "https://pa.cdn.appfolio.com/krkmanagement/images/b392ac16-93d9-4a68-b64b-980b96cc87aa/medium.jpg",
                        "https://pa.cdn.appfolio.com/krkmanagement/images/e7d1ed55-3327-4611-89c5-1e22b7a4e18e/medium.jpg",
                        "https://pa.cdn.appfolio.com/krkmanagement/images/17247cb2-c7b4-428c-b6dd-1ed1a5a58a21/medium.jpg",
                        "https://pa.cdn.appfolio.com/krkmanagement/images/99908f90-c340-4782-8d19-273acf46593e/medium.jpg",
                        "https://pa.cdn.appfolio.com/krkmanagement/images/388236a7-d5fa-406a-8206-5365e1b3fc5c/medium.jpg",
                        "https://pa.cdn.appfolio.com/krkmanagement/images/89bd2c4c-d6ae-4ab2-9cf2-bbe1b7549885/medium.jpg",
                        "https://pa.cdn.appfolio.com/krkmanagement/images/367660f2-b03f-4965-93dd-5d9c7ebdeb24/medium.jpg",
                        "https://pa.cdn.appfolio.com/krkmanagement/images/21541216-9ce9-4dab-b30f-c7b9c1c1ea14/medium.jpg",
                        "https://pa.cdn.appfolio.com/krkmanagement/images/89ad8771-a5a3-437d-8008-3d1f7ce61e8b/medium.jpg",
                        "https://pa.cdn.appfolio.com/krkmanagement/images/aaa42e35-2772-480b-a0b3-b74ff522ecc4/medium.jpg"
                        ]
                    }
                }
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
                        "id":"511 San Juan Circle, 99504",
                        "icon":"fa-home",
                        "address":"511 San Juan Circle, 99504",
                        "city":"Anchorage",
                        "state":"AK",
                        "price":1595,
                        "bedrooms":3,
                        "bathrooms":2,
                        "squareFeet":1100,
                        "available":null,
                        "pets":[

                        ],
                        "geo":{
                            "longitude":-149.777217,
                            "latitude":61.217465
                            },
                        "images":[
                        "https://pa.cdn.appfolio.com/krkmanagement/images/30ba145a-b67b-4ce6-82f2-63c7d533d2fa/medium.jpg",
                        "https://pa.cdn.appfolio.com/krkmanagement/images/3ea08774-7de3-49d4-9d3d-686d7518eb30/medium.jpg",
                        "https://pa.cdn.appfolio.com/krkmanagement/images/9c8b6077-abbb-4358-8436-b57f5aebbfd4/medium.jpg",
                        "https://pa.cdn.appfolio.com/krkmanagement/images/45904a15-31fe-4b06-9f05-c46bb488ccd9/medium.jpg",
                        "https://pa.cdn.appfolio.com/krkmanagement/images/d19470de-efe5-4a07-812f-c8ae4ccbad6b/medium.jpg",
                        "https://pa.cdn.appfolio.com/krkmanagement/images/b392ac16-93d9-4a68-b64b-980b96cc87aa/medium.jpg",
                        "https://pa.cdn.appfolio.com/krkmanagement/images/e7d1ed55-3327-4611-89c5-1e22b7a4e18e/medium.jpg",
                        "https://pa.cdn.appfolio.com/krkmanagement/images/17247cb2-c7b4-428c-b6dd-1ed1a5a58a21/medium.jpg",
                        "https://pa.cdn.appfolio.com/krkmanagement/images/99908f90-c340-4782-8d19-273acf46593e/medium.jpg",
                        "https://pa.cdn.appfolio.com/krkmanagement/images/388236a7-d5fa-406a-8206-5365e1b3fc5c/medium.jpg",
                        "https://pa.cdn.appfolio.com/krkmanagement/images/89bd2c4c-d6ae-4ab2-9cf2-bbe1b7549885/medium.jpg",
                        "https://pa.cdn.appfolio.com/krkmanagement/images/367660f2-b03f-4965-93dd-5d9c7ebdeb24/medium.jpg",
                        "https://pa.cdn.appfolio.com/krkmanagement/images/21541216-9ce9-4dab-b30f-c7b9c1c1ea14/medium.jpg",
                        "https://pa.cdn.appfolio.com/krkmanagement/images/89ad8771-a5a3-437d-8008-3d1f7ce61e8b/medium.jpg",
                        "https://pa.cdn.appfolio.com/krkmanagement/images/aaa42e35-2772-480b-a0b3-b74ff522ecc4/medium.jpg"
                        ]
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

## Confirm [/appointments/{id}/confirm]
+ Parameters
    id (string) ... ID of the appointment
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

## Visit [/appointments/{id}/confirm]
+ Parameters
    id (string) ... ID of the appointment
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
    [Confirm][]
