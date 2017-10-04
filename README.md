# http-server

# to start the server run 

ruby server.rb

# To test the endpoint with header type application/json:

curl -H 'Accept: application/json' http://localhost:4567/

# This is an empty accept header

curl -H 'Accept:' http://localhost:4567/

# Test using rspec by doing

cd spec && rspec .
