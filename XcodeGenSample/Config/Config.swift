//
//  Config.swift
//  RewardMSI
//
//  Created by Well on 2021/7/8.
//

import Foundation

struct Config {
    enum Mode: String {
        case uatDebug = "uat-debug"
        case uatRelease = "uat-release"
        case prodDebug = "prod-dev"
        case prodRelease = "prod-release"
        case unknown = ""
        init(string: String) {
            self = Mode(rawValue: string) ?? .unknown
        }

        var configName: String {
            switch self {
            case .uatDebug:
                return "UAT-Debug"
            case .uatRelease:
                return "UAT-Release"
            case .prodDebug:
                return "PROD-Debug"
            case .prodRelease:
                return "PROD-Release"
            case .unknown:
                return "Unknown"
            }
        }
    }

    enum App {
        static var mode: Config.Mode {
            guard let string = infoPlist(for: "CfgMode") else {
                return .unknown
            }
            return Config.Mode(string: string)
        }

        static var identifier: String {
            let info = infoPlist(for: "CFBundleIdentifier")
            return info ?? ""
        }

        static var version: String {
            let apiKey = infoPlist(for: "CFBundleShortVersionString")
            return apiKey ?? ""
        }

        static var buildNumber: String {
            let apiKey = infoPlist(for: "CFBundleVersion")
            return apiKey ?? ""
        }

        static var name: String {
            let apiKey = infoPlist(for: "CFBundleDisplayName")
            return apiKey ?? ""
        }
    }
}

private func infoPlist(for key: String) -> String? {
    Bundle.main.object(forInfoDictionaryKey: key) as? String
}
