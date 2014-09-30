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
                        "listing_id": "054cfc34c7ec452af511cd5e2202c12966fc54a7"
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
                        "listing_id": "054cfc34c7ec452af511cd5e2202c12966fc54a7"
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
                        "listing_id": "054cfc34c7ec452af511cd5e2202c12966fc54a7"
                    }
                ]
            }

### List all Appointments [GET]
+ Parameters
    + status (optional, string) .. Status identifier. Valid values are 'requested', 'confirmed', 'rejected, 'canceled', or 'visited'. Only appointments with the provided state are returned./
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
            "renter_notes": "Some renter written writings" (optional),
            "status": "confirmed"
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
