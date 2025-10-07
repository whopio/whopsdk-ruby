# frozen_string_literal: true

module Whopsdk
  module Models
    # The different platforms an app build can target.
    module AppBuildPlatforms
      extend Whopsdk::Internal::Type::Enum

      IOS = :ios
      ANDROID = :android
      WEB = :web

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
