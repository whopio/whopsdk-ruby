# frozen_string_literal: true

module Whop_sdk
  module Types
    # A company is a seller on Whop. Companies own products, manage members, and receive payouts.
    class CompanyListItem < Internal::Types::Model
      field :created_at, -> { String }, optional: false, nullable: false

      field :description, -> { String }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :logo, -> { Whop_sdk::Types::CompanyListItemLogo }, optional: false, nullable: true

      field :member_count, -> { Integer }, optional: false, nullable: false

      field :metadata, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: true

      field :owner_user, -> { Whop_sdk::Types::CompanyListItemOwnerUser }, optional: false, nullable: false

      field :published_reviews_count, -> { Integer }, optional: false, nullable: false

      field :route, -> { String }, optional: false, nullable: false

      field :send_customer_emails, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :target_audience, -> { String }, optional: false, nullable: true

      field :title, -> { String }, optional: false, nullable: false

      field :updated_at, -> { String }, optional: false, nullable: false

      field :verified, -> { Internal::Types::Boolean }, optional: false, nullable: false
    end
  end
end
