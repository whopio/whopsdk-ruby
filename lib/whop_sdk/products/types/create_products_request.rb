# frozen_string_literal: true

module Whop_sdk
  module Products
    module Types
      class CreateProductsRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false

        field :collect_shipping_address, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :custom_cta, -> { Whop_sdk::Products::Types::CreateProductsRequestCustomCta }, optional: true, nullable: false

        field :custom_cta_url, -> { String }, optional: true, nullable: false

        field :custom_statement_descriptor, -> { String }, optional: true, nullable: false

        field :description, -> { String }, optional: true, nullable: false

        field :global_affiliate_percentage, -> { Integer }, optional: true, nullable: false

        field :global_affiliate_status, -> { Whop_sdk::Products::Types::CreateProductsRequestGlobalAffiliateStatus }, optional: true, nullable: false

        field :headline, -> { String }, optional: true, nullable: false

        field :labels, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :member_affiliate_percentage, -> { Integer }, optional: true, nullable: false

        field :member_affiliate_status, -> { Whop_sdk::Products::Types::CreateProductsRequestMemberAffiliateStatus }, optional: true, nullable: false

        field :metadata, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false

        field :product_tax_code_id, -> { String }, optional: true, nullable: false

        field :redirect_purchase_url, -> { String }, optional: true, nullable: false

        field :route, -> { String }, optional: true, nullable: false

        field :send_welcome_message, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :title, -> { String }, optional: false, nullable: false

        field :visibility, -> { String }, optional: true, nullable: false
      end
    end
  end
end
