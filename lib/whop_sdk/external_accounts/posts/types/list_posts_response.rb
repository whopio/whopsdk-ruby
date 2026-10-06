# frozen_string_literal: true

module Whop_sdk
  module ExternalAccounts
    module Posts
      module Types
        class ListPostsResponse < Internal::Types::Model
          field :data, -> { Internal::Types::Array[Whop_sdk::Types::ExternalAccountPost] }, optional: false, nullable: false

          field :page_info, -> { Whop_sdk::ExternalAccounts::Posts::Types::ListPostsResponsePageInfo }, optional: false, nullable: false
        end
      end
    end
  end
end
