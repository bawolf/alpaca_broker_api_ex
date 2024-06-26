# NOTE: This file is auto generated by OpenAPI Generator 7.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule BrokerAPI.Model.DocumentInner do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :document_id,
    :document_type,
    :document_date
  ]

  @type t :: %__MODULE__{
    :document_id => String.t,
    :document_type => BrokerAPI.Model.DocumentType.t,
    :document_date => DateTime.t
  }

  alias BrokerAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:document_type, :struct, BrokerAPI.Model.DocumentType)
     |> Deserializer.deserialize(:document_date, :datetime, nil)
  end
end

