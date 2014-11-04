# Group Appointments

## Appointment [/v1/appointments/{appointment_id}]
+ Parameters
    + appointment_id (required, string, `14`) ... ID of the appointment

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

### Get Appointment [GET]
+ Response 200
    [Appointment][]

### Cancel Appointment [DELETE]
+ Response 204


## Appointments Collection [/v1/appointments{?status,start,end,listing_id}]
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

### Get Appointments [GET]
+ Parameters
    + status (optional, string, `requested`) .. Status identifier. Valid values are 'requested', 'confirmed', 'rejected, 'canceled', or 'visited'. Only appointments with the provided state are returned./
    + start (optional, string, `2014-10-13T10:00-07:00`) ... ISO timestamp. Only appointments that start on or after this date are returned.
    + end (optional, string, `2014-10-13T10:00-07:00`) ... ISO timestamp. Only appointments that end on or before this date are returned.
    + listing_id (optional, string, `q4ru3tc4g26qxc7srvj4xcbsr5qtc7ud4ma9uzh8`) ... Unique listing ID

+ Response 200
    [Appointments Collection][]

### Request Appointment [POST]
+ Request (application/json)

            {
                 "listing_id": "9420d8f9202469a79df197455e9a595ff106f1cc",
                 "requested_times": [
                      {
                           "start_time": "2014-10-13T10:00-07:00",
                           "end_time": "2014-10-13T11:00-07:00"
                      },
                      {
                           "start_time": "2014-10-13T11:00-07:00",
                           "end_time": "2014-10-13T12:00-07:00"
                      }
                 ],
                 "type": "tour",
                 "renter_notes": "Some renter written writings" (optional)
            }

+ Response 201 (application/json)
    [Appointment][]

## Confirm [/v1/appointments/{appointment_id}/confirm]
+ Parameters
    + appointment_id (required, number, `14`) ... ID of the appointment

+ Model
    + Body

            {
                'appointment_status': 'accepted'
            }


### Confirm Appointment [POST]
+ Response 201 (application/json)
    [Confirm][]

### Cancel Appointment Confirmation [DELETE]
+ Response 204 (application/json)

### Get Appointment Confirmation [GET]
+ Response 200
    [Confirm][]


## Visit [/v1/appointments/{appointment_id}/visit]
+ Parameters
    + appointment_id (required, number, `14`) ... ID of the appointment

+ Model
    + Body
            
            {
                'renter_visited': True
            }

### Set Appointment Visited Status [PUT]
+ Response 200
    [Visit][] 

### Get Appointment Visited Status [GET]
+ Response 200
    [Visit][]
