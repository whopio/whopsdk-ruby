# typed: strong

module Whopsdk
  module Models
    class ExperienceListResponse < Whopsdk::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Whopsdk::Models::ExperienceListResponse,
            Whopsdk::Internal::AnyHash
          )
        end

      # The unique ID representing this experience
      sig { returns(String) }
      attr_accessor :id

      # The experience interface for this experience.
      sig { returns(Whopsdk::Models::ExperienceListResponse::App) }
      attr_reader :app

      sig do
        params(app: Whopsdk::Models::ExperienceListResponse::App::OrHash).void
      end
      attr_writer :app

      # The company that owns this experience.
      sig { returns(Whopsdk::Models::ExperienceListResponse::Company) }
      attr_reader :company

      sig do
        params(
          company: Whopsdk::Models::ExperienceListResponse::Company::OrHash
        ).void
      end
      attr_writer :company

      # The timestamp of when this experience was created.
      sig { returns(Integer) }
      attr_accessor :created_at

      # The written name of the description.
      sig { returns(String) }
      attr_accessor :name

      # The order of the experience in the section
      sig { returns(T.nilable(String)) }
      attr_accessor :order

      # An object representing an experience belonging to a company.
      sig do
        params(
          id: String,
          app: Whopsdk::Models::ExperienceListResponse::App::OrHash,
          company: Whopsdk::Models::ExperienceListResponse::Company::OrHash,
          created_at: Integer,
          name: String,
          order: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique ID representing this experience
        id:,
        # The experience interface for this experience.
        app:,
        # The company that owns this experience.
        company:,
        # The timestamp of when this experience was created.
        created_at:,
        # The written name of the description.
        name:,
        # The order of the experience in the section
        order:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            app: Whopsdk::Models::ExperienceListResponse::App,
            company: Whopsdk::Models::ExperienceListResponse::Company,
            created_at: Integer,
            name: String,
            order: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      class App < Whopsdk::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Whopsdk::Models::ExperienceListResponse::App,
              Whopsdk::Internal::AnyHash
            )
          end

        # The ID of the app
        sig { returns(String) }
        attr_accessor :id

        # The name of the app
        sig { returns(String) }
        attr_accessor :name

        # The experience interface for this experience.
        sig { params(id: String, name: String).returns(T.attached_class) }
        def self.new(
          # The ID of the app
          id:,
          # The name of the app
          name:
        )
        end

        sig { override.returns({ id: String, name: String }) }
        def to_hash
        end
      end

      class Company < Whopsdk::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Whopsdk::Models::ExperienceListResponse::Company,
              Whopsdk::Internal::AnyHash
            )
          end

        # The ID (tag) of the company.
        sig { returns(String) }
        attr_accessor :id

        # The slug/route of the company on the Whop site.
        sig { returns(String) }
        attr_accessor :route

        # The title of the company.
        sig { returns(String) }
        attr_accessor :title

        # The company that owns this experience.
        sig do
          params(id: String, route: String, title: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # The ID (tag) of the company.
          id:,
          # The slug/route of the company on the Whop site.
          route:,
          # The title of the company.
          title:
        )
        end

        sig { override.returns({ id: String, route: String, title: String }) }
        def to_hash
        end
      end
    end
  end
end
