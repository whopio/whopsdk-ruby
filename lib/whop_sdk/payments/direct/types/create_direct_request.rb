# frozen_string_literal: true

module Whop_sdk
  module Payments
    module Direct
      module Types
        class CreateDirectRequest < Internal::Types::Model
          field :account_id, -> { String }, optional: false, nullable: false

          field :auto_capture_after_minutes, -> { Integer }, optional: true, nullable: false

          field :billing_details, -> { Whop_sdk::Payments::Direct::Types::CreateDirectRequestBillingDetails }, optional: false, nullable: false

          field :capture, -> { Internal::Types::Boolean }, optional: true, nullable: false

          field :member_id, -> { String }, optional: true, nullable: false

          field :metadata, -> { Internal::Types::Hash[String, String] }, optional: true, nullable: false

          field :off_session, -> { Internal::Types::Boolean }, optional: true, nullable: false

          field :payment_method, -> { Whop_sdk::Payments::Direct::Types::CreateDirectRequestPaymentMethod }, optional: false, nullable: false

          field :plan, -> { Whop_sdk::Payments::Direct::Types::CreateDirectRequestPlan }, optional: true, nullable: false

          field :plan_id, -> { String }, optional: true, nullable: false

          field :promo_code_id, -> { String }, optional: true, nullable: false

          field :return_url, -> { String }, optional: true, nullable: false

          field :setup_future_usage, -> { Whop_sdk::Payments::Direct::Types::CreateDirectRequestSetupFutureUsage }, optional: true, nullable: false

          field :statement_descriptor, -> { String }, optional: true, nullable: false
        end
      end
    end
  end
end
