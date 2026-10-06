# frozen_string_literal: true

module Whop_sdk
  module ExternalAccounts
    module Posts
      module Types
        class ListPostsRequest < Internal::Types::Model
          field :id, -> { String }, optional: false, nullable: false

          field :account_id, -> { String }, optional: false, nullable: false

          field :post_id, -> { String }, optional: true, nullable: false

          field :first, -> { Integer }, optional: true, nullable: false

          field :after, -> { String }, optional: true, nullable: false
        end
      end
    end
  end
end
