# typed: strong

module Whopsdk
  module Resources
    class LedgerAccounts
      # Retrieves a ledger account by ID
      #
      # Required permissions:
      #
      # - `company:balance:read`
      sig do
        params(
          id: String,
          request_options: Whopsdk::RequestOptions::OrHash
        ).returns(Whopsdk::Models::LedgerAccountRetrieveResponse)
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
