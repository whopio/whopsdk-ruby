# frozen_string_literal: true

module Whop_sdk
  module Types
    # The icon image for this app, displayed on the app store, product pages, checkout, and as the default icon for
    # experiences using this app.
    class ExperienceListItemAppIcon < Internal::Types::Model
      field :url, -> { String }, optional: false, nullable: true
    end
  end
end
