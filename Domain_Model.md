Domain Model - Boris Bikes

We are building a system that manages bikes that can be rented by users from docking staitons and returned there at the end of hte rental. The bikes can break while being used, in which case they will not be available for rental after they are returned. There isa garage that can fix broken bikes.A van that is used to move broken bikes from the stations to the garage. It can also be used to take fixed bikes back to the station(s). The van, all station and the garage have fixed capabity, so they cannot take more bikes than they can hold.


Classes
-Bikes
-Users
-Docking Stations
-Rental
-Garage
-Van
-Location

Methods
-Rented
-Returned
-Break
-Used
-Fix
-Move
-Take
-Hold
