# NOTE: This file is auto generated by OpenAPI Generator 7.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule BrokerAPI.Model.PositionClosedResponse do
  @moduledoc """
  Represents the result of asking the api to close a position.  `body` is the Order used to close out the position.
  """

  @derive Jason.Encoder
  defstruct [
    :symbol,
    :status,
    :body
  ]

  @type t :: %__MODULE__{
    :symbol => String.t,
    :status => integer(),
    :body => BrokerAPI.Model.Order.t | nil
  }

  alias BrokerAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:body, :struct, BrokerAPI.Model.Order)
  end
end

