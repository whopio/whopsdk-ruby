# frozen_string_literal: true

module Whop_sdk
  module ExternalAccounts
    module Posts
      module Types
        class ListPostsResponsePageInfo < Internal::Types::Model
          field :end_cursor, -> { String }, optional: false, nullable: true

          field :has_next_page, -> { Internal::Types::Boolean }, optional: false, nullable: false
        end
      end
    end
  end
end
