# Challenge 1

## Solution

Added the `find_restaurant_by_id` function in the [mongoflask file](/src/mongoflask.py) and updated the controller for the endpoint `/api/v1/restaurant/<id>` in the [app file](/app.py) to return the `204` code if there is not a restaurant with the associated `id`.