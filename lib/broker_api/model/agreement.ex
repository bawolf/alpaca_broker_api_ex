# NOTE: This file is auto generated by OpenAPI Generator 7.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule BrokerAPI.Model.Agreement do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :agreement,
    :signed_at,
    :ip_address,
    :revision
  ]

  @type t :: %__MODULE__{
    :agreement => BrokerAPI.Model.AgreementType.t,
    :signed_at => DateTime.t,
    :ip_address => String.t,
    :revision => String.t | nil
  }

  alias BrokerAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:agreement, :struct, BrokerAPI.Model.AgreementType)
     |> Deserializer.deserialize(:signed_at, :datetime, nil)
  end
end
