# NOTE: This file is auto generated by OpenAPI Generator 7.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule BrokerAPI.Model.JournalStatus do
  @moduledoc """
  Represents the status that a Journal instance can be in.  Current Values:   - pending   - canceled   - executed   - queued   - rejected   - deleted
  """

  @derive Jason.Encoder
  defstruct [
    
  ]

  @type t :: %__MODULE__{
    
  }

  def decode(value) do
    value
  end
end

