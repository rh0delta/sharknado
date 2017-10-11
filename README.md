# Shark App

This application has been created to fetch and parse the html content of a webpage and store the content in the database.

## Endpoints

### GET /pages

Returns all pages currently indexed in the database.

### POST /pages/parse

| Param  | Value Type     | Example      | Description |
|--------|----------------|--------------|-------------|
| `url` | `string` | `http://example.com` | Url to parse and retrieve html content from. |


## Specifications

* REST API
* Ruby on Rails 5.1.4
* PostgreSQL Database
* Ruby 2.4.1
* Nokogiri (web scraper)
* JSON datastore
