# NOTE: This file is auto generated by OpenAPI Generator 7.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule BrokerAPI.Model.TaxIdType do
  @moduledoc """
  An Enum of the various kinds of Tax ID formats Alpaca supports.  Possible Values are:   - **USA_SSN** USA Social Security Number  - **ARG_AR_CUIT** Argentina CUIT  - **AUS_TFN** Australian Tax File Number  - **AUS_ABN** Australian Business Number  - **BOL_NIT** Bolivia NIT  - **BRA_CPF** Brazil CPF  - **CHL_RUT** Chile RUT  - **COL_NIT** Colombia NIT  - **CRI_NITE** Costa Rica NITE  - **DEU_TAX_ID** Germany Tax ID (Identifikationsnummer)  - **DOM_RNC** Dominican Republic RNC  - **ECU_RUC** Ecuador RUC  - **FRA_SPI** France SPI (Reference Tax Number)  - **GBR_UTR** UK UTR (Unique Taxpayer Reference)  - **GBR_NINO** UK NINO (National Insurance Number)  - **GTM_NIT** Guatemala NIT  - **HND_RTN** Honduras RTN  - **HUN_TIN** Hungary TIN Number  - **IDN_KTP** Indonesia KTP  - **IND_PAN** India PAN Number  - **ISR_TAX_ID** Israel Tax ID (Teudat Zehut)  - **ITA_TAX_ID** Italy Tax ID (Codice Fiscale)  - **JPN_TAX_ID** Japan Tax ID (Koijin Bango)  - **MEX_RFC** Mexico RFC  - **NIC_RUC** Nicaragua RUC  - **NLD_TIN** Netherlands TIN Number  - **PAN_RUC** Panama RUC  - **PER_RUC** Peru RUC  - **PRY_RUC** Paraguay RUC  - **SGP_NRIC** Singapore NRIC  - **SGP_FIN** Singapore FIN  - **SGP_ASGD** Singapore ASGD  - **SGP_ITR** Singapore ITR  - **SLV_NIT** El Salvador NIT  - **SWE_TAX_ID** Sweden Tax ID (Personnummer)  - **URY_RUT** Uruguay RUT  - **VEN_RIF** Venezuela RIF  - **NOT_SPECIFIED** Other Tax IDs
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

