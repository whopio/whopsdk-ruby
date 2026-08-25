# frozen_string_literal: true

module Whop_sdk
  module CheckoutSessions
    module Types
      class CreateCheckoutSessionsRequest < Internal::Types::Model
        field :affiliate_code, -> { String }, optional: true, nullable: false

        field :attribution, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false

        field :checkout_configuration, -> { String }, optional: true, nullable: false

        field :items, -> { Internal::Types::Array[Whop_sdk::CheckoutSessions::Types::CreateCheckoutSessionsRequestItemsItem] }, optional: true, nullable: false

        field :link, -> { String }, optional: true, nullable: false

        field :metadata, -> { Internal::Types::Hash[String, String] }, optional: true, nullable: false

        field :mode, -> { Whop_sdk::CheckoutSessions::Types::CreateCheckoutSessionsRequestMode }, optional: true, nullable: false

        field :origin, -> { String }, optional: true, nullable: false

        field :page_route, -> { String }, optional: true, nullable: false

        field :password, -> { String }, optional: true, nullable: false

        field :promo_code, -> { String }, optional: true, nullable: false

        field :return_url, -> { String }, optional: true, nullable: false

        field :top_up_membership, -> { String }, optional: true, nullable: false

        field :tracking_link_ids_by_account, -> { Internal::Types::Hash[String, String] }, optional: true, nullable: false
      end
    end
  end
end
