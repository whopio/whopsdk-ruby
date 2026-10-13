# frozen_string_literal: true

module Whop_sdk
  module Members
    module Notes
      module Types
        class ListNotesResponse < Internal::Types::Model
          field :data, -> { Internal::Types::Array[Whop_sdk::Types::MemberNote] }, optional: false, nullable: false

          field :page_info, -> { Whop_sdk::Members::Notes::Types::ListNotesResponsePageInfo }, optional: false, nullable: false
        end
      end
    end
  end
end
