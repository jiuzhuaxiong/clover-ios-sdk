/**
 * Autogenerated by Avro
 * 
 * DO NOT EDIT DIRECTLY
 */
 
import ObjectMapper

extension CLVModels {

public class Inventory {
 
open class Attribute: NSObject, NSCoding, Mappable {
    /// Unique identifier
  open var id: String?
    /// Name of this attribute
  open var name: String?
    /// The item group this attribute belongs to
  open var itemGroup: CLVModels.Base.Reference?
    /// Options associated with this attribute
  open var options: [CLVModels.Inventory.Option]?

open func encode(with aCoder: NSCoder) {
  aCoder.encode(id, forKey: "id")
  aCoder.encode(name, forKey: "name")
  aCoder.encode(itemGroup, forKey: "itemGroup")
  aCoder.encode(options, forKey: "options")
}

required public init(coder aDecoder: NSCoder) {
      id = aDecoder.decodeObject(forKey:"id") as? String
        name = aDecoder.decodeObject(forKey:"name") as? String
        itemGroup = aDecoder.decodeObject(forKey:"itemGroup") as? CLVModels.Base.Reference
        options = aDecoder.decodeObject(forKey:"options") as? [CLVModels.Inventory.Option]
  }

override public init() {}

// Mappable

required public init?(map: Map) {}

public func mapping(map: Map) {
      id <- map["id"]
        name <- map["name"]
        itemGroup <- map["itemGroup"]
        options <- map["options.elements"]
  }
}

 
open class Category: NSObject, NSCoding, Mappable {
    /// Unique identifier
  open var id: String?
    /// The name of the category which will appear in Clover Register App.
  open var name: String?
    /// Integer used to determine how this category is sorted against other categories.
  open var sortOrder: Int?
    /// Ordered list of items associated with this category.
  open var items: [CLVModels.Base.Reference]?

open func encode(with aCoder: NSCoder) {
  aCoder.encode(id, forKey: "id")
  aCoder.encode(name, forKey: "name")
  aCoder.encode(sortOrder, forKey: "sortOrder")
  aCoder.encode(items, forKey: "items")
}

required public init(coder aDecoder: NSCoder) {
      id = aDecoder.decodeObject(forKey:"id") as? String
        name = aDecoder.decodeObject(forKey:"name") as? String
        sortOrder = aDecoder.decodeObject(forKey:"sortOrder") as? Int
        items = aDecoder.decodeObject(forKey:"items") as? [CLVModels.Base.Reference]
  }

override public init() {}

// Mappable

required public init?(map: Map) {}

public func mapping(map: Map) {
      id <- map["id"]
        name <- map["name"]
        sortOrder <- map["sortOrder"]
        items <- map["items.elements"]
  }
}

 
open class Discount: NSObject, NSCoding, Mappable {
    /// Unique identifier
  open var id: String?
    /// Name of the discount
  open var name: String?
    /// Discount amount in fraction of currency unit (e.g. cents) based on currency fraction digits supported
  open var amount: Int?
    /// Discount amount in percent
  open var percentage: Int?

open func encode(with aCoder: NSCoder) {
  aCoder.encode(id, forKey: "id")
  aCoder.encode(name, forKey: "name")
  aCoder.encode(amount, forKey: "amount")
  aCoder.encode(percentage, forKey: "percentage")
}

required public init(coder aDecoder: NSCoder) {
      id = aDecoder.decodeObject(forKey:"id") as? String
        name = aDecoder.decodeObject(forKey:"name") as? String
        amount = aDecoder.decodeObject(forKey:"amount") as? Int
        percentage = aDecoder.decodeObject(forKey:"percentage") as? Int
  }

override public init() {}

// Mappable

required public init?(map: Map) {}

public func mapping(map: Map) {
      id <- map["id"]
        name <- map["name"]
        amount <- map["amount"]
        percentage <- map["percentage"]
  }
}

 
open class Item: NSObject, NSCoding, Mappable {
    /// Unique identifier
  open var id: String?
    /// True if this item is hidden from Clover Register App
  open var hidden: Bool?
    /// Reference to an item group
  open var itemGroup: CLVModels.Base.Reference?
    /// List of options pertaining to this item's attribute variation
  open var options: [CLVModels.Inventory.Option]?
    /// Name of the item
  open var name: String?
    /// Alternate name of the item
  open var alternateName: String?
    /// Product code, e.g. UPC or EAN
  open var code: String?
    /// SKU of the item
  open var sku: String?
    /// Price of the item, typically in cents; use priceType and merchant currency to determine actual item price
  open var price: Int?
  open var priceType: CLVModels.Inventory.PriceType?
    /// Flag to indicate whether or not to use default tax rates
  open var defaultTaxRates: Bool?
    /// Unit name, e.g. oz, lb
  open var unitName: String?
    /// Cost of the item to merchant, as opposed to customer price
  open var cost: Int?
    /// True if this item should be counted as revenue, for example gift cards and donations would not
  open var isRevenue: Bool?
    /// DEPRECATED: use itemStock instead
  open var stockCount: Int?
  open var taxRates: [CLVModels.Inventory.TaxRate]?
  open var modifierGroups: [CLVModels.Inventory.ModifierGroup]?
    /// Categories associated with this item
  open var categories: [CLVModels.Inventory.Category]?
    /// Tags associated with this item
  open var tags: [CLVModels.Inventory.Tag]?
    /// Item stock attribute that can be expanded to show stock quantity
  open var itemStock: CLVModels.Inventory.ItemStock?
  open var modifiedTime: Date?

open func encode(with aCoder: NSCoder) {
  aCoder.encode(id, forKey: "id")
  aCoder.encode(hidden, forKey: "hidden")
  aCoder.encode(itemGroup, forKey: "itemGroup")
  aCoder.encode(options, forKey: "options")
  aCoder.encode(name, forKey: "name")
  aCoder.encode(alternateName, forKey: "alternateName")
  aCoder.encode(code, forKey: "code")
  aCoder.encode(sku, forKey: "sku")
  aCoder.encode(price, forKey: "price")
  aCoder.encode(priceType?.rawValue, forKey: "priceType")
  aCoder.encode(defaultTaxRates, forKey: "defaultTaxRates")
  aCoder.encode(unitName, forKey: "unitName")
  aCoder.encode(cost, forKey: "cost")
  aCoder.encode(isRevenue, forKey: "isRevenue")
  aCoder.encode(stockCount, forKey: "stockCount")
  aCoder.encode(taxRates, forKey: "taxRates")
  aCoder.encode(modifierGroups, forKey: "modifierGroups")
  aCoder.encode(categories, forKey: "categories")
  aCoder.encode(tags, forKey: "tags")
  aCoder.encode(itemStock, forKey: "itemStock")
  aCoder.encode(modifiedTime, forKey: "modifiedTime")
}

required public init(coder aDecoder: NSCoder) {
      id = aDecoder.decodeObject(forKey:"id") as? String
        hidden = aDecoder.decodeObject(forKey:"hidden") as? Bool
        itemGroup = aDecoder.decodeObject(forKey:"itemGroup") as? CLVModels.Base.Reference
        options = aDecoder.decodeObject(forKey:"options") as? [CLVModels.Inventory.Option]
        name = aDecoder.decodeObject(forKey:"name") as? String
        alternateName = aDecoder.decodeObject(forKey:"alternateName") as? String
        code = aDecoder.decodeObject(forKey:"code") as? String
        sku = aDecoder.decodeObject(forKey:"sku") as? String
        price = aDecoder.decodeObject(forKey:"price") as? Int
        priceType = (aDecoder.decodeObject(forKey:"priceType") as? String) != nil ?
      CLVModels.Inventory.PriceType(rawValue: (aDecoder.decodeObject(forKey:"priceType") as! String)) : nil
        defaultTaxRates = aDecoder.decodeObject(forKey:"defaultTaxRates") as? Bool
        unitName = aDecoder.decodeObject(forKey:"unitName") as? String
        cost = aDecoder.decodeObject(forKey:"cost") as? Int
        isRevenue = aDecoder.decodeObject(forKey:"isRevenue") as? Bool
        stockCount = aDecoder.decodeObject(forKey:"stockCount") as? Int
        taxRates = aDecoder.decodeObject(forKey:"taxRates") as? [CLVModels.Inventory.TaxRate]
        modifierGroups = aDecoder.decodeObject(forKey:"modifierGroups") as? [CLVModels.Inventory.ModifierGroup]
        categories = aDecoder.decodeObject(forKey:"categories") as? [CLVModels.Inventory.Category]
        tags = aDecoder.decodeObject(forKey:"tags") as? [CLVModels.Inventory.Tag]
        itemStock = aDecoder.decodeObject(forKey:"itemStock") as? CLVModels.Inventory.ItemStock
        modifiedTime = aDecoder.decodeObject(forKey:"modifiedTime") as? Date
  }

override public init() {}

// Mappable

required public init?(map: Map) {}

public func mapping(map: Map) {
      id <- map["id"]
        hidden <- map["hidden"]
        itemGroup <- map["itemGroup"]
        options <- map["options.elements"]
        name <- map["name"]
        alternateName <- map["alternateName"]
        code <- map["code"]
        sku <- map["sku"]
        price <- map["price"]
        priceType <- map["priceType"]
        defaultTaxRates <- map["defaultTaxRates"]
        unitName <- map["unitName"]
        cost <- map["cost"]
        isRevenue <- map["isRevenue"]
        stockCount <- map["stockCount"]
        taxRates <- map["taxRates.elements"]
        modifierGroups <- map["modifierGroups.elements"]
        categories <- map["categories.elements"]
        tags <- map["tags.elements"]
        itemStock <- map["itemStock"]
        modifiedTime <- (map["modifiedTime"], CLVDateTransform())
  }
}

 
open class ItemGroup: NSObject, NSCoding, Mappable {
    /// Unique identifier
  open var id: String?
    /// Name of the option
  open var name: String?
    /// Items that are members of this group
  open var items: [CLVModels.Base.Reference]?
    /// Attributes that belong to this group
  open var attributes: [CLVModels.Base.Reference]?

open func encode(with aCoder: NSCoder) {
  aCoder.encode(id, forKey: "id")
  aCoder.encode(name, forKey: "name")
  aCoder.encode(items, forKey: "items")
  aCoder.encode(attributes, forKey: "attributes")
}

required public init(coder aDecoder: NSCoder) {
      id = aDecoder.decodeObject(forKey:"id") as? String
        name = aDecoder.decodeObject(forKey:"name") as? String
        items = aDecoder.decodeObject(forKey:"items") as? [CLVModels.Base.Reference]
        attributes = aDecoder.decodeObject(forKey:"attributes") as? [CLVModels.Base.Reference]
  }

override public init() {}

// Mappable

required public init?(map: Map) {}

public func mapping(map: Map) {
      id <- map["id"]
        name <- map["name"]
        items <- map["items.elements"]
        attributes <- map["attributes.elements"]
  }
}

 
/// The class is used to update the item stock.
open class ItemStock: NSObject, NSCoding, Mappable {
    /// Reference to an item
  open var item: CLVModels.Base.Reference?
    /// DEPRECATED: use quantity instead
  open var stockCount: Int?
    /// Current count of this item in stock
  open var quantity: Double?

open func encode(with aCoder: NSCoder) {
  aCoder.encode(item, forKey: "item")
  aCoder.encode(stockCount, forKey: "stockCount")
  aCoder.encode(quantity, forKey: "quantity")
}

required public init(coder aDecoder: NSCoder) {
      item = aDecoder.decodeObject(forKey:"item") as? CLVModels.Base.Reference
        stockCount = aDecoder.decodeObject(forKey:"stockCount") as? Int
        quantity = aDecoder.decodeObject(forKey:"quantity") as? Double
  }

override public init() {}

// Mappable

required public init?(map: Map) {}

public func mapping(map: Map) {
      item <- map["item"]
        stockCount <- map["stockCount"]
        quantity <- map["quantity"]
  }
}

 
open class Modifier: NSObject, NSCoding, Mappable {
    /// Unique identifier
  open var id: String?
    /// Name of the modifier
  open var name: String?
    /// Alternate name of the modifier
  open var alternateName: String?
    /// Additional cost when used
  open var price: Int?
  open var modifierGroup: CLVModels.Base.Reference?

open func encode(with aCoder: NSCoder) {
  aCoder.encode(id, forKey: "id")
  aCoder.encode(name, forKey: "name")
  aCoder.encode(alternateName, forKey: "alternateName")
  aCoder.encode(price, forKey: "price")
  aCoder.encode(modifierGroup, forKey: "modifierGroup")
}

required public init(coder aDecoder: NSCoder) {
      id = aDecoder.decodeObject(forKey:"id") as? String
        name = aDecoder.decodeObject(forKey:"name") as? String
        alternateName = aDecoder.decodeObject(forKey:"alternateName") as? String
        price = aDecoder.decodeObject(forKey:"price") as? Int
        modifierGroup = aDecoder.decodeObject(forKey:"modifierGroup") as? CLVModels.Base.Reference
  }

override public init() {}

// Mappable

required public init?(map: Map) {}

public func mapping(map: Map) {
      id <- map["id"]
        name <- map["name"]
        alternateName <- map["alternateName"]
        price <- map["price"]
        modifierGroup <- map["modifierGroup"]
  }
}

 
open class ModifierGroup: NSObject, NSCoding, Mappable {
    /// Unique identifier
  open var id: String?
    /// Name of the modifier group
  open var name: String?
  open var alternateName: String?
    /// The minimum amount of modifiers from this group that must be applied to associated lineItems when using Register
  open var minRequired: Int?
    /// The maximum amount of modifiers from this group that can be applied to associated lineItems when using Register
  open var maxAllowed: Int?
    /// Whether employees will be automatically prompted to add modifiers from this category when using Register
  open var showByDefault: Bool?
  open var modifiers: [CLVModels.Inventory.Modifier]?
    /// An ordered, comma-separated list of modifier ids in this group. (READ ONLY)
  open var modifierIds: String?
  open var items: [CLVModels.Base.Reference]?
    /// The relative order that this modifier group should appear in the list of modifier groups. Lower values will appear first and modifier groups without a priority assigned will appear in alphabetical order after those with one.
  open var priority: String?

open func encode(with aCoder: NSCoder) {
  aCoder.encode(id, forKey: "id")
  aCoder.encode(name, forKey: "name")
  aCoder.encode(alternateName, forKey: "alternateName")
  aCoder.encode(minRequired, forKey: "minRequired")
  aCoder.encode(maxAllowed, forKey: "maxAllowed")
  aCoder.encode(showByDefault, forKey: "showByDefault")
  aCoder.encode(modifiers, forKey: "modifiers")
  aCoder.encode(modifierIds, forKey: "modifierIds")
  aCoder.encode(items, forKey: "items")
  aCoder.encode(priority, forKey: "priority")
}

required public init(coder aDecoder: NSCoder) {
      id = aDecoder.decodeObject(forKey:"id") as? String
        name = aDecoder.decodeObject(forKey:"name") as? String
        alternateName = aDecoder.decodeObject(forKey:"alternateName") as? String
        minRequired = aDecoder.decodeObject(forKey:"minRequired") as? Int
        maxAllowed = aDecoder.decodeObject(forKey:"maxAllowed") as? Int
        showByDefault = aDecoder.decodeObject(forKey:"showByDefault") as? Bool
        modifiers = aDecoder.decodeObject(forKey:"modifiers") as? [CLVModels.Inventory.Modifier]
        modifierIds = aDecoder.decodeObject(forKey:"modifierIds") as? String
        items = aDecoder.decodeObject(forKey:"items") as? [CLVModels.Base.Reference]
        priority = aDecoder.decodeObject(forKey:"priority") as? String
  }

override public init() {}

// Mappable

required public init?(map: Map) {}

public func mapping(map: Map) {
      id <- map["id"]
        name <- map["name"]
        alternateName <- map["alternateName"]
        minRequired <- map["minRequired"]
        maxAllowed <- map["maxAllowed"]
        showByDefault <- map["showByDefault"]
        modifiers <- map["modifiers.elements"]
        modifierIds <- map["modifierIds"]
        items <- map["items.elements"]
        priority <- map["priority"]
  }
}

 
open class Option: NSObject, NSCoding, Mappable {
    /// Unique identifier
  open var id: String?
    /// Name of the option
  open var name: String?
  open var attribute: CLVModels.Base.Reference?
    /// Items associated with this option
  open var items: [CLVModels.Base.Reference]?

open func encode(with aCoder: NSCoder) {
  aCoder.encode(id, forKey: "id")
  aCoder.encode(name, forKey: "name")
  aCoder.encode(attribute, forKey: "attribute")
  aCoder.encode(items, forKey: "items")
}

required public init(coder aDecoder: NSCoder) {
      id = aDecoder.decodeObject(forKey:"id") as? String
        name = aDecoder.decodeObject(forKey:"name") as? String
        attribute = aDecoder.decodeObject(forKey:"attribute") as? CLVModels.Base.Reference
        items = aDecoder.decodeObject(forKey:"items") as? [CLVModels.Base.Reference]
  }

override public init() {}

// Mappable

required public init?(map: Map) {}

public func mapping(map: Map) {
      id <- map["id"]
        name <- map["name"]
        attribute <- map["attribute"]
        items <- map["items.elements"]
  }
}

 
public enum PriceType: String {
  case FIXED
  case VARIABLE
  case PER_UNIT
}

 
open class Tag: NSObject, NSCoding, Mappable {
    /// Unique identifier
  open var id: String?
    /// Tag name
  open var name: String?
    /// Items associated with this tag
  open var items: [CLVModels.Base.Reference]?
    /// Printers associated with this tag
  open var printers: [CLVModels.Base.Reference]?

open func encode(with aCoder: NSCoder) {
  aCoder.encode(id, forKey: "id")
  aCoder.encode(name, forKey: "name")
  aCoder.encode(items, forKey: "items")
  aCoder.encode(printers, forKey: "printers")
}

required public init(coder aDecoder: NSCoder) {
      id = aDecoder.decodeObject(forKey:"id") as? String
        name = aDecoder.decodeObject(forKey:"name") as? String
        items = aDecoder.decodeObject(forKey:"items") as? [CLVModels.Base.Reference]
        printers = aDecoder.decodeObject(forKey:"printers") as? [CLVModels.Base.Reference]
  }

override public init() {}

// Mappable

required public init?(map: Map) {}

public func mapping(map: Map) {
      id <- map["id"]
        name <- map["name"]
        items <- map["items.elements"]
        printers <- map["printers.elements"]
  }
}

 
open class TaxRate: NSObject, NSCoding, Mappable {
  open var id: String?
    /// The line item with which the tax rate is associated
  open var lineItemRef: CLVModels.Base.Reference?
  open var name: String?
  open var rate: Int?
  open var isDefault: Bool?
    /// Items associated with this tax rate
  open var items: [CLVModels.Base.Reference]?

open func encode(with aCoder: NSCoder) {
  aCoder.encode(id, forKey: "id")
  aCoder.encode(lineItemRef, forKey: "lineItemRef")
  aCoder.encode(name, forKey: "name")
  aCoder.encode(rate, forKey: "rate")
  aCoder.encode(isDefault, forKey: "isDefault")
  aCoder.encode(items, forKey: "items")
}

required public init(coder aDecoder: NSCoder) {
      id = aDecoder.decodeObject(forKey:"id") as? String
        lineItemRef = aDecoder.decodeObject(forKey:"lineItemRef") as? CLVModels.Base.Reference
        name = aDecoder.decodeObject(forKey:"name") as? String
        rate = aDecoder.decodeObject(forKey:"rate") as? Int
        isDefault = aDecoder.decodeObject(forKey:"isDefault") as? Bool
        items = aDecoder.decodeObject(forKey:"items") as? [CLVModels.Base.Reference]
  }

override public init() {}

// Mappable

required public init?(map: Map) {}

public func mapping(map: Map) {
      id <- map["id"]
        lineItemRef <- map["lineItemRef"]
        name <- map["name"]
        rate <- map["rate"]
        isDefault <- map["isDefault"]
        items <- map["items.elements"]
  }
}

}

}