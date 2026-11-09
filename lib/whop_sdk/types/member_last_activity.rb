# frozen_string_literal: true

module Whop_sdk
  module Types
    module MemberLastActivity
      # MemberLastActivity is an alias for MemberLastActivityMessage

      # @option str [String]
      #
      # @return [untyped]
      def self.load(str)
        ::JSON.parse(str)
      end

      # @option value [untyped]
      #
      # @return [String]
      def self.dump(value)
        ::JSON.generate(value)
      end
    end
  end
end
