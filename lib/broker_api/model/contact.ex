# NOTE: This file is auto generated by OpenAPI Generator 7.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule BrokerAPI.Model.Contact do
  @moduledoc """
  Contact is the model for the account owner contact information. 
  """

  @derive Jason.Encoder
  defstruct [
    :email_address,
    :phone_number,
    :street_address,
    :city,
    :state,
    :postal_code
  ]

  @type t :: %__MODULE__{
    :email_address => String.t | nil,
    :phone_number => String.t | nil,
    :street_address => [String.t] | nil,
    :city => String.t | nil,
    :state => String.t | nil,
    :postal_code => String.t | nil
  }

  def decode(value) do
    value
  end
end
