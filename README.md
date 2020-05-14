# README

Required ruby version
- ruby '2.6.3'

Rails API endpoints:

GET api/v1/messages
example response:
{
  "results": [
    {
      "id": 1,
      "body": "this is a post",
      "sender": "ritesh",
      "posted_at": "2020-05-14T15:21:06.000Z"
    }
  ]
}

POST api/v1/messages
options:
  body:text
  sender:string
  posted_at:datetime

example response:
{
  "id": 26,
  "body": "this is post",
  "sender": "robert",
  "posted_at": "2020-03-10T09:09:06.000Z",
  "created_at": "2020-05-14T16:33:28.173Z",
  "updated_at": "2020-05-14T16:33:28.173Z"
}
