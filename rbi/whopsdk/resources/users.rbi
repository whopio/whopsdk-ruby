# typed: strong

module Whopsdk
  module Resources
    class Users
      # Retrieves a user by ID or username
      sig do
        params(
          id: String,
          request_options: Whopsdk::RequestOptions::OrHash
        ).returns(Whopsdk::Models::UserRetrieveResponse)
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
