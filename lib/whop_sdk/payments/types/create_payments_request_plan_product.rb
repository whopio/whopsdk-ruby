# frozen_string_literal: true

module Whop_sdk
  module Payments
    module Types
      # Find or create a product by external identifier. Mutually exclusive with product_id.
      class CreatePaymentsRequestPlanProduct < Internal::Types::Model
        field :collect_shipping_address, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :custom_statement_descriptor, -> { String }, optional: true, nullable: false

        field :description, -> { String }, optional: true, nullable: false

        field :external_identifier, -> { String }, optional: false, nullable: false

        field :global_affiliate_percentage, -> { Integer }, optional: true, nullable: false

        field :global_affiliate_status, -> { Whop_sdk::Payments::Types::CreatePaymentsRequestPlanProductGlobalAffiliateStatus }, optional: true, nullable: false

        field :headline, -> { String }, optional: true, nullable: false

        field :product_tax_code_id, -> { String }, optional: true, nullable: false

        field :redirect_purchase_url, -> { String }, optional: true, nullable: false

        field :route, -> { String }, optional: true, nullable: false

        field :title, -> { String }, optional: false, nullable: false

        field :visibility, -> { Whop_sdk::Payments::Types::CreatePaymentsRequestPlanProductVisibility }, optional: true, nullable: false
      end
    end
  end
end
