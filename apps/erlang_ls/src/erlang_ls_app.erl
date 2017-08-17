%%%-------------------------------------------------------------------
%% @doc erlang_ls public API
%% @end
%%%-------------------------------------------------------------------

-module(erlang_ls_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

%%====================================================================
%% API
%%====================================================================

start(_StartType, _StartArgs) ->
    erlang_ls_sup:start_link().

%%--------------------------------------------------------------------
stop(_State) ->
    ok.

%%====================================================================
%% Internal functions
%%====================================================================