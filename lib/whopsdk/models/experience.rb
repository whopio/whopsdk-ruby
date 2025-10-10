# frozen_string_literal: true

module Whopsdk
  module Models
    class Experience < Whopsdk::Internal::Type::BaseModel
      # @!attribute id
      #   The unique ID representing this experience
      #
      #   @return [String]
      required :id, String

      # @!attribute app
      #   The experience interface for this experience.
      #
      #   @return [Whopsdk::Models::Experience::App]
      required :app, -> { Whopsdk::Experience::App }

      # @!attribute company
      #   The company that owns this experience.
      #
      #   @return [Whopsdk::Models::Experience::Company]
      required :company, -> { Whopsdk::Experience::Company }

      # @!attribute created_at
      #   The timestamp of when this experience was created.
      #
      #   @return [Integer]
      required :created_at, Integer

      # @!attribute name
      #   The written name of the description.
      #
      #   @return [String]
      required :name, String

      # @!attribute order
      #   The order of the experience in the section
      #
      #   @return [String, nil]
      required :order, String, nil?: true

      # @!attribute products
      #   The access passes that are associated with this experience. This should not be
      #   used unless you are trying to list all access passes the experience has, for
      #   some reason. You probably don't want to use this though and should be using
      #   accessPass.
      #
      #   @return [Array<Whopsdk::Models::Experience::Product>]
      required :products, -> { Whopsdk::Internal::Type::ArrayOf[Whopsdk::Experience::Product] }

      # @!method initialize(id:, app:, company:, created_at:, name:, order:, products:)
      #   Some parameter documentations has been truncated, see
      #   {Whopsdk::Models::Experience} for more details.
      #
      #   An object representing an experience belonging to a company.
      #
      #   @param id [String] The unique ID representing this experience
      #
      #   @param app [Whopsdk::Models::Experience::App] The experience interface for this experience.
      #
      #   @param company [Whopsdk::Models::Experience::Company] The company that owns this experience.
      #
      #   @param created_at [Integer] The timestamp of when this experience was created.
      #
      #   @param name [String] The written name of the description.
      #
      #   @param order [String, nil] The order of the experience in the section
      #
      #   @param products [Array<Whopsdk::Models::Experience::Product>] The access passes that are associated with this experience. This should not be u

      # @see Whopsdk::Models::Experience#app
      class App < Whopsdk::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of the app
        #
        #   @return [String]
        required :id, String

        # @!attribute name
        #   The name of the app
        #
        #   @return [String]
        required :name, String

        # @!method initialize(id:, name:)
        #   The experience interface for this experience.
        #
        #   @param id [String] The ID of the app
        #
        #   @param name [String] The name of the app
      end

      # @see Whopsdk::Models::Experience#company
      class Company < Whopsdk::Internal::Type::BaseModel
        # @!attribute id
        #   The ID (tag) of the company.
        #
        #   @return [String]
        required :id, String

        # @!attribute route
        #   The slug/route of the company on the Whop site.
        #
        #   @return [String]
        required :route, String

        # @!attribute title
        #   The title of the company.
        #
        #   @return [String]
        required :title, String

        # @!method initialize(id:, route:, title:)
        #   The company that owns this experience.
        #
        #   @param id [String] The ID (tag) of the company.
        #
        #   @param route [String] The slug/route of the company on the Whop site.
        #
        #   @param title [String] The title of the company.
      end

      class Product < Whopsdk::Internal::Type::BaseModel
        # @!attribute id
        #   The internal ID of the public access pass.
        #
        #   @return [String]
        required :id, String

        # @!attribute route
        #   The route of the access pass.
        #
        #   @return [String]
        required :route, String

        # @!attribute title
        #   The title of the access pass. Use for Whop 4.0.
        #
        #   @return [String]
        required :title, String

        # @!method initialize(id:, route:, title:)
        #   An object representing a (sanitized) access pass.
        #
        #   @param id [String] The internal ID of the public access pass.
        #
        #   @param route [String] The route of the access pass.
        #
        #   @param title [String] The title of the access pass. Use for Whop 4.0.
      end
    end
  end
end
