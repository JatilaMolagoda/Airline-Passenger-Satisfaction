/*After creating schema and importing data table to workbench, Let's look at our table*/
SELECT *
From airline_passenger_satisfaction;

/*Finding total traveled distance by airline*/

SELECT customertype, sum(flightdistance) AS Flight_Distance
FROM airline_passenger_satisfaction
group by CustomerType;

/*Passenger Count*/

SELECT count(id)
From airline_passenger_satisfaction;

/*Passenger count acoording to Class*/

SELECT class, count(class) AS Total
FROM airline_passenger_satisfaction
GROUP BY class;

/*Finding averages*/

select avg(departuredelay), avg(ArrivalDelay), Sum(FlightDistance)
From airline_passenger_satisfaction;

/*Satisfaction Count*/

select Satisfaction, COUNT(Satisfaction) AS num_of_reviews
from airline_passenger_satisfaction
Group by Satisfaction;

/*Customer profile for returning passenger*/

select Satisfaction, COUNT(Satisfaction) AS num_of_reviews, CustomerType, TypeofTravel
from airline_passenger_satisfaction
Group by Satisfaction, CustomerType, TypeofTravel;

SELECT gender, agegroup, typeoftravel, class, satisfaction,count(CustomerType)
From airline_passenger_satisfaction
WHERE CustomerType = 'returning'
group by gender, agegroup, typeoftravel, class, satisfaction;

/*Finding which factors contribute to customer satisfaction the most*/

SELECT 
avg(departureandarrivaltimeconvenience) AS Time_Convenieence,
avg(EaseofOnlineBooking) AS Ease_of_Online_Booking,
avg(OnlineBoarding) AS Online_boarding,
avg(GateLocation) AS Gate_Location,
avg(SeatComfort) AS Seat_comfort,
avg(LegRoomService) AS Leg_room_service,
avg(Cleanliness) AS Cleanliness,
avg(FoodandDrink) AS Food_and_Drink,
avg(BaggageHandling) AS Baggage_Handling

FROM airline_passenger_satisfaction
WHERE Satisfaction = 'satisfied';











