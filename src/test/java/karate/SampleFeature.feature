
Feature: Sample API tests
Background:
* url 'https://reqres.in/api'
* header Accept = 'application/json'

# Simple GET request
Scenario: Test sample api
Given url  'https://reqres.in/api/users?pages=2'
When method GET
Then status 200
And print response


# Simple GET request with background
Scenario: Test sample api
Given path  '/users'
And params page = 2
When method GET
Then status 200	
And print response
And match  response.data[0].first_name != null
And assert response.data.length == 6
