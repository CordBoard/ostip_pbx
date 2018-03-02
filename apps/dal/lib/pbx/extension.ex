defmodule PBX.Extension do
    use Ecto.Schema
  
    schema "extensions" do
      field :ext_num, :string
      field :ext_secret, :string
      field :ext_alias, :integer
      # ...
    end
  end