# frozen_string_literal: true

module Whop_sdk
  module SetupIntents
    module Types
      # Parameters for CreateSetupIntent
      class CreateSetupIntentsRequest < Internal::Types::Model
        extend Whop_sdk::Internal::Types::Union

        member -> { Whop_sdk::SetupIntents::Types::CreateSetupIntentsRequestConfirmationToken }

        member -> { Whop_sdk::SetupIntents::Types::CreateSetupIntentsRequestPaymentMethodID }
      end
    end
  end
end
