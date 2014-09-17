# Group Static

## Sitemap [/v1/sitemap/]

+ Model (application/json)

	+ Body

		{
		  "routes": [
		    {
		      "methods": [
		        "HEAD",
		        "OPTIONS",
		        "GET"
		      ],
		      "name": "/v1/system/health/details"
		    },
		    {
		      "methods": [
		        "HEAD",
		        "OPTIONS",
		        "GET"
		      ],
		      "name": "/v1/system/health/check"
		    },
		    {
		      "methods": [
		        "HEAD",
		        "OPTIONS",
		        "GET"
		      ],
		      "name": "/v1/calendar/request/"
		    },
		    {
		      "methods": [
		        "POST",
		        "OPTIONS"
		      ],
		      "name": "/v1/calendar/request/"
		    },
		    {
		      "methods": [
		        "HEAD",
		        "OPTIONS",
		        "GET"
		      ],
		      "name": "/v1/manager/preferences/"
		    },
		    {
		      "methods": [
		        "POST",
		        "OPTIONS"
		      ],
		      "name": "/v1/manager/preferences/"
		    },
		    {
		      "methods": [
		        "HEAD",
		        "OPTIONS",
		        "GET"
		      ],
		      "name": "/v1/manager/openhouse/"
		    },
		    {
		      "methods": [
		        "POST",
		        "OPTIONS"
		      ],
		      "name": "/v1/manager/openhouse/"
		    },
		    {
		      "methods": [
		        "HEAD",
		        "OPTIONS",
		        "GET"
		      ],
		      "name": "/v1/manager/calendar/"
		    },
		    {
		      "methods": [
		        "HEAD",
		        "OPTIONS",
		        "GET"
		      ],
		      "name": "/v1/manager/listing/"
		    },
		    {
		      "methods": [
		        "POST",
		        "OPTIONS"
		      ],
		      "name": "/v1/manager/listing/"
		    },
		    {
		      "methods": [
		        "HEAD",
		        "OPTIONS",
		        "GET"
		      ],
		      "name": "/v1/manager/hours/"
		    },
		    {
		      "methods": [
		        "POST",
		        "OPTIONS"
		      ],
		      "name": "/v1/manager/hours/"
		    },
		    {
		      "methods": [
		        "HEAD",
		        "OPTIONS",
		        "GET"
		      ],
		      "name": "/v1/manager/info/"
		    },
		    {
		      "methods": [
		        "POST",
		        "OPTIONS"
		      ],
		      "name": "/v1/manager/info/"
		    },
		    {
		      "methods": [
		        "HEAD",
		        "OPTIONS",
		        "GET"
		      ],
		      "name": "/v1/search/suggest/"
		    },
		    {
		      "methods": [
		        "POST",
		        "OPTIONS"
		      ],
		      "name": "/v1/auth/register"
		    },
		    {
		      "methods": [
		        "POST",
		        "OPTIONS"
		      ],
		      "name": "/v1/auth/validate"
		    },
		    {
		      "methods": [
		        "POST",
		        "OPTIONS"
		      ],
		      "name": "/v1/auth/facebook"
		    },
		    {
		      "methods": [
		        "POST",
		        "OPTIONS"
		      ],
		      "name": "/v1/auth/linkedin"
		    },
		    {
		      "methods": [
		        "HEAD",
		        "OPTIONS",
		        "GET"
		      ],
		      "name": "/v1/manager/"
		    },
		    {
		      "methods": [
		        "HEAD",
		        "OPTIONS",
		        "GET"
		      ],
		      "name": "/v1/profile/"
		    },
		    {
		      "methods": [
		        "PUT",
		        "OPTIONS"
		      ],
		      "name": "/v1/profile/"
		    },
		    {
		      "methods": [
		        "HEAD",
		        "POST",
		        "OPTIONS",
		        "GET"
		      ],
		      "name": "/v1/renters"
		    },
		    {
		      "methods": [
		        "HEAD",
		        "OPTIONS",
		        "GET"
		      ],
		      "name": "/v1/sitemap"
		    },
		    {
		      "methods": [
		        "POST",
		        "OPTIONS"
		      ],
		      "name": "/v1/search/"
		    },
		    {
		      "methods": [
		        "HEAD",
		        "OPTIONS",
		        "GET"
		      ],
		      "name": "/"
		    },
		    {
		      "methods": [
		        "POST",
		        "OPTIONS"
		      ],
		      "name": "/v1/calendar/request/<request_id>/status"
		    },
		    {
		      "methods": [
		        "HEAD",
		        "OPTIONS",
		        "GET"
		      ],
		      "name": "/v1/manager/openhouse/<open_house_id>"
		    },
		    {
		      "methods": [
		        "HEAD",
		        "OPTIONS",
		        "GET"
		      ],
		      "name": "/v1/manager/listing/<listing_id>"
		    },
		    {
		      "methods": [
		        "PUT",
		        "OPTIONS"
		      ],
		      "name": "/v1/manager/listing/<listing_id>"
		    },
		    {
		      "methods": [
		        "HEAD",
		        "OPTIONS",
		        "GET"
		      ],
		      "name": "/v1/listing/<listing_id>/openhouse/"
		    },
		    {
		      "methods": [
		        "HEAD",
		        "OPTIONS",
		        "GET"
		      ],
		      "name": "/v1/listing/<listing_id>/calendar/"
		    },
		    {
		      "methods": [
		        "HEAD",
		        "OPTIONS",
		        "GET"
		      ],
		      "name": "/v1/listing/<listing_id>"
		    },
		    {
		      "methods": [
		        "HEAD",
		        "OPTIONS",
		        "GET"
		      ],
		      "name": "/static/<path:filename>"
		    }
		  ]
		}

### Get sitemap [GET]

+ Response 200

	[Sitemap][]
