# Group Health
## Health Check [/v1/system/health/check/]
### Get health check [GET]
+ Response 200

    "superman wears chuck norris underwear"

## Health Details [/v1/system/health/details/]
### Get health details [GET]
+ Response 200 (application/json)

    {
        "database": true,
        "elasticsearch": true
    }
