# frozen_string_literal: true

module Whop_sdk
  module Forums
    module Types
      # The banner image displayed at the top of the forum page. Pass null to remove the existing banner.
      class UpdateForumsRequestBannerImage < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
