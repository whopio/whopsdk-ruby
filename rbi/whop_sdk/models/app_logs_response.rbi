# typed: strong

module WhopSDK
  module Models
    class AppLogsResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(WhopSDK::Models::AppLogsResponse, WhopSDK::Internal::AnyHash)
        end

      sig { returns(T::Array[WhopSDK::Models::AppLogsResponse::Data]) }
      attr_accessor :data

      sig { returns(WhopSDK::Models::AppLogsResponse::PageInfo) }
      attr_reader :page_info

      sig do
        params(
          page_info: WhopSDK::Models::AppLogsResponse::PageInfo::OrHash
        ).void
      end
      attr_writer :page_info

      sig do
        params(
          data: T::Array[WhopSDK::Models::AppLogsResponse::Data::OrHash],
          page_info: WhopSDK::Models::AppLogsResponse::PageInfo::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data:, page_info:)
      end

      sig do
        override.returns(
          {
            data: T::Array[WhopSDK::Models::AppLogsResponse::Data],
            page_info: WhopSDK::Models::AppLogsResponse::PageInfo
          }
        )
      end
      def to_hash
      end

      class Data < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::AppLogsResponse::Data,
              WhopSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :app_build_id

        sig { returns(String) }
        attr_accessor :app_id

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(String) }
        attr_accessor :level

        sig { returns(String) }
        attr_accessor :message

        sig { returns(String) }
        attr_accessor :request_id

        sig do
          returns(WhopSDK::Models::AppLogsResponse::Data::Source::TaggedSymbol)
        end
        attr_accessor :source

        sig { returns(T.nilable(Integer)) }
        attr_reader :cpu_time_ms

        sig { params(cpu_time_ms: Integer).void }
        attr_writer :cpu_time_ms

        sig { returns(T.nilable(String)) }
        attr_accessor :outcome

        sig { returns(T.nilable(String)) }
        attr_accessor :request_method

        sig { returns(T.nilable(String)) }
        attr_accessor :request_path

        sig { returns(T.nilable(Integer)) }
        attr_accessor :response_status

        sig { returns(T.nilable(String)) }
        attr_accessor :stack

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :truncated

        sig { params(truncated: T::Boolean).void }
        attr_writer :truncated

        sig { returns(T.nilable(Integer)) }
        attr_reader :wall_time_ms

        sig { params(wall_time_ms: Integer).void }
        attr_writer :wall_time_ms

        sig do
          params(
            app_build_id: String,
            app_id: String,
            created_at: Time,
            level: String,
            message: String,
            request_id: String,
            source: WhopSDK::Models::AppLogsResponse::Data::Source::OrSymbol,
            cpu_time_ms: Integer,
            outcome: T.nilable(String),
            request_method: T.nilable(String),
            request_path: T.nilable(String),
            response_status: T.nilable(Integer),
            stack: T.nilable(String),
            truncated: T::Boolean,
            wall_time_ms: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          app_build_id:,
          app_id:,
          created_at:,
          level:,
          message:,
          request_id:,
          source:,
          cpu_time_ms: nil,
          outcome: nil,
          request_method: nil,
          request_path: nil,
          response_status: nil,
          stack: nil,
          truncated: nil,
          wall_time_ms: nil
        )
        end

        sig do
          override.returns(
            {
              app_build_id: String,
              app_id: String,
              created_at: Time,
              level: String,
              message: String,
              request_id: String,
              source:
                WhopSDK::Models::AppLogsResponse::Data::Source::TaggedSymbol,
              cpu_time_ms: Integer,
              outcome: T.nilable(String),
              request_method: T.nilable(String),
              request_path: T.nilable(String),
              response_status: T.nilable(Integer),
              stack: T.nilable(String),
              truncated: T::Boolean,
              wall_time_ms: Integer
            }
          )
        end
        def to_hash
        end

        module Source
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, WhopSDK::Models::AppLogsResponse::Data::Source)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CONSOLE =
            T.let(
              :console,
              WhopSDK::Models::AppLogsResponse::Data::Source::TaggedSymbol
            )
          EXCEPTION =
            T.let(
              :exception,
              WhopSDK::Models::AppLogsResponse::Data::Source::TaggedSymbol
            )
          REQUEST =
            T.let(
              :request,
              WhopSDK::Models::AppLogsResponse::Data::Source::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::Models::AppLogsResponse::Data::Source::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class PageInfo < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::AppLogsResponse::PageInfo,
              WhopSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Boolean) }
        attr_accessor :has_next_page

        sig { returns(T::Boolean) }
        attr_accessor :has_previous_page

        sig { returns(T.nilable(String)) }
        attr_accessor :end_cursor

        sig { returns(T.nilable(String)) }
        attr_accessor :start_cursor

        sig do
          params(
            has_next_page: T::Boolean,
            has_previous_page: T::Boolean,
            end_cursor: T.nilable(String),
            start_cursor: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          has_next_page:,
          has_previous_page:,
          end_cursor: nil,
          start_cursor: nil
        )
        end

        sig do
          override.returns(
            {
              has_next_page: T::Boolean,
              has_previous_page: T::Boolean,
              end_cursor: T.nilable(String),
              start_cursor: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
