# frozen_string_literal: true

module Whopsdk
  module Models
    # Who can post on a chat feed
    module WhoCanPost
      extend Whopsdk::Internal::Type::Enum

      EVERYONE = :everyone
      ADMINS = :admins

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
