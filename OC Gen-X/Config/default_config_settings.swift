import Foundation

//FIXME: These settings are based off the release Sample.plist that comes with OpenCorePkg/Docs
var config = Root(
    acpi: acpi(add: [acpiAdd(comment: "", enabled: false, path: "")],
          delete: [acpiDelete(all: false, comment: "", enabled: false, oemTableId: Data(), tableLength: 0, tableSignature: Data())],
          patch: [acpiPatch(comment: "", count: 0, enabled: false, find: Data(), limit: 0, mask: Data(), oemTableId: Data(), replace: Data(), replaceMask: Data(), skip: 0, tableLength: 0, tableSignature: Data())],
          quirks: acpuQuirks(fadtEnableReset: false, normalizeHeader: false, rebaseRegions: false, resetHwSig: false, resetLogoStatus: false)),
                  
    booter: booter(mmioWhitelist: [mmioWhitelist(address: 0, comment: "", enabled: false)],
            quirks: booterQuirks(avoidRuntimeDefrag: true, devirtualiseMmio: false, disableSingleUser: false, disableVariableWrite: false, discardHibernateMap: false, enableSafeModeSlide: true, enableWriteUnprotector: true, forceExitBootServices: false, protectMemoryRegion: false, protectSecureBoot: false, protectUefiServices: false, provideCustomSlide: true, rebuildAppleMemoryMap: false, setupVirtualMap: true, signalAppleOS: false, syncRuntimePermissions: false)),
                
    deviceProperties: deviceProperties(add: [dpAdd()],
                      delete: [dpDelete()]),
                
    kernel: kernel(kAdd: [kAdd(bundlePath: "", comment: "", enabled: false, executablePath: "", maxKernel: "", minKernel: "", plistPath: "")],
            kBlock: [kBlock()],
            emulate: emulate(cpuid1Data: Data(), cpuid1Mask: Data()),
            kPatch: [kPatch(base: "", comment: "", count: 0, enabled: false, find: Data(), identifier: "", limit: 0, mask: Data(), maxKernel: "", minKernel: "", replace: Data(), replaceMask: Data(), skip: 0)],
            kQuirks: kQuirks(appleCpuPmCfgLock: false, appleXcpmCfgLock: false, appleXcpmExtraMsrs: false, appleXcpmForceBoost: false, customSMBIOSGuid: false, disableIoMapper: false, dummyPowerManagement: false, externalDiskIcons: false, increasePciBarSize: false, lapicKernelPanic: false, panicNoKextDump: false, powerTimeoutKernelPanic: false, thirdPartyDrives: false, xhciPortLimit: false)),
                
    misc: misc(blessOverRide: [blessOverRide()],
          boot: boot(consoleAttributes: 0, hibernateMode: "None", hideAuxiliary: false, pickerAttributes: 1, pickerAudioAssist: false, pickerMode: "Builtin", pollAppleHotKeys: false, showPicker: true, takeoffDelay: 0, timeout: 5),
          debug: debug(appleDebug: false, applePanic: false, disableWatchDog: false, displayDelay: 0, displayLevel: 2147483650, sysReport: false, target: 3),
          entries: [entries()],
          security: security(allowNvramReset: false, allowSetDefault: false, authRestart: false, blacklistAppleUpdate: true, bootProtect: "Bootstrap", exposeSensitiveData: 6, haltLevel: 2147483650, scanPolicy: 17760515, vault: "Secure"),
          tools: [tools()]),
                
    nvram: nvram(add: nAdd(addAppleVendorVariableGuid: addAppleVendorVariableGuid(defaultBackgroundColor: Data(), uiScale: Data()), addAppleVendorGuid: addAppleVendorGuid(rtcBlacklist: Data()), addAppleBootVariableGuid: addAppleBootVariableGuid(systemAudioVolume: Data(), bootArgs: "-v keepsyms=1", csrActiveConfig: Data(), nvdaDrv: Data(), prevLangKbd: Data())),
           delete: nDelete(blockAppleVendorVariableGuid: [blockAppleVendorVariableGuid()], blockAppleBootVariableGuid: [blockAppleBootVariableGuid()]),
           legacyEnable: false, legacyOverwrite: false,
           legacySchema: legacySchema(legacyAppleBootVariableGuid: [legacyAppleBootVariableGuid()], legacyEfiGlobalVariable: [legacyEfiGlobalVariable()]),
           writeFlash: true),
                
    platFormInfo: platFormInfo(automatic: true, generic: generic(adviseWindows: false, mlb: "M0000000000000001", rom: Data(), spoofVendor: false, systemProductName: "iMac19,1", systemSerialNumber: "W00000000001", systemUUID: "00000000-0000-0000-0000-000000000000"), updateDataHub: true, updateNVRAM: true, updateSMBIOS: true, updateSMBIOSMode: "Create"),
                
    uefi: uefi(apfs: apfs(enableJumpstart: true, hideVerbose: true, jumpstartHotPlug: false, minDate: 0, minVersion: 0),
          audio: audio(audioCodec: 0, audioDevice: "PciRoot(0x0)/Pci(0x1b,0x0)", audioOut: 0, audioSupport: false, minimumVolume: 20, playChime: false, volumeAmplifier: 0),
          connectDrivers: true,
          drivers: [],
          input: input(keyFiltering: false, keyForgetThreshold: 5, keyMergeThreshold: 2, keySupport: true, keySupportMode: "Auto", keySwap: false, pointerSupport: false, pointerSupportMode: "ASUS", timerResolution: 50000),
          output: output(clearScreenOnModeSwitch: false, consoleMode: "", directGopRendering: false, ignoreTextInGraphics: false, provideConsoleGop: true, reconnectOnResChange: false, replaceTabWithSpace: false, resolution: "Max", sanitiseClearScreen: false, textRenderer: "BuiltinGraphics"),
          protocols: protocols(appleAudio: false, appleBootPolicy: false, appleDebugLog: false, appleEvent: false, appleImageConversion: false, appleKeyMap: false, appleRtcRam: false, appleSmcIo: false, appleUserInterfaceTheme: false, dataHub: false, deviceProperties: false, firmwareVolume: false, hashServices: false, osInfo: false, unicodeCollation: false),
          quirks: uQuirks(deduplicateBootOrder: true, exitBootServicesDelay: 0, ignoreInvalidFlexRatio: false, releaseUsbOwnership: false, requestBootVarRouting: true, tscSyncTimeout: 0, unblockFsConnect: false),
          reservedMemory: [reservedMemory()])
)
