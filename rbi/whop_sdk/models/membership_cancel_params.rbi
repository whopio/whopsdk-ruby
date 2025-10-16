# typed: strong

module WhopSDK
  module Models
    class MembershipCancelParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::MembershipCancelParams, WhopSDK::Internal::AnyHash)
        end

      # The mode of cancellation for a membership
      sig do
        returns(
          T.nilable(WhopSDK::MembershipCancelParams::CancellationMode::OrSymbol)
        )
      end
      attr_accessor :cancellation_mode

      sig do
        params(
          cancellation_mode:
            T.nilable(
              WhopSDK::MembershipCancelParams::CancellationMode::OrSymbol
            ),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The mode of cancellation for a membership
        cancellation_mode: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            cancellation_mode:
              T.nilable(
                WhopSDK::MembershipCancelParams::CancellationMode::OrSymbol
              ),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The mode of cancellation for a membership
      module CancellationMode
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::MembershipCancelParams::CancellationMode)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AT_PERIOD_END =
          T.let(
            :at_period_end,
            WhopSDK::MembershipCancelParams::CancellationMode::TaggedSymbol
          )
        IMMEDIATE =
          T.let(
            :immediate,
            WhopSDK::MembershipCancelParams::CancellationMode::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::MembershipCancelParams::CancellationMode::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
