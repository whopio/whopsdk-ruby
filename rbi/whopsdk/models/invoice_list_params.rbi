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

      sig { returns(String) }
      attr_accessor :company_id

      sig { returns(T.nilable(String)) }
      attr_accessor :after

      sig { returns(T.nilable(String)) }
      attr_accessor :before

      sig do
        returns(T.nilable(Whopsdk::InvoiceListParams::Direction::OrSymbol))
      end
      attr_accessor :direction

      sig { returns(T.nilable(Whopsdk::InvoiceListParams::Filters)) }
      attr_reader :filters

      sig do
        params(
          filters: T.nilable(Whopsdk::InvoiceListParams::Filters::OrHash)
        ).void
      end
      attr_writer :filters

      sig { returns(T.nilable(Integer)) }
      attr_accessor :first

      sig { returns(T.nilable(Integer)) }
      attr_accessor :last

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
        company_id:,
        after: nil,
        before: nil,
        direction: nil,
        filters: nil,
        first: nil,
        last: nil,
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
