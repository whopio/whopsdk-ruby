# frozen_string_literal: true

module Whop_sdk
  module Payments
    module Types
      class PostShippingAddressChangedResponse < Internal::Types::Model
        extend Whop_sdk::Internal::Types::Union

        member -> { Whop_sdk::Types::ShippingAddressChangedWebhookReply }

        member -> { Whop_sdk::Payments::Types::PostShippingAddressChangedResponseDecline }
      end
    end
  end
end
