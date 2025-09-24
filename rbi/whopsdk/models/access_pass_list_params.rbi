# typed: strong

module Whopsdk
  module Models
    class AccessPassListParams < Whopsdk::Internal::Type::BaseModel
      extend Whopsdk::Internal::Type::RequestParameters::Converter
      include Whopsdk::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Whopsdk::AccessPassListParams, Whopsdk::Internal::AnyHash)
        end

      # The ID of the company to filter access passes by
      sig { returns(String) }
      attr_accessor :company_id

      # The type of access passes to filter by
      sig do
        returns(
          T.nilable(Whopsdk::AccessPassListParams::AccessPassType::OrSymbol)
        )
      end
      attr_accessor :access_pass_type

      # Returns the elements in the list that come after the specified cursor.
      sig { returns(T.nilable(String)) }
      attr_accessor :after

      # Returns the elements in the list that come before the specified cursor.
      sig { returns(T.nilable(String)) }
      attr_accessor :before

      # Returns the first _n_ elements from the list.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :first

      # Returns the last _n_ elements from the list.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :last

      sig do
        params(
          company_id: String,
          access_pass_type:
            T.nilable(Whopsdk::AccessPassListParams::AccessPassType::OrSymbol),
          after: T.nilable(String),
          before: T.nilable(String),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          request_options: Whopsdk::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the company to filter access passes by
        company_id:,
        # The type of access passes to filter by
        access_pass_type: nil,
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            company_id: String,
            access_pass_type:
              T.nilable(
                Whopsdk::AccessPassListParams::AccessPassType::OrSymbol
              ),
            after: T.nilable(String),
            before: T.nilable(String),
            first: T.nilable(Integer),
            last: T.nilable(Integer),
            request_options: Whopsdk::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The type of access passes to filter by
      module AccessPassType
        extend Whopsdk::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Whopsdk::AccessPassListParams::AccessPassType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        REGULAR =
          T.let(
            :regular,
            Whopsdk::AccessPassListParams::AccessPassType::TaggedSymbol
          )
        APP =
          T.let(
            :app,
            Whopsdk::AccessPassListParams::AccessPassType::TaggedSymbol
          )
        EXPERIENCE_UPSELL =
          T.let(
            :experience_upsell,
            Whopsdk::AccessPassListParams::AccessPassType::TaggedSymbol
          )
        API_ONLY =
          T.let(
            :api_only,
            Whopsdk::AccessPassListParams::AccessPassType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Whopsdk::AccessPassListParams::AccessPassType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
