defmodule AshPostgres.EctoCompatibilityTest do
  use AshPostgres.RepoCase, async: false
  require Ash.Query

  test "call Ecto.Repo.insert! via Ash Repo" do
    org =
      %AshPostgres.Test.Organization{name: "The Org"}
      |> AshPostgres.TestRepo.insert!()

    assert org.name == "The Org"
  end
end
