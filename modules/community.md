# Group Community
## Community [/v1/community]
### Save Community [POST]
+ Request (application/json)

        {
            'community':'Capital Heights'
        }

+ Response 201 (application/json)

        {
            'community_id':'gl9avl5OV0EzgdG1'
        }


## Community Information [/v1/community/{community_id}]
WORK IN PROGRESS [NEEDS: response data]
+ Parameters
    + community_id (required, string, 'gl9avl5OV0EzgdG1') ... ID of the community of interest

+ Model (application/json)
    + Body

        {
        }

### Retrieve a single community [GET]
+ Response 200 (application/json)
    
    [Community Information][]


## Community Photo [/v1/community/photo]
### Upload Photo [POST]
WORK IN PROGRESS [NEEDS: header, post data, response data] 
+ Request (application/json)

        {
            
        }

+ Response 201 (application/json)
    
        {
            's3key': 'knock/community/d3d3Lmdvb2dsZS5jb20xMC0zMS0xOTkx.jpg',
            's3url':
            'knock.example.picture.s3.amazonaws.com/an84nJd8snd8JJ8.jpg'
        }


## Delete Community Photo [/v1/community/photo/delete]
### Delete Photo [POST]
WORK IN PROGRESS [NEEDS: header] 
+ Request (application/json)

    + Body

            {
                's3key':'knock/community/d3d3Lmdvb2dsZS5jb20xMC0zMS0xOTkx.jpg'
            }

+ Response 201 (application/json)

        {
            'deleted': 'knock/community/d3d3Lmdvb2dsZS5jb20xMC0zMS0xOTkx.jpg' 
        }
