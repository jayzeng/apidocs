# Group Manager
## Manager [/api/v1/manager/]
### Get this manager [GET]
+ Request
    + Header

            Authorization: Bearer <manager-token>

+ Response 200 (application/json)

        {
            "manager": {
                "created_time": "Wed, 03 Sep 2014 06:41:48 GMT",
                "id": 1,
                "is_active": true,
                "modified_time": "Wed, 03 Sep 2014 06:41:48 GMT",
                "provider": "knock",
                "username": "daniel@knockrentals.com"
            }
        }

## Manager Info [/api/v1/manager/info]
### Get this manager's info [GET]
+ Request
    + Header

            Authorization: Bearer <manager-token>

+ Response 200 (application/json)

        {
            "manager_info": {
                "bio": "Doesn't like turtlenecks",
                "email": "fatisar@gmail.com",
                "first_name": "Daniel",
                "job_title": "Developer",
                "last_name": "Sarfati",
                "manager_id": 1,
                "phone": "210-216-6887",
                "photo": "steelydan.jpeg",
                "verification_method": "text"
            }
        }

### Update this manager's info [POST]
+ Request
    + Header

            Content-Type: application/json
            Authorization: Bearer <manager-token>

    + Body

            {
                "bio": "Doesn't like turtlenecks",
                "email": "fatisar@gmail.com",
                "first_name": "Daniel",
                "job_title": "Developer",
                "last_name": "Sarfati",
                "phone": "210-216-6887",
                "photo": "steelydan.jpeg",
                "verification_method": "text"
            }

+ Response 201 (application/json)
    + Body

            {
                "manager_info": 1
            }

## Manager Preferences [/api/v1/manager/preferences]
### Get this manager's preferences [GET]
+ Request
    + Header

            Authorization: Bearer <manager-token>

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
    + Header

            Content-Type: application/json
            Authorization: Bearer <manager-token>
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

