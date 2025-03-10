//
//  Perform Brew HEalth Check.swift
//  Cork
//
//  Created by David Bureš on 16.02.2023.
//

import Foundation

enum HealthCheckError: Error
{
    case errorsThrownInStandardOutput
}

func performBrewHealthCheck() async throws -> TerminalOutput
{
    async let commandResult = await shell(AppConstants.brewExecutablePath.absoluteString, ["doctor"])
    
    await print(commandResult)
    
    if await commandResult.standardOutput == ""
    {
        return await commandResult
    }
    else
    {
        print("ERROR: \(await commandResult.standardOutput)")
        throw HealthCheckError.errorsThrownInStandardOutput
    }
}
