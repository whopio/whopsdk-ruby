# frozen_string_literal: true

module Whop_sdk
  module Files
    module Types
      class ListFilesResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Types::File] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::Files::Types::ListFilesResponsePageInfo }, optional: false, nullable: false
      end
    end
  end
end
