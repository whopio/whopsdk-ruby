# typed: strong

module Whopsdk
  module Resources
    class Companies
      # Retrieves an company by ID
      #
      # Required permissions:
      #
      # - `company:basic:read`
      sig do
        params(
          id: String,
          request_options: Whopsdk::RequestOptions::OrHash
        ).returns(Whopsdk::Company)
      end
      def retrieve(id, request_options: {})
      end

      # @api private
      sig { params(client: Whopsdk::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
