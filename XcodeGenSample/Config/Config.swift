//
//  Config.swift
//  RewardMSI
//
//  Created by Well on 2021/7/8.
//

import Foundation

struct Config {

    enum Mode: String {
        case dev = "dev"
        case staging = "staging"
        case prod = "prod"
        case unknown = ""
        init(string: String) {
            self = Mode(rawValue: string) ?? .unknown
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
