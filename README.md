#Boris Bikes (without tutorial)

#Bike
- should not be broken after we create it
- should be able to break
- should be able to get fixed

#BikeContainer(module)
- should accept a bike
- should release a bike when it's not broken
- should know when the station is full
- should not accept a bike when the station is full
- should give a list of available bikes

#DockingStation(using the module)
- should allow setting default capacity on initialising

#Garage(using the module)
- Should repair the bike

#Van(using the module)
- Transport the bike