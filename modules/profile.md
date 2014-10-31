# Group Profile
## Profile [/v1/profile/]
### Get Profile [GET]
+ Response 200 (application/json)

        {
            "profile": {
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

### Save Profile [PUT]
+ Request (application/json)

        {
            'password': 'qwerty43',
            'first_name': 'John',
            'last_name': 'Smith',
            'email': 'johnsmith@email.com',
            'credit_score': '3',
            'monthly_income': '40000',
            'phone': {
                'npa': '206',
                'nxx': '111',
                'xxxx': '2222'
            },
            'pets': {
                'dogs': '',
                'cats': ''
            },
            'co_tenants': 3,
            'target_move_date': '05/11/2014',
            'photo': '',
            'bio': 'I have a beard'
        }

+ Response 201 (application/json)

        {
            'profile_id': 'ecc55hpp275pc3sm'
        }
