# typed: strong

module Whopsdk
  module Resources
    class AccessPasses
      # @api private
      sig { params(client: Whopsdk::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
