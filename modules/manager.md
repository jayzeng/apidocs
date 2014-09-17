# Group Manager
## Manager [/v1/manager/]
### Get this manager [GET]
+ Response 200 (application/json)

        {
            "manager": {
                "created_time": "Wed, 03 Sep 2014 06:41:48 GMT",
                "id": 1,
                "is_active": true,
                "modified_time": "Wed, 03 Sep 2014 06:41:48 GMT",
                "provider": "knock",
                "username": "spock@enterprise.com"
            }
        }

## Manager Info [/v1/manager/info]
### Get this manager's info [GET]
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

### Update this manager's info [POST]
+ Request

    + Body

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
    
    + Body

            {
                "manager_info": 1
            }

## Manager Preferences [/v1/manager/preferences]
### Get this manager's preferences [GET]
+ Response 200 (application/json)

        {
            "manager": {
                "adjacent_showing_interval": "0:15:00",
                "all_showings": false,
                "concurrent_showing_visitors": 3,
                "income_requirement_multiplier": 2,
                "manager_id": 1
            }
        }

### Update this manager's preferences [POST]
+ Request

    + Body

            {
                "all_showings": false,
                "concurrent_showing_visitors": 3,
                "adjacent_showing_interval": 15,
                "income_requirement_multiplier": 1.5
            }
   
+ Response 201 (application/json)
    
    + Body

            {
                "manager_preferences": 1
            }

