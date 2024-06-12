# NOTE: This file is auto generated by OpenAPI Generator 7.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule BrokerAPI.Model.CreateOrderRequestTakeProfit do
  @moduledoc """
  Takes in a string/number value for limit_price
  """

  @derive Jason.Encoder
  defstruct [
    :limit_price
  ]

  @type t :: %__MODULE__{
    :limit_price => String.t | nil
  }

  def decode(value) do
    value
  end
end

