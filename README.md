# Tea Subscription

This is a 6-8 hour take home exercise to practice a job interview scenario.
I have been instructed to make RESTful API routes for the following requirements.
- Create a customer tea subscription.
- Cancel a customer tea subscription.
- Show all tea subscription for a given customer, active or canceled.

## Project Setup for MVP

The following is my to-do list for this project and how I have approached completing this take home assignment.

[x] Write initial overview gameplan for project
[x] Set up repository and begin documentation / project board
[ ] Install necessary gems, create placeholder files for anticipated test subjects
[ ] Design database and generate tables with relationships, factories.
[ ] Write test for necessary requests and models.
[ ] Build necessary routes and controller(s) per spec.

## Additional stretches

Upon completion of the strictly necessary feature defined in the take home, the following features could be added / addressed.

[ ] Address sad path and error handling, look for opportunities to refactor.
[ ] Ensure high % code coverage via SimpleCov, establish a CI / CD pipeline with RuboCop linter.
[ ] Implement the `Spoontacular API` to include tea information with subscriptions.
[ ] Create CRUD functionality in endpoints for customers and subscriptions.
[ ] Create an endpoint to return the sum price of a customer's current subscriptions.

## RESTful API Endpoints

<details close>

### Create a CustomerSubscription

```http
POST /api/v1/customers/:customer_id/subscriptions/
```
<details close>
<summary> Details </summary>

Parameters: <br>
```
CONTENT_TYPE=application/json
```

| Code | Description |
| :--- | :--- |
| 201 | `CREATED` |

Example Value:

```json
{
    "data": {
        "id": "1",
        "type": "customer_subscription",
        "attributes": {
            "customer_id": "1",
            "subscription_id": "1"
        }
    }
}
```

</details>
</details>

## Setup and Installation

From your terminal, run:
- ```git clone https://github.com/JustJakeSeymour/tea-subscription-take-home```
- ```cd tea-subscription-take-home```
- ```bundle install```
- ```rails db:create```
- To run the tests: ```bundle exec rspec```