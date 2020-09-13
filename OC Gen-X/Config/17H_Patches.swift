import Foundation

let secondRyzenPatch = kPatch(base: "_cpu_topology_sort", comment: "algrey - cpu_topology_sort -disable _x86_validate_topology", count: 1, enabled: true, find: Data([0xE8, 0x00, 0x00, 0xFF, 0xFF]), identifier: "kernel", limit: 0, mask: Data([0xFF, 0x00, 0x00, 0xFF, 0xFF]), maxKernel: "19.99.99", minKernel: "17.0.0", replace: Data([0x0F, 0x1F, 0x44, 0x00, 0x00]), replaceMask: Data(), skip: 0)

let twelfthRyzenPatch = kPatch(base: "", comment: "algrey - cpuid_set_generic_info - disable check to allow leaf7", count: 1, enabled: true, find: Data([0x00, 0x3A, 0x0F, 0x82]), identifier: "kernel", limit: 0, mask: Data(), maxKernel: "19.99.99", minKernel: "17.0.0", replace: Data([0x00, 0x00, 0x0F, 0x82]), replaceMask: Data(), skip: 0)
