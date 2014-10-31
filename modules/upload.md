# Group Upload

## Upload Profile [/v1/upload/profile]
### Upload Profile Picture [POST]
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
                'message': 'picture has been uploaded'
            }

+ Response 500 (application/json)

            {
                'error': {
                    'message': 'Failed to upload [picture]',
                    'exception': 'Exception:'
                }
            }
