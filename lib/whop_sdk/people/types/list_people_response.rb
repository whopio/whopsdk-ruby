# frozen_string_literal: true

module Whop_sdk
  module People
    module Types
      class ListPeopleResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::People::Types::ListPeopleResponseDataItem] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::People::Types::ListPeopleResponsePageInfo }, optional: false, nullable: false

        field :total_count, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
