defmodule Mix.Tasks.Compile.PutPackages do
  use Mix.Task

  def run(_) do
    packages =
      Application.get_env!(:rclex, :message_packages, ["StdMsgs.Msg.String"])
      |> Enum.join(" ")
    pkgtxt = File.read!("packages.txt")
    unless pkgtxt == packages do
      File.write!("packages.txt", packages)
    end
    :ok
  end
end
