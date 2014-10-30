# Group Location
## Timezone [/v1/location/timezone/]
### Get Timezone [GET]
+ Parameters
    + lat (required, number, '47.45') ... Lattitude of location of interest
    + lng (required, number, '-122.30') ... Longitude of location of interest

+ Response 200 (application/json)

        {
            'timezone': {
                'dstOffset': 3600,
                'rawOffset': -28800,
                'status': 'OK',
                'timeZoneId': 'America/Los_Angeles',
                'timeZoneName': 'Pacific Daylight Time'
            }
        }

