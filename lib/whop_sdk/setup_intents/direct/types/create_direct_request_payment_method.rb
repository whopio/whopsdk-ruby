# frozen_string_literal: true

module Whop_sdk
  module SetupIntents
    module Direct
      module Types
        # The payment method to save, as the raw details the caller holds. Raw details are accepted only on the vault
        # host, where Whop's vault tokenizes them in transit; the official SDKs route this operation there. Whop's own
        # clients, which tokenize with the Basis Theory SDK, send the resulting token intent id to the regular host.
        class CreateDirectRequestPaymentMethod < Internal::Types::Model
          field :card, -> { Whop_sdk::SetupIntents::Direct::Types::CreateDirectRequestPaymentMethodCard }, optional: true, nullable: false

          field :type, -> { Whop_sdk::SetupIntents::Direct::Types::CreateDirectRequestPaymentMethodType }, optional: false, nullable: false
        end
      end
    end
  end
end
