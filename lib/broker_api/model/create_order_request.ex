# NOTE: This file is auto generated by OpenAPI Generator 7.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule BrokerAPI.Model.CreateOrderRequest do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :symbol,
    :qty,
    :notional,
    :side,
    :type,
    :time_in_force,
    :limit_price,
    :stop_price,
    :trail_price,
    :trail_percent,
    :extended_hours,
    :client_order_id,
    :order_class,
    :take_profit,
    :stop_loss,
    :commission
  ]

  @type t :: %__MODULE__{
    :symbol => String.t,
    :qty => String.t | nil,
    :notional => String.t | nil,
    :side => BrokerAPI.Model.OrderSide.t,
    :type => BrokerAPI.Model.OrderType.t,
    :time_in_force => BrokerAPI.Model.TimeInForce.t,
    :limit_price => String.t | nil,
    :stop_price => String.t | nil,
    :trail_price => String.t | nil,
    :trail_percent => String.t | nil,
    :extended_hours => boolean() | nil,
    :client_order_id => String.t | nil,
    :order_class => BrokerAPI.Model.OrderClass.t | nil,
    :take_profit => BrokerAPI.Model.CreateOrderRequestTakeProfit.t | nil,
    :stop_loss => BrokerAPI.Model.CreateOrderRequestStopLoss.t | nil,
    :commission => String.t | nil
  }

  alias BrokerAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:side, :struct, BrokerAPI.Model.OrderSide)
     |> Deserializer.deserialize(:type, :struct, BrokerAPI.Model.OrderType)
     |> Deserializer.deserialize(:time_in_force, :struct, BrokerAPI.Model.TimeInForce)
     |> Deserializer.deserialize(:order_class, :struct, BrokerAPI.Model.OrderClass)
     |> Deserializer.deserialize(:take_profit, :struct, BrokerAPI.Model.CreateOrderRequestTakeProfit)
     |> Deserializer.deserialize(:stop_loss, :struct, BrokerAPI.Model.CreateOrderRequestStopLoss)
  end
end

