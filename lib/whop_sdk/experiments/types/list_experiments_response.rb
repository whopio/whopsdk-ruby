# frozen_string_literal: true

module Whop_sdk
  module Experiments
    module Types
      class ListExperimentsResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Types::Experiment] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::Experiments::Types::ListExperimentsResponsePageInfo }, optional: false, nullable: false
      end
    end
  end
end
