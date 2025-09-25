# frozen_string_literal: true

module Whopsdk
  [Whopsdk::Internal::Type::BaseModel, *Whopsdk::Internal::Type::BaseModel.subclasses].each do |cls|
    cls.define_sorbet_constant!(:OrHash) { T.type_alias { T.any(cls, Whopsdk::Internal::AnyHash) } }
  end

  Whopsdk::Internal::Util.walk_namespaces(Whopsdk::Models).each do |mod|
    case mod
    in Whopsdk::Internal::Type::Enum | Whopsdk::Internal::Type::Union
      mod.constants.each do |name|
        case mod.const_get(name)
        in true | false
          mod.define_sorbet_constant!(:TaggedBoolean) { T.type_alias { T::Boolean } }
          mod.define_sorbet_constant!(:OrBoolean) { T.type_alias { T::Boolean } }
        in Integer
          mod.define_sorbet_constant!(:TaggedInteger) { T.type_alias { Integer } }
          mod.define_sorbet_constant!(:OrInteger) { T.type_alias { Integer } }
        in Float
          mod.define_sorbet_constant!(:TaggedFloat) { T.type_alias { Float } }
          mod.define_sorbet_constant!(:OrFloat) { T.type_alias { Float } }
        in Symbol
          mod.define_sorbet_constant!(:TaggedSymbol) { T.type_alias { Symbol } }
          mod.define_sorbet_constant!(:OrSymbol) { T.type_alias { T.any(Symbol, String) } }
        else
        end
      end
    else
    end
  end

  Whopsdk::Internal::Util.walk_namespaces(Whopsdk::Models)
                         .lazy
                         .grep(Whopsdk::Internal::Type::Union)
                         .each do |mod|
    const = :Variants
    next if mod.sorbet_constant_defined?(const)

    mod.define_sorbet_constant!(const) { T.type_alias { mod.to_sorbet_type } }
  end

  AccessPass = Whopsdk::Models::AccessPass

  AccessPassListItem = Whopsdk::Models::AccessPassListItem

  AccessPassListParams = Whopsdk::Models::AccessPassListParams

  AccessPassRetrieveParams = Whopsdk::Models::AccessPassRetrieveParams

  BusinessTypes = Whopsdk::Models::BusinessTypes

  CollectionMethod = Whopsdk::Models::CollectionMethod

  Company = Whopsdk::Models::Company

  CompanyRetrieveParams = Whopsdk::Models::CompanyRetrieveParams

  CourseLessonInteraction = Whopsdk::Models::CourseLessonInteraction

  CourseLessonInteractionListItem = Whopsdk::Models::CourseLessonInteractionListItem

  CourseLessonInteractionListParams = Whopsdk::Models::CourseLessonInteractionListParams

  CourseLessonInteractionRetrieveParams = Whopsdk::Models::CourseLessonInteractionRetrieveParams

  Currency = Whopsdk::Models::Currency

  IndustryTypes = Whopsdk::Models::IndustryTypes

  Invoice = Whopsdk::Models::Invoice

  InvoiceCreateParams = Whopsdk::Models::InvoiceCreateParams

  InvoiceListItem = Whopsdk::Models::InvoiceListItem

  InvoiceListParams = Whopsdk::Models::InvoiceListParams

  InvoiceRetrieveParams = Whopsdk::Models::InvoiceRetrieveParams

  InvoiceStatus = Whopsdk::Models::InvoiceStatus

  InvoiceVoidParams = Whopsdk::Models::InvoiceVoidParams

  PageInfo = Whopsdk::Models::PageInfo
end
