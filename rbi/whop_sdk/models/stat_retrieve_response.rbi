# typed: strong

module WhopSDK
  module Models
    class StatRetrieveResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::StatRetrieveResponse,
            WhopSDK::Internal::AnyHash
          )
        end

      sig { returns(WhopSDK::Models::StatRetrieveResponse::Data) }
      attr_reader :data

      sig do
        params(data: WhopSDK::Models::StatRetrieveResponse::Data::OrHash).void
      end
      attr_writer :data

      sig do
        params(
          data: WhopSDK::Models::StatRetrieveResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig do
        override.returns({ data: WhopSDK::Models::StatRetrieveResponse::Data })
      end
      def to_hash
      end

      class Data < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::StatRetrieveResponse::Data,
              WhopSDK::Internal::AnyHash
            )
          end

        # One entry per period, oldest first.
        sig do
          returns(T::Array[WhopSDK::Models::StatRetrieveResponse::Data::Point])
        end
        attr_accessor :points

        # ISO currency the values are denominated in. Present for currency-unit metrics:
        # the convert_to currency, or usd.
        sig { returns(T.nilable(String)) }
        attr_accessor :currency

        sig do
          params(
            points:
              T::Array[
                WhopSDK::Models::StatRetrieveResponse::Data::Point::OrHash
              ],
            currency: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # One entry per period, oldest first.
          points:,
          # ISO currency the values are denominated in. Present for currency-unit metrics:
          # the convert_to currency, or usd.
          currency: nil
        )
        end

        sig do
          override.returns(
            {
              points:
                T::Array[WhopSDK::Models::StatRetrieveResponse::Data::Point],
              currency: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        class Point < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Models::StatRetrieveResponse::Data::Point,
                WhopSDK::Internal::AnyHash
              )
            end

          # Unix timestamp (seconds) of the period start.
          sig { returns(Integer) }
          attr_accessor :timestamp

          # The metric's value for this period, in the metric's unit.
          sig { returns(T.nilable(Float)) }
          attr_accessor :value

          # Present only when broken down: one entry per property value in this period.
          sig do
            returns(
              T.nilable(
                T::Array[
                  WhopSDK::Models::StatRetrieveResponse::Data::Point::Breakdown
                ]
              )
            )
          end
          attr_reader :breakdown

          sig do
            params(
              breakdown:
                T::Array[
                  WhopSDK::Models::StatRetrieveResponse::Data::Point::Breakdown::OrHash
                ]
            ).void
          end
          attr_writer :breakdown

          sig do
            params(
              timestamp: Integer,
              value: T.nilable(Float),
              breakdown:
                T::Array[
                  WhopSDK::Models::StatRetrieveResponse::Data::Point::Breakdown::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(
            # Unix timestamp (seconds) of the period start.
            timestamp:,
            # The metric's value for this period, in the metric's unit.
            value:,
            # Present only when broken down: one entry per property value in this period.
            breakdown: nil
          )
          end

          sig do
            override.returns(
              {
                timestamp: Integer,
                value: T.nilable(Float),
                breakdown:
                  T::Array[
                    WhopSDK::Models::StatRetrieveResponse::Data::Point::Breakdown
                  ]
              }
            )
          end
          def to_hash
          end

          class Breakdown < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::Models::StatRetrieveResponse::Data::Point::Breakdown,
                  WhopSDK::Internal::AnyHash
                )
              end

            # The property value, for example usd or visa.
            sig { returns(String) }
            attr_accessor :name

            # The metric's value for this entry.
            sig { returns(T.nilable(Float)) }
            attr_accessor :value

            sig do
              params(name: String, value: T.nilable(Float)).returns(
                T.attached_class
              )
            end
            def self.new(
              # The property value, for example usd or visa.
              name:,
              # The metric's value for this entry.
              value:
            )
            end

            sig { override.returns({ name: String, value: T.nilable(Float) }) }
            def to_hash
            end
          end
        end
      end
    end
  end
end
