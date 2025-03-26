%%% @author TeichmullerHodge <matheussilvatech@gmail.com>
%%% @copyright (C) 2025, TeichmullerHodge
%%% @doc 
%%%
%%% @end
%%% Created : 25 Mar 2025 by TeichmullerHodge <matheussilvatech@gmail.com>
-module(isprimeerl).
-export([is_prime/1, main/0]).

is_prime(2) -> true;
is_prime(3) -> true;
is_prime(N) when N < 2 -> false;
is_prime(N) when N rem 2 =:= 0 -> false;
is_prime(N) -> is_prime_check(N, 3).

is_prime_check(N, D) when D * D > N -> true;
is_prime_check(N, D) when N rem D =:= 0 -> false;
is_prime_check(N, D) -> is_prime_check(N, D + 2).

main() ->
    % example
    io:format("Is 17 prime? ~p~n", [is_prime(17)]),
    io:format("Is 18 prime? ~p~n", [is_prime(18)]).
