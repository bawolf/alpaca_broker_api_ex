# NOTE: This file is auto generated by OpenAPI Generator 7.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule BrokerAPI.Model.ActivityItem do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :transaction_time,
    :type,
    :price,
    :qty,
    :side,
    :symbol,
    :leaves_qty,
    :order_id,
    :cum_qty,
    :order_status,
    :date,
    :net_amount,
    :description,
    :status,
    :per_share_amount
  ]

  @type t :: %__MODULE__{
    :transaction_time => DateTime.t | nil,
    :type => String.t | nil,
    :price => String.t | nil,
    :qty => String.t | nil,
    :side => BrokerAPI.Model.OrderSide.t | nil,
    :symbol => String.t | nil,
    :leaves_qty => String.t | nil,
    :order_id => String.t | nil,
    :cum_qty => String.t | nil,
    :order_status => BrokerAPI.Model.OrderStatus.t | nil,
    :date => Date.t | nil,
    :net_amount => String.t | nil,
    :description => String.t | nil,
    :status => String.t | nil,
    :per_share_amount => String.t | nil
  }

  alias BrokerAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:transaction_time, :datetime, nil)
     |> Deserializer.deserialize(:side, :struct, BrokerAPI.Model.OrderSide)
     |> Deserializer.deserialize(:order_status, :struct, BrokerAPI.Model.OrderStatus)
     |> Deserializer.deserialize(:date, :date, nil)
  end
end

