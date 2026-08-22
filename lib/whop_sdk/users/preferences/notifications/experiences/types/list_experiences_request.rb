# frozen_string_literal: true

module Whop_sdk
  module Users
    module Preferences
      module Notifications
        module Experiences
          module Types
            class ListExperiencesRequest < Internal::Types::Model
              field :first, -> { Integer }, optional: true, nullable: false

              field :after, -> { String }, optional: true, nullable: false
            end
          end
        end
      end
    end
  end
end
