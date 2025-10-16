# typed: strong

module WhopSDK
  module Resources
    class Companies
      # Retrieves an company by ID or its url route
      #
      # Required permissions:
      #
      # - `company:basic:read`
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Company)
      end
      def retrieve(id, request_options: {})
      end

      # @api private
      sig { params(client: WhopSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
