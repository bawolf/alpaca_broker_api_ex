# NOTE: This file is auto generated by OpenAPI Generator 7.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule BrokerAPI.Model.AccountConfigurations do
  @moduledoc """
  Represents additional configuration settings for an account
  """

  @derive Jason.Encoder
  defstruct [
    :dtbp_check,
    :trade_confirm_email,
    :suspend_trade,
    :no_shorting,
    :fractional_trading,
    :max_margin_multiplier,
    :pdt_check
  ]

  @type t :: %__MODULE__{
    :dtbp_check => String.t,
    :trade_confirm_email => String.t,
    :suspend_trade => boolean(),
    :no_shorting => boolean(),
    :fractional_trading => boolean(),
    :max_margin_multiplier => String.t,
    :pdt_check => String.t
  }

  def decode(value) do
    value
  end
end
