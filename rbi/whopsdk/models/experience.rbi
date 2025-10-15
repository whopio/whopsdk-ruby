# typed: strong

module Whopsdk
  module Models
    class Experience < Whopsdk::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Whopsdk::Experience, Whopsdk::Internal::AnyHash) }

      # The unique ID representing this experience
      sig { returns(String) }
      attr_accessor :id

      # The experience interface for this experience.
      sig { returns(Whopsdk::Experience::App) }
      attr_reader :app

      sig { params(app: Whopsdk::Experience::App::OrHash).void }
      attr_writer :app

      # The company that owns this experience.
      sig { returns(Whopsdk::Experience::Company) }
      attr_reader :company

      sig { params(company: Whopsdk::Experience::Company::OrHash).void }
      attr_writer :company

      # The timestamp of when this experience was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # The written name of the description.
      sig { returns(String) }
      attr_accessor :name

      # The order of the experience in the section
      sig { returns(T.nilable(String)) }
      attr_accessor :order

      # The access passes that are associated with this experience. This should not be
      # used unless you are trying to list all access passes the experience has, for
      # some reason. You probably don't want to use this though and should be using
      # accessPass.
      sig { returns(T::Array[Whopsdk::Experience::Product]) }
      attr_accessor :products

      # An object representing an experience belonging to a company.
      sig do
        params(
          id: String,
          app: Whopsdk::Experience::App::OrHash,
          company: Whopsdk::Experience::Company::OrHash,
          created_at: Time,
          name: String,
          order: T.nilable(String),
          products: T::Array[Whopsdk::Experience::Product::OrHash]
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
        order:,
        # The access passes that are associated with this experience. This should not be
        # used unless you are trying to list all access passes the experience has, for
        # some reason. You probably don't want to use this though and should be using
        # accessPass.
        products:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            app: Whopsdk::Experience::App,
            company: Whopsdk::Experience::Company,
            created_at: Time,
            name: String,
            order: T.nilable(String),
            products: T::Array[Whopsdk::Experience::Product]
          }
        )
      end
      def to_hash
      end

      class App < Whopsdk::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Whopsdk::Experience::App, Whopsdk::Internal::AnyHash)
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
            T.any(Whopsdk::Experience::Company, Whopsdk::Internal::AnyHash)
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

      class Product < Whopsdk::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Whopsdk::Experience::Product, Whopsdk::Internal::AnyHash)
          end

        # The internal ID of the public product.
        sig { returns(String) }
        attr_accessor :id

        # The route of the product.
        sig { returns(String) }
        attr_accessor :route

        # The title of the product. Use for Whop 4.0.
        sig { returns(String) }
        attr_accessor :title

        # An object representing a (sanitized) access pass.
        sig do
          params(id: String, route: String, title: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # The internal ID of the public product.
          id:,
          # The route of the product.
          route:,
          # The title of the product. Use for Whop 4.0.
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
