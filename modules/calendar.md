# Group Calendar

## Appointment Request [/api/v1/calendar/request/]
### Get all appointment requests [GET]
+ Response 200 (application/json)

        {
            "requests": [
                {
                    "created_time": "Wed, 03 Sep 2014 08:29:23 GMT",
                    "end_time": "Mon, 13 Oct 2014 19:00:00 GMT",
                    "id": 2,
                    "is_active": true,
                    "listing_id": "9420d8f9202469a79df197455e9a595ff106f1cc",
                    "manager_id": 1,
                    "manager_notes": null,
                    "modified_time": "Wed, 03 Sep 2014 08:29:23 GMT",
                    "renter_id": 2,
                    "renter_notes": "Some renter written writings",
                    "renter_visited": false,
                    "start_time": "Mon, 13 Oct 2014 17:00:00 GMT",
                    "status": "pending",
                    "type": "tour"
                },
                {
                    "created_time": "Wed, 03 Sep 2014 08:29:28 GMT",
                    "end_time": "Mon, 13 Oct 2014 19:00:00 GMT",
                    "id": 3,
                    "is_active": true,
                    "listing_id": "9420d8f9202469a79df197455e9a595ff106f1cc",
                    "manager_id": 1,
                    "manager_notes": null,
                    "modified_time": "Wed, 03 Sep 2014 08:29:28 GMT",
                    "renter_id": 2,
                    "renter_notes": "Some renter written writings",
                    "renter_visited": false,
                    "start_time": "Mon, 13 Oct 2014 17:00:00 GMT",
                    "status": "pending",
                    "type": "tour"
                }
            ]
        }

### Create an appointment request [POST]
A request originating from a renter will replace the
given renter_id. The same is true for a request originating
from a manager (manager_id will be replaced).

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

        {
            "created": 4
        }



## Modify appointment request status [/api/v1/calendar/request/<request_id/status]
Endpoints for a manager to accept or reject an appointment request

+ Parameters
    + request_id (required, number, `1`) ... Numeric `id` of the request to accept

### Change the status of an appointment request as a manager [POST]
+ Request (application/json)
    + Header

            Authorization: Bearer <manager-token>
    + Body

            {
                "status": "accepted" | "rejected"
            }

+ Response 201 (application/json)

        {
            "request_id": 4
        }



