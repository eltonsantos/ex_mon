defmodule ExMon.Game.Actions.Attack do
  @move_avg_power 18..25
  @move_rnd_power 10..35

  @spec attack_opponent(any, :move_avg | :move_rnd) :: any
  def attack_opponent(opponent, move) do
    damage = calculate_power(move)
  end

  defp calculate_power(:move_avg), do: Enum.random(@move_avg_power)
  defp calculate_power(:move_rnd), do: Enum.random(@move_rnd_power)
end
