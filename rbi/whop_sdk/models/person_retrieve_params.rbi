# typed: strong

module WhopSDK
  module Models
    class PersonRetrieveParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::PersonRetrieveParams, WhopSDK::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :person_id

      # The ID of the account, which will look like biz\_******\*******. Optional for
      # account API keys; required for credentials that can access multiple accounts.
      sig { returns(T.nilable(String)) }
      attr_reader :account_id

      sig { params(account_id: String).void }
      attr_writer :account_id

      # Start of the time range as a Unix timestamp.
      sig { returns(T.nilable(Integer)) }
      attr_reader :from

      sig { params(from: Integer).void }
      attr_writer :from

      # End of the time range as a Unix timestamp. Defaults to now.
      sig { returns(T.nilable(Integer)) }
      attr_reader :to

      sig { params(to: Integer).void }
      attr_writer :to

      sig do
        params(
          person_id: String,
          account_id: String,
          from: Integer,
          to: Integer,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        person_id:,
        # The ID of the account, which will look like biz\_******\*******. Optional for
        # account API keys; required for credentials that can access multiple accounts.
        account_id: nil,
        # Start of the time range as a Unix timestamp.
        from: nil,
        # End of the time range as a Unix timestamp. Defaults to now.
        to: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            person_id: String,
            account_id: String,
            from: Integer,
            to: Integer,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
