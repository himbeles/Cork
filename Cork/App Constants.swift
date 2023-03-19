//
//  App Constants.swift
//  Cork
//
//  Created by David Bureš on 03.07.2022.
//

import Foundation
import SwiftyJSON

struct AppConstants {
    static let brewExecutablePath: URL =
    {
        if FileManager.default.fileExists(atPath: "/opt/homebrew/bin/brew")
        { // Apple Sillicon
            return URL(string: "/opt/homebrew/bin/brew")!
        }
        else if FileManager.default.fileExists(atPath: "/usr/local/bin/brew")
        { // Intel
            return URL(string: "/usr/local/bin/brew")!
        }
        else
        { // Not installed
            return URL(string: "/")!
        }
    }()
    static let brewCellarPath: URL =
    {
        if FileManager.default.fileExists(atPath: "/opt/homebrew/Cellar")
        { // Apple Sillicon
            return URL(string: "/opt/homebrew/Cellar")!
        }
        else
        { // Intel
            return URL(string: "/usr/local/Cellar")!
        }
    }()
    static let brewCaskPath: URL =
    {
        if FileManager.default.fileExists(atPath: "/opt/homebrew/Caskroom")
        { // Apple Sillicon
            return URL(string: "/opt/homebrew/Caskroom")!
        }
        else
        { // Intel
            return URL(string: "/usr/local/Caskroom")!
        }
    }()
    
    static let brewCachePath: URL = URL(string: NSSearchPathForDirectoriesInDomains(.libraryDirectory, .userDomainMask, true).first!)!.appendingPathComponent("Caches", conformingTo: .directory).appendingPathComponent("Homebrew", conformingTo: .directory) // /Users/david/Library/Caches/Homebrew
    
    /// These two have the symlinks to the actual downloads
    static let brewCachedFormulaeDownloadsPath: URL = brewCachePath
    static let brewCachedCasksDownloadsPath: URL = brewCachePath.appendingPathComponent("Cask", conformingTo: .directory)
    
    /// This one has all the downloaded files themselves
    static let brewCachedDownloadsPath: URL = brewCachePath.appendingPathComponent("downloads", conformingTo: .directory)
}
