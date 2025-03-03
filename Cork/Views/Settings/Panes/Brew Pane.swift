//
//  Brew Pane.swift
//  Cork
//
//  Created by David Bureš on 06.03.2023.
//

import Foundation
import SwiftUI

struct BrewPane: View
{
    
    @AppStorage("allowBrewAnalytics") var allowBrewAnalytics: Bool = true
    @State private var isPerformingBrewAnalyticsChangeCommand: Bool = false
    
    var body: some View
    {
        SettingsPaneTemplate {
            Form
            {
                LabeledContent {
                    Toggle(isOn: $allowBrewAnalytics) {
                        Text("Collect analytics")
                    }
                    .disabled(isPerformingBrewAnalyticsChangeCommand)
                } label: {
                    Text("Analytics:")
                }

            }
            .onChange(of: allowBrewAnalytics) { newValue in
                if newValue == true
                {
                    Task
                    {
                        isPerformingBrewAnalyticsChangeCommand = true
                        
                        print("Will ENABLE analytics")
                        await shell(AppConstants.brewExecutablePath.absoluteString, ["analytics", "on"])
                        
                        isPerformingBrewAnalyticsChangeCommand = false
                    }
                }
                else if newValue == false
                {
                    Task
                    {
                        isPerformingBrewAnalyticsChangeCommand = true
                        
                        print("Will DISABLE analytics")
                        await shell(AppConstants.brewExecutablePath.absoluteString, ["analytics", "off"])
                        
                        isPerformingBrewAnalyticsChangeCommand = false
                    }
                }
            }
        }
    }
}
