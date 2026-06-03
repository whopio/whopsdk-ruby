# typed: strong

module WhopSDK
  module Models
    class DepositCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::DepositCreateParams, WhopSDK::Internal::AnyHash)
        end

      # Amount to deposit.
      sig { returns(Float) }
      attr_accessor :amount

      # Destination account ID or wallet address. Object form is supported for
      # compatibility.
      sig do
        returns(
          T.any(String, WhopSDK::DepositCreateParams::Destination::UnionMember1)
        )
      end
      attr_accessor :destination

      # Arbitrary metadata echoed in the response.
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, T.anything]).void }
      attr_writer :metadata

      # Optional destination network override.
      sig { returns(T.nilable(String)) }
      attr_accessor :network

      sig do
        params(
          amount: Float,
          destination:
            T.any(
              String,
              WhopSDK::DepositCreateParams::Destination::UnionMember1::OrHash
            ),
          metadata: T::Hash[Symbol, T.anything],
          network: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Amount to deposit.
        amount:,
        # Destination account ID or wallet address. Object form is supported for
        # compatibility.
        destination:,
        # Arbitrary metadata echoed in the response.
        metadata: nil,
        # Optional destination network override.
        network: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            amount: Float,
            destination:
              T.any(
                String,
                WhopSDK::DepositCreateParams::Destination::UnionMember1
              ),
            metadata: T::Hash[Symbol, T.anything],
            network: T.nilable(String),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Destination account ID or wallet address. Object form is supported for
      # compatibility.
      module Destination
        extend WhopSDK::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              String,
              WhopSDK::DepositCreateParams::Destination::UnionMember1
            )
          end

        class UnionMember1 < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::DepositCreateParams::Destination::UnionMember1,
                WhopSDK::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :account_id

          sig { params(account_id: String).void }
          attr_writer :account_id

          sig { returns(T.nilable(String)) }
          attr_reader :address

          sig { params(address: String).void }
          attr_writer :address

          sig { returns(T.nilable(String)) }
          attr_reader :network

          sig { params(network: String).void }
          attr_writer :network

          sig do
            params(
              account_id: String,
              address: String,
              network: String
            ).returns(T.attached_class)
          end
          def self.new(account_id: nil, address: nil, network: nil)
          end

          sig do
            override.returns(
              { account_id: String, address: String, network: String }
            )
          end
          def to_hash
          end
        end

        sig do
          override.returns(
            T::Array[WhopSDK::DepositCreateParams::Destination::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
