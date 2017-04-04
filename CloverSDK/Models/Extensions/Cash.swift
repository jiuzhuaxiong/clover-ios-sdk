/**
 * Autogenerated by Avro
 * 
 * DO NOT EDIT DIRECTLY
 */
 
import ObjectMapper

extension CLVModels {

public class Cash {
 
open class CashEvent: NSObject, NSCoding, Mappable {
    /// The type of event that occurred
  open var type_: CLVModels.Cash.Type_?
    /// The amount that was either added, removed of modified by the event
  open var amountChange: Int?
    /// Time at which the event was exectued
  open var timestamp: Int?
    /// Any additional information regarding the event
  open var note: String?
    /// The employee who performed the event
  open var employee: CLVModels.Employees.Employee?
    /// The device that initiated the event
  open var device: CLVModels.Device.Device?

open func encode(with aCoder: NSCoder) {
  aCoder.encode(type_?.rawValue, forKey: "type_")
  aCoder.encode(amountChange, forKey: "amountChange")
  aCoder.encode(timestamp, forKey: "timestamp")
  aCoder.encode(note, forKey: "note")
  aCoder.encode(employee, forKey: "employee")
  aCoder.encode(device, forKey: "device")
}

required public init(coder aDecoder: NSCoder) {
      type_ = (aDecoder.decodeObject(forKey:"type_") as? String) != nil ?
      CLVModels.Cash.Type_(rawValue: (aDecoder.decodeObject(forKey:"type_") as! String)) : nil
        amountChange = aDecoder.decodeObject(forKey:"amountChange") as? Int
        timestamp = aDecoder.decodeObject(forKey:"timestamp") as? Int
        note = aDecoder.decodeObject(forKey:"note") as? String
        employee = aDecoder.decodeObject(forKey:"employee") as? CLVModels.Employees.Employee
        device = aDecoder.decodeObject(forKey:"device") as? CLVModels.Device.Device
  }

override public init() {}

// Mappable

required public init?(map: Map) {}

public func mapping(map: Map) {
      type_ <- map["type"]
        amountChange <- map["amountChange"]
        timestamp <- map["timestamp"]
        note <- map["note"]
        employee <- map["employee"]
        device <- map["device"]
  }
}

 
public enum Type_: String {
  case LOAD
  case TRANSACTION
  case OPEN
  case ADJUSTMENT
  case COUNT
  case UNLOAD
}

}

}