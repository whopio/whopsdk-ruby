# frozen_string_literal: true

module Whop_sdk
  module AccountLinks
    module Types
      class CreateAccountLinksRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: false, nullable: false

        field :refresh_url, -> { String }, optional: false, nullable: false

        field :return_url, -> { String }, optional: false, nullable: false

        field :use_case, -> { Whop_sdk::Types::AccountLinkUseCases }, optional: false, nullable: false
      end
    end
  end
end
