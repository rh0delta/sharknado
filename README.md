# Shark App

This application has been created to fetch and parse the html content of a webpage and store the content in the database.

## Endpoints

### GET /pages

#### Sample Request
`curl -X GET http://<api base url (for development: localhost:3000)>/pages`

Returns all pages currently indexed in the database.

### POST /pages/parse

| Param  | Value Type     | Example      | Description |
|--------|----------------|--------------|-------------|
| `url` | `string` | `http://example.com` | Url to parse and retrieve html content from. |

#### Sample Request
`curl -v -H "Accept:application/json" -H "Content-Type: application/json" -X POST -d '{"page":{"url":"<url to be parsed>"}}' --silent http://<api base url (for development: localhost:3000)>/pages/parse`

## Specifications

* REST API
* Ruby on Rails 5.1.4
* PostgreSQL Database
* Ruby 2.4.1
* Nokogiri (web scraper)
* JSON datastore
