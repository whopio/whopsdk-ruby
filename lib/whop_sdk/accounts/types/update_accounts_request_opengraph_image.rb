# frozen_string_literal: true

module Whop_sdk
  module Accounts
    module Types
      # Open Graph preview media used when the account is shared. Image and video files up to 5 MB. Pass a JSON object
      # containing an `id` from [Create File](/api-reference/files/create-file).
      class UpdateAccountsRequestOpengraphImage < Internal::Types::Model
        field :id, -> { String }, optional: true, nullable: false
      end
    end
  end
end
