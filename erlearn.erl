%%% @author TeichmullerHodge <matheussilvatech@gmail.com>
%%% @copyright (C) 2025, TeichmullerHodge
%%% @doc 
%%%
%%% @end
%%% Created : 25 Mar 2025 by TeichmullerHodge <matheussilvatech@gmail.com>
-module(erlearn).
-export([is_prime/1, main/0, calculator/3, volume_sphere/1, bhaskara/4]).


%%% Verify if a number is prime.
is_prime(2) -> true;
is_prime(3) -> true;  
is_prime(N) when N < 2 -> false;
is_prime(N) when N rem 2 =:= 0 -> false;
is_prime(N) -> is_prime_check(N, 3).

is_prime_check(N, D) when D * D > N -> true;
is_prime_check(N, D) when N rem D =:= 0 -> false;
is_prime_check(N, D) -> is_prime_check(N, D + 2).


%%% Create a simple calculator program.
calculator('/', A, B) when B =/= 0 -> A / B;
calculator('*', A, B) -> A * B;
calculator('-', A, B) -> A - B;
calculator('+', A, B) -> A + B;
calculator('/', _, 0) -> null;
calculator(_, _, _) -> "Operation does not exists.".


%%% Volume of a sphere
volume_sphere(R) when R < 0 -> 0;
volume_sphere(R) ->
    
    PI = 3.14159265359,
    (4/3) * PI * R*R*R.

%%% Bhaskara formula

bhaskara(true, A, B, C) when B*B - (4 * A * C) >= 0 ->
        Delta = B*B - (4 * A * C),
        
        Divisor = 2 * A,        
        (-B + math:sqrt(Delta)) / Divisor;

bhaskara(false, A, B, C) when B*B - (4 * A * C) >= 0 ->
        Delta = B*B - (4 * A * C),
        Divisor = 2 * A,    
        (-B - math:sqrt(Delta)) / Divisor;

bhaskara(_, A, B, C) when B*B - (4 * A * C) < 0 ->
        "Could not calculate sqrt of negative values.".

main() ->
    % example
    io:format("Is 17 prime? ~p~n", [is_prime(17)]),
    io:format("Is 18 prime? ~p~n", [is_prime(18)]),
    [calculator('+', 20, 30)].
