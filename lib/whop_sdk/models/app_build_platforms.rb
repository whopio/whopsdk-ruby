# frozen_string_literal: true

module WhopSDK
  module Models
    # The different platforms an app build can target.
    module AppBuildPlatforms
      extend WhopSDK::Internal::Type::Enum

      IOS = :ios
      ANDROID = :android
      WEB = :web

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
