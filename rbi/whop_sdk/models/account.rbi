# typed: strong

module WhopSDK
  module Models
    class Account < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(WhopSDK::Account, WhopSDK::Internal::AnyHash) }

      # The ID of the account, which will look like biz\_******\*******
      sig { returns(String) }
      attr_accessor :id

      # When the account was created, as an ISO 8601 timestamp
      sig { returns(String) }
      attr_accessor :created_at

      # The email address of the account owner
      sig { returns(T.nilable(String)) }
      attr_accessor :email

      # Arbitrary key/value metadata supplied when the account was created
      sig { returns(T.anything) }
      attr_accessor :metadata

      # The account's primary crypto wallet, or null if none has been provisioned
      sig { returns(T.nilable(WhopSDK::AccountWallet)) }
      attr_reader :wallet

      sig { params(wallet: T.nilable(WhopSDK::AccountWallet::OrHash)).void }
      attr_writer :wallet

      sig do
        params(
          id: String,
          created_at: String,
          email: T.nilable(String),
          metadata: T.anything,
          wallet: T.nilable(WhopSDK::AccountWallet::OrHash)
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the account, which will look like biz\_******\*******
        id:,
        # When the account was created, as an ISO 8601 timestamp
        created_at:,
        # The email address of the account owner
        email:,
        # Arbitrary key/value metadata supplied when the account was created
        metadata:,
        # The account's primary crypto wallet, or null if none has been provisioned
        wallet:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: String,
            email: T.nilable(String),
            metadata: T.anything,
            wallet: T.nilable(WhopSDK::AccountWallet)
          }
        )
      end
      def to_hash
      end
    end
  end
end
