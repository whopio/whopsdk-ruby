# frozen_string_literal: true

module Whop_sdk
  module SetupIntents
    module Direct
      module Types
        # The card to save. Present when `type` is `card`.
        class CreateDirectRequestPaymentMethodCard < Internal::Types::Model
          field :details, -> { Whop_sdk::SetupIntents::Direct::Types::CreateDirectRequestPaymentMethodCardDetails }, optional: false, nullable: false

          field :network_transaction_id, -> { String }, optional: true, nullable: false
        end
      end
    end
  end
end
