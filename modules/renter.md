# Group Renters

## Renters [/v1/renters/]
### Get Renters [GET]
+ Response 200

            {
              "result": [
                {
                  "created_time": "2014-09-04T16:51:02.715980+00:00",
                  "id": 1,
                  "is_active": true,
                  "modified_time": "2014-09-04T16:51:02.715980+00:00",
                  "provider": "knock",
                  "social_provider_id": null,
                  "username": "spock@enterprise.com"
                },
                {
                  "created_time": "2014-09-04T17:02:25.531546+00:00",
                  "id": 2,
                  "is_active": true,
                  "modified_time": "2014-09-04T17:02:25.531546+00:00",
                  "provider": "knock",
                  "social_provider_id": null,
                  "username": "kirk@enterprise.com"
                },
                {
                  "created_time": "2014-09-04T18:06:45.016349+00:00",
                  "id": 3,
                  "is_active": true,
                  "modified_time": "2014-09-04T18:06:45.016349+00:00",
                  "provider": "knock",
                  "social_provider_id": null,
                  "username": "mccoy@enterprise.com"
                },
                {
                  "created_time": "2014-09-06T21:06:11.369480+00:00",
                  "id": 4,
                  "is_active": true,
                  "modified_time": "2014-09-06T21:06:11.369480+00:00",
                  "provider": "linkedin",
                  "social_provider_id": "F89ce7D3CC",
                  "username": "uhura@enterprise.com"
                },
                {
                  "created_time": "2014-09-06T21:27:09.338640+00:00",
                  "id": 5,
                  "is_active": true,
                  "modified_time": "2014-09-06T21:27:09.338640+00:00",
                  "provider": "facebook",
                  "social_provider_id": "123412348094234",
                  "username": "scott@enterprise.com"
                },
                {
                  "created_time": "2014-09-12T01:09:51.753075+00:00",
                  "id": 6,
                  "is_active": true,
                  "modified_time": "2014-09-12T01:09:51.753075+00:00",
                  "provider": "facebook",
                  "social_provider_id": "9824234091234234",
                  "username": "sulu@enterprise.com"
                },
                {
                  "created_time": "2014-09-16T17:29:54.926851+00:00",
                  "id": 7,
                  "is_active": true,
                  "modified_time": "2014-09-16T17:29:54.926851+00:00",
                  "provider": "knock",
                  "social_provider_id": null,
                  "username": "chekov@enterprise.com"
                }
              ]
            }


## Renter [/v1/renter/{renter_id}]
### Get Renter [GET]
+ Parameters
    + renter_id (required, number, `7`) ... Unique renter ID

+ Response 200 (application/json)
    
            {
                'renter': {
                    "created_time": "2014-09-16T17:29:54.926851+00:00",
                    "id": 7,
                    "is_active": true,
                    "modified_time": "2014-09-16T17:29:54.926851+00:00",
                    "provider": "knock",
                    "social_provider_id": null,
                    "username": "chekov@enterprise.com"
                } 
            }


## Renter Info [/v1/renter/{renter_id}/info]
### Get Renter Info
+ Parameters
    + renter_id (required, number, `8`) ... Unique renter ID

+ Response 200 (application/json)
            
            {
                 "renter_info": {
                     "bio": "Explore strange new worlds",
                     "co_tenants": 4,
                     "email": "kirk@enterprise.com",
                     "first_name": "Tiberius",
                     "income": "100000",
                     "job_title": "Captain",
                     "last_name": "Kirk",
                     "phone": "(206)765-4321",
                     "photo": null,
                     "renter_id": 8,
                     "verification_method": null
                 }            
            }

