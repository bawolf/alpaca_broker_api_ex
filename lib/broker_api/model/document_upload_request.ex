# NOTE: This file is auto generated by OpenAPI Generator 7.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule BrokerAPI.Model.DocumentUploadRequest do
  @moduledoc """
  If an account has documents after the submission, it has the Document model in exchange with DocumentUploadRequest. 
  """

  @derive Jason.Encoder
  defstruct [
    :document_type,
    :document_sub_type,
    :content,
    :mime_type
  ]

  @type t :: %__MODULE__{
    :document_type => BrokerAPI.Model.DocumentType.t,
    :document_sub_type => String.t | nil,
    :content => String.t,
    :mime_type => String.t
  }

  alias BrokerAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:document_type, :struct, BrokerAPI.Model.DocumentType)
  end
end

