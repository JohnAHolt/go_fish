defmodule GoFish.Game do
  @moduledoc """
  Structure for a game
  """

  defstruct users: %{}, #Example :user1 => %{:cards => [{:suit :hearts, :value 2}]}
            deck: GoFish.Deck.new(),
            status: :not_started

  def init() do
    {:ok, pid_server} = GoFish.Server.start_link(1)
    {:ok, pid_player} = GoFish.Player.start_link(pid_server)

  end

end
