# typed: strong

module WhopSDK
  module Models
    class CompanyCreateAPIKeyResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::CompanyCreateAPIKeyResponse,
            WhopSDK::Internal::AnyHash
          )
        end

      # The unique identifier for the authorized api key.
      sig { returns(String) }
      attr_accessor :id

      # A user set name to identify an API key
      sig { returns(T.nilable(String)) }
      attr_accessor :name

      # The secret key used to authenticate requests. Only returned at creation time.
      sig { returns(String) }
      attr_accessor :secret_key

      # An API key created for a child company, including the one-time secret key.
      sig do
        params(id: String, name: T.nilable(String), secret_key: String).returns(
          T.attached_class
        )
      end
      def self.new(
        # The unique identifier for the authorized api key.
        id:,
        # A user set name to identify an API key
        name:,
        # The secret key used to authenticate requests. Only returned at creation time.
        secret_key:
      )
      end

      sig do
        override.returns(
          { id: String, name: T.nilable(String), secret_key: String }
        )
      end
      def to_hash
      end
    end
  end
end
