# Group Authentication

## Register [/v1/auth/register]
### Register Renter or Manager [POST]
+ Request (application/json)

            {
                'type':'renter',
                'firstname':'michael',
                'lastname': 'frank',
                'username': 'Chetmanley',
                'password': 'qwerty123'
            }

+ Response 201 (application/json)

            {
                'token':
                'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhIjoxLCJiIjoyfQ.qRrTAKuNhMWGekWwDoR7hylsgQq5VRKEpk5UvgguWaQ'
            }


## Validate [/v1/auth/validate]
### Authenticate [POST]
Validate a manager or renter
+ Request (application/json)

            {
                'type':'renter',
                'username': 'Chetmanley',
                'password': 'qwerty123'
            }

+ Response 201 (application/json)

            {
                'token':
                'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhIjoxLCJiIjoyfQ.qRrTAKuNhMWGekWwDoR7hylsgQq5VRKEpk5UvgguWaQ'
            }

+ Response 401 (application/json)

            {
              'error_message': 'invalid credential'
            }

## Facebook [/v1/auth/facebook]
### Facebook Login [POST]
+ Request (application/json)

        {
            'clientId': 'SYgWfyVDcpmSDN2W',
            'redirectUri': 'http://www.redirectdestination.com',
            'code': 'pmguG3D7nkNgdT7t'
        }

+ Response 201 (application/json)

        {
            'token':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhIjoxLCJiIjoyfQ.qRrTAKuNhMWGekWwDoR7hylsgQq5VRKEpk5UvgguWaQ'
        }

+ Response 403 (application/json)

        {
            'error_message': 'Message describing the error',
            'error_type': 'OAuthException'
        }

## Linkedin [/v1/auth/linkedin]
### Linkedin Login [POST]
+ Request (application/json)

        {
            'clientId': 'SYgWfyVDcpmSDN2W',
            'redirectUri': 'http://www.redirectdestination.com',
            'code': 'pmguG3D7nkNgdT7t'
        }

+ Response 201 (application/json)

        {
            'token':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhIjoxLCJiIjoyfQ.qRrTAKuNhMWGekWwDoR7hylsgQq5VRKEpk5UvgguWaQ'
        }

+ Response 403 (application/json)

        {
            'error_message': 'Message describing the error',
            'error_type': 'OAuthException'
        }
