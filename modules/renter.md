# Group Renters

## Renters [/v1/renters/]

+ model (application/json)

    + Body

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

### Get renters [GET]

+ Response 200

    [Renters][]
