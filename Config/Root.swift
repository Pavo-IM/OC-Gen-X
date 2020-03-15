import Foundation

struct Root: Codable {
    var acpi:acpi
    var booter: booter
    var deviceProperties: deviceProperties
    var kernel: kernel
    var misc: misc
}
