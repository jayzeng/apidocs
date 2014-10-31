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
+ Parameters
    + community_id (required, string, `gl9avl5OV0EzgdG1`) ... ID of the community of interest

+ Model (application/json)
    + Body
            
            {
                'community': {}
            }


### Retrieve a single community [GET]
+ Response 200 (application/json)
    
    [Community Information][]


## Community Photo [/v1/community/photo]
### Upload Photo [POST]
+ Request (multipart/form-data; boundary=---BOUNDARY)

            -----BOUNDARY
            Content-Disposition: form-data; name="image[file]"; filename="image.jpg"
            Content-Type: image/jpeg
            Content-Transfer-Encoding: base64
   
            /9j/4AAQSkZJRgABAQEAYABgAAD/2wBDAAgGBgcGBQgHBwcJCQgKDBQNDAsLDBkSEw8UHRofHh0a
            HBwgJC4nICIsIxwcKDcpLDAxNDQ0Hyc5PTgyPC4zNDL/2wBDAQkJCQwLDBgNDRgyIRwhMjIyMjIy
            MjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjL/wAARCAABAAEDASIA
            AhEBAxEB/8QAFQABAQAAAAAAAAAAAAAAAAAAAAf/xAAUEAEAAAAAAAAAAAAAAAAAAAAA/8QAFAEB
            AAAAAAAAAAAAAAAAAAAAAP/EABQRAQAAAAAAAAAAAAAAAAAAAAD/2gAMAwEAAhEDEQA/AL+AD//Z
            -----BOUNDARY

+ Response 201 (application/json)
    
            {
                's3key': 'knock/community/d3d3Lmdvb2dsZS5jb20xMC0zMS0xOTkx.jpg',
                's3url':
                'knock.example.picture.s3.amazonaws.com/an84nJd8snd8JJ8.jpg'
            }


## Delete Community Photo [/v1/community/photo/delete]
### Delete Photo [POST]
+ Request (application/json)

            {
                's3key':'knock/community/d3d3Lmdvb2dsZS5jb20xMC0zMS0xOTkx.jpg'
            }

+ Response 201 (application/json)

            {
                'deleted': 'knock/community/d3d3Lmdvb2dsZS5jb20xMC0zMS0xOTkx.jpg' 
            }
