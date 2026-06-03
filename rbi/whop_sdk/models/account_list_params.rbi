# typed: strong

module WhopSDK
  module Models
    class AccountListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::AccountListParams, WhopSDK::Internal::AnyHash)
        end

      # The page number to retrieve
      sig { returns(T.nilable(Integer)) }
      attr_reader :page

      sig { params(page: Integer).void }
      attr_writer :page

      # The number of resources to return per page. There is a limit of 50 results per
      # page.
      sig { returns(T.nilable(Integer)) }
      attr_reader :per

      sig { params(per: Integer).void }
      attr_writer :per

      sig do
        params(
          page: Integer,
          per: Integer,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The page number to retrieve
        page: nil,
        # The number of resources to return per page. There is a limit of 50 results per
        # page.
        per: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            page: Integer,
            per: Integer,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
