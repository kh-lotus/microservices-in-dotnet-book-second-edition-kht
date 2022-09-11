set port=41782
set sport=44343
set user=1
set suser=2
REM get user
curl -L -X GET http://localhost:%port%/shoppingcart/%user%
curl -X GET https://localhost:%sport%/shoppingcart/%suser%
REM post user
curl -L -X post -d "[1,2]" -H "Content-Type: application/json" -H "Accept: application/json" http://localhost:%port%/shoppingcart/%user%/items
curl    -X post -d "[1,2]" -H "Content-Type: application/json" -H "Accept: application/json" https://localhost:%sport%/shoppingcart/%user%/items
REM get interval
curl -L -X get "http://localhost:%port%/events?start=0&end=20"
curl    -X get "https://localhost:%sport%/events?start=0&end=20"