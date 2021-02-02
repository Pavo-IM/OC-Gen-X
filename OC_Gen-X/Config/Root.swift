import Foundation

struct Root: Codable {
    var acpi:acpi
    var booter: booter
    var deviceProperties: deviceProperties
    var kernel: kernel
    var misc: misc
    var nvram: nvram
    var platFormInfo: platFormInfo
    var uefi: uefi
    
    enum CodingKeys: String, CodingKey {
        case acpi = "ACPI"
        case booter = "Booter"
        case deviceProperties = "DeviceProperties"
        case kernel = "Kernel"
        case misc = "Misc"
        case nvram = "NVRAM"
        case platFormInfo = "PlatformInfo"
        case uefi = "UEFI"
    }
}
