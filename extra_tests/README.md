Postman Project

Collection with the follow validations:

GET /users

1. All users must have a name, username, and email.
2. Their Email must be valid.
3. Their Company catchphrase must have less than 50 characters.


POST /posts

1. Save a new post using a userId got by "GET /users" API.
2. When trying to save a new post without the title, API must return an error.
