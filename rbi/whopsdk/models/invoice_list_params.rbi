# typed: strong

module Whopsdk
  module Models
    class InvoiceListParams < Whopsdk::Internal::Type::BaseModel
      extend Whopsdk::Internal::Type::RequestParameters::Converter
      include Whopsdk::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Whopsdk::InvoiceListParams, Whopsdk::Internal::AnyHash)
        end

      # Represents a unique identifier that is Base64 obfuscated. It is often used to
      # refetch an object or as key for a cache. The ID type appears in a JSON response
      # as a String; however, it is not intended to be human-readable. When expected as
      # an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
      # input value will be accepted as an ID.
      sig { returns(String) }
      attr_accessor :company_id

      # Represents textual data as UTF-8 character sequences. This type is most often
      # used by GraphQL to represent free-form human-readable text.
      sig { returns(T.nilable(String)) }
      attr_accessor :after

      # Represents textual data as UTF-8 character sequences. This type is most often
      # used by GraphQL to represent free-form human-readable text.
      sig { returns(T.nilable(String)) }
      attr_accessor :before

      # The direction of the sort.
      sig do
        returns(T.nilable(Whopsdk::InvoiceListParams::Direction::OrSymbol))
      end
      attr_accessor :direction

      # Filters for the invoices table.
      sig { returns(T.nilable(Whopsdk::InvoiceListParams::Filters)) }
      attr_reader :filters

      sig do
        params(
          filters: T.nilable(Whopsdk::InvoiceListParams::Filters::OrHash)
        ).void
      end
      attr_writer :filters

      # Represents non-fractional signed whole numeric values. Int can represent values
      # between -(2^31) and 2^31 - 1.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :first

      # Represents non-fractional signed whole numeric values. Int can represent values
      # between -(2^31) and 2^31 - 1.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :last

      # Which columns can be used to sort.
      sig { returns(T.nilable(Whopsdk::InvoiceListParams::Order::OrSymbol)) }
      attr_accessor :order

      sig do
        params(
          company_id: String,
          after: T.nilable(String),
          before: T.nilable(String),
          direction: T.nilable(Whopsdk::InvoiceListParams::Direction::OrSymbol),
          filters: T.nilable(Whopsdk::InvoiceListParams::Filters::OrHash),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          order: T.nilable(Whopsdk::InvoiceListParams::Order::OrSymbol),
          request_options: Whopsdk::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Represents a unique identifier that is Base64 obfuscated. It is often used to
        # refetch an object or as key for a cache. The ID type appears in a JSON response
        # as a String; however, it is not intended to be human-readable. When expected as
        # an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
        # input value will be accepted as an ID.
        company_id:,
        # Represents textual data as UTF-8 character sequences. This type is most often
        # used by GraphQL to represent free-form human-readable text.
        after: nil,
        # Represents textual data as UTF-8 character sequences. This type is most often
        # used by GraphQL to represent free-form human-readable text.
        before: nil,
        # The direction of the sort.
        direction: nil,
        # Filters for the invoices table.
        filters: nil,
        # Represents non-fractional signed whole numeric values. Int can represent values
        # between -(2^31) and 2^31 - 1.
        first: nil,
        # Represents non-fractional signed whole numeric values. Int can represent values
        # between -(2^31) and 2^31 - 1.
        last: nil,
        # Which columns can be used to sort.
        order: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            company_id: String,
            after: T.nilable(String),
            before: T.nilable(String),
            direction:
              T.nilable(Whopsdk::InvoiceListParams::Direction::OrSymbol),
            filters: T.nilable(Whopsdk::InvoiceListParams::Filters),
            first: T.nilable(Integer),
            last: T.nilable(Integer),
            order: T.nilable(Whopsdk::InvoiceListParams::Order::OrSymbol),
            request_options: Whopsdk::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The direction of the sort.
      module Direction
        extend Whopsdk::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Whopsdk::InvoiceListParams::Direction) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ASC = T.let(:asc, Whopsdk::InvoiceListParams::Direction::TaggedSymbol)
        DESC = T.let(:desc, Whopsdk::InvoiceListParams::Direction::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Whopsdk::InvoiceListParams::Direction::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class Filters < Whopsdk::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Whopsdk::InvoiceListParams::Filters,
              Whopsdk::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :access_pass_ids

        sig do
          returns(
            T.nilable(
              T::Array[
                Whopsdk::InvoiceListParams::Filters::CollectionMethod::OrSymbol
              ]
            )
          )
        end
        attr_accessor :collection_methods

        sig do
          returns(
            T.nilable(
              T::Array[Whopsdk::InvoiceListParams::Filters::Status::OrSymbol]
            )
          )
        end
        attr_accessor :statuses

        # Filters for the invoices table.
        sig do
          params(
            access_pass_ids: T.nilable(T::Array[String]),
            collection_methods:
              T.nilable(
                T::Array[
                  Whopsdk::InvoiceListParams::Filters::CollectionMethod::OrSymbol
                ]
              ),
            statuses:
              T.nilable(
                T::Array[Whopsdk::InvoiceListParams::Filters::Status::OrSymbol]
              )
          ).returns(T.attached_class)
        end
        def self.new(
          access_pass_ids: nil,
          collection_methods: nil,
          statuses: nil
        )
        end

        sig do
          override.returns(
            {
              access_pass_ids: T.nilable(T::Array[String]),
              collection_methods:
                T.nilable(
                  T::Array[
                    Whopsdk::InvoiceListParams::Filters::CollectionMethod::OrSymbol
                  ]
                ),
              statuses:
                T.nilable(
                  T::Array[
                    Whopsdk::InvoiceListParams::Filters::Status::OrSymbol
                  ]
                )
            }
          )
        end
        def to_hash
        end

        # The method of collection for an invoice.
        module CollectionMethod
          extend Whopsdk::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Whopsdk::InvoiceListParams::Filters::CollectionMethod
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SEND_INVOICE =
            T.let(
              :send_invoice,
              Whopsdk::InvoiceListParams::Filters::CollectionMethod::TaggedSymbol
            )
          CHARGE_AUTOMATICALLY =
            T.let(
              :charge_automatically,
              Whopsdk::InvoiceListParams::Filters::CollectionMethod::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Whopsdk::InvoiceListParams::Filters::CollectionMethod::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The different statuses an invoice can be in
        module Status
          extend Whopsdk::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Whopsdk::InvoiceListParams::Filters::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          OPEN =
            T.let(
              :open,
              Whopsdk::InvoiceListParams::Filters::Status::TaggedSymbol
            )
          PAID =
            T.let(
              :paid,
              Whopsdk::InvoiceListParams::Filters::Status::TaggedSymbol
            )
          PAST_DUE =
            T.let(
              :past_due,
              Whopsdk::InvoiceListParams::Filters::Status::TaggedSymbol
            )
          VOID =
            T.let(
              :void,
              Whopsdk::InvoiceListParams::Filters::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Whopsdk::InvoiceListParams::Filters::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      # Which columns can be used to sort.
      module Order
        extend Whopsdk::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Whopsdk::InvoiceListParams::Order) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ID = T.let(:id, Whopsdk::InvoiceListParams::Order::TaggedSymbol)
        CREATED_AT =
          T.let(:created_at, Whopsdk::InvoiceListParams::Order::TaggedSymbol)
        DUE_DATE =
          T.let(:due_date, Whopsdk::InvoiceListParams::Order::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Whopsdk::InvoiceListParams::Order::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
