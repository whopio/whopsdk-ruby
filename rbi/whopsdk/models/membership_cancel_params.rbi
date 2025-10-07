# typed: strong

module Whopsdk
  module Models
    class MembershipCancelParams < Whopsdk::Internal::Type::BaseModel
      extend Whopsdk::Internal::Type::RequestParameters::Converter
      include Whopsdk::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Whopsdk::MembershipCancelParams, Whopsdk::Internal::AnyHash)
        end

      # The mode of cancellation for a membership
      sig do
        returns(
          T.nilable(Whopsdk::MembershipCancelParams::CancellationMode::OrSymbol)
        )
      end
      attr_accessor :cancellation_mode

      sig do
        params(
          cancellation_mode:
            T.nilable(
              Whopsdk::MembershipCancelParams::CancellationMode::OrSymbol
            ),
          request_options: Whopsdk::RequestOptions::OrHash
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
                Whopsdk::MembershipCancelParams::CancellationMode::OrSymbol
              ),
            request_options: Whopsdk::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The mode of cancellation for a membership
      module CancellationMode
        extend Whopsdk::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Whopsdk::MembershipCancelParams::CancellationMode)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AT_PERIOD_END =
          T.let(
            :at_period_end,
            Whopsdk::MembershipCancelParams::CancellationMode::TaggedSymbol
          )
        IMMEDIATE =
          T.let(
            :immediate,
            Whopsdk::MembershipCancelParams::CancellationMode::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Whopsdk::MembershipCancelParams::CancellationMode::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
