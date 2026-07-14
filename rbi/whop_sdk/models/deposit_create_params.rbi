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

      # Destination account ID or wallet address. Object form is supported for
      # compatibility.
      sig do
        returns(
          T.any(String, WhopSDK::DepositCreateParams::Destination::UnionMember1)
        )
      end
      attr_accessor :destination

      # Amount to prefill on hosted deposit page.
      sig { returns(T.nilable(Float)) }
      attr_reader :amount

      sig { params(amount: Float).void }
      attr_writer :amount

      # Metadata to include with the deposit response.
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, T.anything]).void }
      attr_writer :metadata

      # Destination network override.
      sig { returns(T.nilable(String)) }
      attr_accessor :network

      sig do
        params(
          destination:
            T.any(
              String,
              WhopSDK::DepositCreateParams::Destination::UnionMember1::OrHash
            ),
          amount: Float,
          metadata: T::Hash[Symbol, T.anything],
          network: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Destination account ID or wallet address. Object form is supported for
        # compatibility.
        destination:,
        # Amount to prefill on hosted deposit page.
        amount: nil,
        # Metadata to include with the deposit response.
        metadata: nil,
        # Destination network override.
        network: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            destination:
              T.any(
                String,
                WhopSDK::DepositCreateParams::Destination::UnionMember1
              ),
            amount: Float,
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

          # Destination account ID.
          sig { returns(T.nilable(String)) }
          attr_reader :account_id

          sig { params(account_id: String).void }
          attr_writer :account_id

          # Destination wallet address.
          sig { returns(T.nilable(String)) }
          attr_reader :address

          sig { params(address: String).void }
          attr_writer :address

          # Destination wallet network.
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
          def self.new(
            # Destination account ID.
            account_id: nil,
            # Destination wallet address.
            address: nil,
            # Destination wallet network.
            network: nil
          )
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
