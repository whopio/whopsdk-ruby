# frozen_string_literal: true

module Whop_sdk
  module Accounts
    module Types
      # Account banner image, used as the cover photo when creating a Whop-managed Facebook page. Image files up to 10
      # MB, except `image/gif`. Pass a JSON object containing an `id` from [Create
      # File](/api-reference/files/create-file).
      class UpdateAccountsRequestBannerImage < Internal::Types::Model
        field :id, -> { String }, optional: true, nullable: false
      end
    end
  end
end
