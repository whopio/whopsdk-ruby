# frozen_string_literal: true

module Whop_sdk
  module Payments
    module Direct
      module Types
        # The card to charge. Present when `type` is `card`.
        class CreateDirectRequestPaymentMethodCard < Internal::Types::Model
          field :details, -> { Whop_sdk::Payments::Direct::Types::CreateDirectRequestPaymentMethodCardDetails }, optional: false, nullable: false

          field :network_transaction_id, -> { String }, optional: true, nullable: false
        end
      end
    end
  end
end
