import Foundation

struct PlistGet: Codable {
    let buildMachineOSBuild, cfBundleDevelopmentRegion, cfBundleGetInfoString, cfBundleIdentifier: String
    let cfBundleInfoDictionaryVersion, cfBundleName, cfBundlePackageType, cfBundleShortVersionString: String
    let cfBundleSignature, cfBundleVersion, nsHumanReadableCopyright: String
    let IOKitPersonalities: IOKitPersonalities
    let osBundleRequired: String
    
    enum CodingKeys: String, CodingKey {
        case buildMachineOSBuild = "BuildMachineOSBuild"
        case cfBundleDevelopmentRegion = "CFBundleDevelopmentRegion"
        case cfBundleGetInfoString = "CFBundleGetInfoString"
        case cfBundleIdentifier = "CFBundleIdentifier"
        case cfBundleInfoDictionaryVersion = "CFBundleInfoDictionaryVersion"
        case cfBundleName = "CFBundleName"
        case cfBundlePackageType = "CFBundlePackageType"
        case cfBundleShortVersionString = "CFBundleShortVersionString"
        case cfBundleSignature = "CFBundleSignature"
        case cfBundleVersion = "CFBundleVersion"
        case nsHumanReadableCopyright = "NSHumanReadableCopyright"
        case IOKitPersonalities
        case osBundleRequired = "OSBundleRequired"
    }
    
    struct IOKitPersonalities: Codable {
        let AGPM: AGPM
        
        struct AGPM: Codable {
            let cfBundleIdentifier, ioClass, ioNameMatch, ioProviderClass: String
            let Machines: [String: Machines]
            
            enum CodingKeys: String, CodingKey {
                case cfBundleIdentifier = "CFBundleIdentifier"
                case ioClass = "IOClass"
                case ioNameMatch = "IONameMatch"
                case ioProviderClass = "IOProviderClass"
                case Machines
            }
            
            struct Machines: Codable {
            }
        }
    }
}

struct setPlist: Encodable {
    let buildMachineOSBuild, cfBundleDevelopmentRegion, cfBundleGetInfoString, cfBundleIdentifier: String
    let cfBundleInfoDictionaryVersion, cfBundleName, cfBundlePackageType, cfBundleShortVersionString: String
    let cfBundleSignature, cfBundleVersion, nsHumanReadableCopyright: String
    let setIOKitPersonalities: setIOKitPersonalities
    let osBundleRequired: String
    enum CodingKeys: String, CodingKey {
        case buildMachineOSBuild = "BuildMachineOSBuild"
        case cfBundleDevelopmentRegion = "CFBundleDevelopmentRegion"
        case cfBundleGetInfoString = "CFBundleGetInfoString"
        case cfBundleIdentifier = "CFBundleIdentifier"
        case cfBundleInfoDictionaryVersion = "CFBundleInfoDictionaryVersion"
        case cfBundleName = "CFBundleName"
        case cfBundlePackageType = "CFBundlePackageType"
        case cfBundleShortVersionString = "CFBundleShortVersionString"
        case cfBundleSignature = "CFBundleSignature"
        case cfBundleVersion = "CFBundleVersion"
        case nsHumanReadableCopyright = "NSHumanReadableCopyright"
        case setIOKitPersonalities = "IOKitPersonalities"
        case osBundleRequired = "OSBundleRequired"
    }
}

struct setIOKitPersonalities: Encodable {
    let setAGPM: setAGPM
    
    enum CodingKeys: String, CodingKey {
        case setAGPM = "AGPM"
    }
}

struct setAGPM: Encodable {
    let cfBundleIdentifier, ioClass, ioNameMatch, ioProviderClass: String
    let setMachines: setMachines
    enum CodingKeys: String, CodingKey {
        case cfBundleIdentifier = "CFBundleIdentifier"
        case ioClass = "IOClass"
        case ioNameMatch = "IONameMatch"
        case ioProviderClass = "IOProviderClass"
        case setMachines = "Machines"
    }
}

struct setMachines: Encodable {
    let machine: setMachine
    func encode(to encoder: Encoder) throws {
        var machinecontainer = encoder.container(keyedBy: setMachine.MachineType.self)
        try machinecontainer.encode(machine, forKey: machine.machinetype)
    }
}

struct setMachine: Encodable {
    let machinetype: MachineType
    let setGPUs: setGpu
    
    func encode(to encoder: Encoder) throws {
        var gpucontainer = encoder.container(keyedBy: setGpu.Gputype.self)
        try gpucontainer.encode(setGPUs, forKey: setGPUs.gpu)
    }
    
    enum MachineType: String, CodingKey, Codable {
        case iMacPro11 = "iMacPro1,1"
        case macPro51 = "MacPro5,1"
        case macPro41 = "MacPro4,1"
        case macPro61 = "MacPro6,1"
        case macPro71 = "MacPro7,1"
        case iMac101 = "iMac10,1"
        case iMac111 = "iMac11,1"
        case iMac112 = "iMac11,2"
        case iMac113 = "iMac11,3"
        case iMac121 = "iMac12,1"
        case iMac122 = "iMac12,2"
        case iMac131 = "iMac13,1"
        case iMac132 = "iMac13,2"
        case iMac133 = "iMac13,3"
        case iMac141 = "iMac14,1"
        case iMac142 = "iMac14,2"
        case iMac143 = "iMac14,3"
        case iMac144 = "iMac14,4"
        case iMac151 = "iMac15,1"
        case iMac152 = "iMac15,2"
        case iMac161 = "iMac16,1"
        case iMac162 = "iMac16,2"
        case iMac171 = "iMac17,1"
        case iMac181 = "iMac18,1"
        case iMac182 = "iMac18,2"
        case iMac183 = "iMac18,3"
        case iMac191 = "iMac19,1"
        case iMac192 = "iMac19,2"
        case iMac201 = "iMac20,1"
        case iMac202 = "iMac20,2"
     }
}

struct setGpu: Encodable {
    let gpu: Gputype
    let agdcEnabled: Int
    let setHeuristic: setHeuristic
    let controlID: Int
    let maxPowerState: Int
    let minPowerState: Int

    enum Gputype: String, CodingKey, Codable {
        case RX5600XT = "Vendor1002Device731F"
        case RX5500XT = "Vendor1002Device7340"
        case RX5700XT = "Vendor1002Device731f"
        case RadeonVII = "Vendor1002Device66af"
        case R9270 = "Vendor1002Device6811"
        case R9270X = "Vendor1002Device6810"
        case R9280 = "Vendor1002Device679a"
        case R9280X = "Vendor1002Device6798"
        case R9295X2 = "Vendor1002Device67b9"
        case R9380 = "Vendor1002Device6939"
        case R9380X = "Vendor1002Device6938"
        case R9290390 = "Vendor1002Device67b1"
        case R9290X390X = "Vendor1002Device67b0"
        case R9Fury = "Vendor1002Device7300"
        case RX460 = "Vendor1002Device67ef"
        case RX550 = "Vendor1002Device699f"
        case RX560 = "Vendor1002Device67ff"
        case RX470480570580590 = "Vendor1002Device67df"
        case Vega5664 = "Vendor1002Device687f"
        case VegaFrontier = "Vendor1002Device6863"
        case ProDuo = "Vendor1002Device67c4"
        case W7100 = "Vendor1002Device692b"
        case W9100 = "Vendor1002Device67a0"
        case GT710 = "Vendor10deDevice128b"
        case GT730 = "Vendor10deDevice1287"
        case GTX650 = "Vendor10deDevice0fc6"
        case GTX650Ti = "Vendor10deDevice11c6"
        case GTX650TIBoost = "Vendor10deDevice11c2"
        case GTX760 = "Vendor10deDevice1187"
        case GTX760Ti = "Vendor10deDevice1189"
        case GTX770 = "Vendor10deDevice1184"
        case GTX780 = "Vendor10deDevice1004"
        case GTX780Ti = "Vendor10deDevice100a"
        case GTX950 = "Vendor10deDevice1402"
        case GTX960 = "Vendor10deDevice1401"
        case GTX970 = "Vendor10deDevice13c2"
        case GTX980 = "Vendor10deDevice13c0"
        case GTX980Ti = "Vendor10deDevice17c8"
        case GTX1050 = "Vendor10deDevice1c81"
        case GTX1050Ti = "Vendor10deDevice1c82"
        case GTX1060 = "Vendor10deDevice1c02"
        case GTX1070 = "Vendor10deDevice1b81"
        case GTX1070Ti = "Vendor10deDevice1b82"
        case GTX1080 = "Vendor10deDevice1b80"
        case GTX1080Ti = "Vendor10deDevice1b06"
        case GTXTitan = "Vendor10deDevice1005"
        case TitanV = "Vendor10deDevice1d81"
        case TitanX = "Vendor10deDevice1b00"
        case TitanXP = "Vendor10deDevice1b02"
        case GTXTitanBlack = "Vendor10deDevice100c"
    }
    
    enum CodingKeys: String, CodingKey {
        case agdcEnabled = "AGDCEnabled"
        case setHeuristic = "Heuristic"
        case controlID = "control-id"
        case maxPowerState = "max-power-state"
        case minPowerState = "min-power-state"
    }
}

struct setHeuristic: Encodable {
    let setID: Int
    
    enum CodingKeys: String, CodingKey {
        case setID = "ID"
    }
}
