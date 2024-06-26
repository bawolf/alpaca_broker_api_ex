# NOTE: This file is auto generated by OpenAPI Generator 7.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule BrokerAPI.Model.Announcement do
  @moduledoc """
  The announcements endpoint contains public information on previous and upcoming dividends, mergers, spinoffs, and stock splits.  Announcement data is made available through the API as soon as it is ingested by Alpaca, which is typically the following trading day after the declaration date. This provides insight into future account stock position and cash balance changes that will take effect on an announcement’s payable date. Additionally, viewing previous announcement details can improve bookkeeping and reconciling previous account cash and position changes.
  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :corporate_action_id,
    :ca_type,
    :ca_sub_type,
    :initiating_symbol,
    :initiating_original_cusip,
    :target_symbol,
    :target_original_cusip,
    :declaration_date,
    :ex_date,
    :record_date,
    :payable_date,
    :cash,
    :old_rate,
    :new_rate
  ]

  @type t :: %__MODULE__{
    :id => String.t,
    :corporate_action_id => String.t,
    :ca_type => BrokerAPI.Model.AnnouncementCaType.t,
    :ca_sub_type => BrokerAPI.Model.AnnouncementCaSubType.t,
    :initiating_symbol => String.t,
    :initiating_original_cusip => String.t,
    :target_symbol => String.t | nil,
    :target_original_cusip => String.t | nil,
    :declaration_date => String.t,
    :ex_date => String.t | nil,
    :record_date => String.t | nil,
    :payable_date => String.t,
    :cash => String.t | nil,
    :old_rate => String.t | nil,
    :new_rate => String.t | nil
  }

  alias BrokerAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:ca_type, :struct, BrokerAPI.Model.AnnouncementCaType)
     |> Deserializer.deserialize(:ca_sub_type, :struct, BrokerAPI.Model.AnnouncementCaSubType)
  end
end

