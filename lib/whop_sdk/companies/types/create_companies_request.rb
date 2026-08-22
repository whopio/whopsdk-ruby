# frozen_string_literal: true

module Whop_sdk
  module Companies
    module Types
      class CreateCompaniesRequest < Internal::Types::Model
        field :country, -> { Whop_sdk::Types::Countries }, optional: true, nullable: false

        field :description, -> { String }, optional: true, nullable: false

        field :email, -> { String }, optional: true, nullable: false

        field :logo, -> { Whop_sdk::Companies::Types::CreateCompaniesRequestLogo }, optional: true, nullable: false

        field :metadata, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false

        field :parent_company_id, -> { String }, optional: true, nullable: false

        field :send_customer_emails, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :title, -> { String }, optional: false, nullable: false
      end
    end
  end
end
