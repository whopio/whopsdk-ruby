# frozen_string_literal: true

module Whop_sdk
  module Accounts
    module Types
      module FormCompanyAccountsRequestEntitySuffix
        extend Whop_sdk::Internal::Types::Enum

        LLC = "LLC"
        LLC_DOTTED = "L.L.C"
        LLC_DOTTED_TRAILING_PERIOD = "L.L.C."
        LIMITED_LIABILITY_COMPANY = "Limited Liability Company"
        INC = "Inc"
        INC_TRAILING_PERIOD = "Inc."
        INCORPORATED = "Incorporated"
        CORP = "Corp."
        CORPORATION = "Corporation"
        C_CORP = "C Corp"
        C_CORPORATION = "C Corporation"
        C_CORP_ONE_WORD = "CCorp"
        COMPANY = "Company"
      end
    end
  end
end
