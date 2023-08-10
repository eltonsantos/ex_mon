defmodule ExMon.Game.Status do
  def print_round_message(%{status: :started} = info) do
    IO.puts("\n\e[33m ====== The game is started! ====== \e[0m\n")
    IO.inspect(info)
    IO.puts("-------------------------------")
  end

  def print_round_message(%{status: :continue, turn: player} = info) do
    IO.puts("\n\e[34m ====== It's #{player} turn. ====== \e[0m\n")
    IO.inspect(info)
    IO.puts("-------------------------------")
  end

  def print_round_message(%{status: :game_over} = info) do
    IO.puts("\n\e[36m ====== The game is over. ====== \e[0m\n")
    IO.inspect(info)
    IO.puts("-------------------------------")
  end

  def print_wrong_move_message(move) do
    IO.puts("\n\e[41m ====== Invalid move: #{move}. ====== \e[0m\n")
  end

  def print_move_message(:computer, :attack, damage) do
    IO.puts(
      "\n ====== The player attacked the computer dealing \e[31m#{damage} damage\e[0m. ====== \n"
    )
  end

  def print_move_message(:player, :attack, damage) do
    IO.puts(
      "\n ====== The computer attacked the player dealing \e[31m#{damage} damage\e[0m. ====== \n"
    )
  end

  def print_move_message(player, :heal, life) do
    IO.puts("\n ====== The #{player} healled itself to \e[32m#{life} life points\e[0m. ====== \n")
  end
end
