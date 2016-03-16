%% Erlang module for typical geometry operations
%% Created: 16/03/2016 by joanlopez
%% License: MIT/X11

-module(geometry).
-author("joanlopez").
-export([tests/0,area/2,area/3,to_radians/1,to_degrees/1]).

tests() ->
	%% Rectangle area
	100 = area(rectangle, 10, 10),

	%% Triangle area
	100.0 = area(triangle, 20, 10),
	6.0 = area(triangle, {3, 4, 5}),
	14529.96758965447 = area(triangle, 123, {150, 231}),

	%% Circle area
	314.1592653589793 = area(circle, 10),

	%% Ellipse area
	47.12388980384689 = area(ellipse, {3, 5}),

	%% Parallelogram area
	200 = area(parallelogram, 20, 10),

	%% Everything works?
	tests_worked.


area(circle, Radius) -> math:pi() * Radius * Radius;
area(triangle, {Edge1, Edge2, Edge3}) -> (Edge1 + Edge2 + Edge3) / 2;
area(ellipse, {Radius1, Radius2}) -> math:pi() * Radius1 * Radius2.

area(rectangle, Width, Height) -> Width * Height;
area(triangle, Angle, {Edge1, Edge2}) -> ((Edge1 * Edge2) / 2) * math:sin(to_radians(Angle));
area(triangle, Base, Height) -> (Base * Height) / 2;
area(parallelogram, Base, Height) -> Base * Height.

to_radians(Degrees) -> Degrees * math:pi() / 180.
to_degrees(Radians) -> Radians * 180 / math:pi().
