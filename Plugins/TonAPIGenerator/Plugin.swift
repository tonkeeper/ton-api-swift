//
//  Plugin.swift
//  
//
//  Created by Grigory on 17.6.23..
//

import Foundation
import PackagePlugin

@main
struct TonAPIGeneratorPlugin: BuildToolPlugin {
  func createBuildCommands(
    context: PluginContext,
    target: Target) async throws -> [Command] {
      
      let pluginPath = context.package.directory.appending("Plugins").appending("TonAPIGenerator")
      let schema = pluginPath.appending("openapi.yml")
      let config = pluginPath.appending("create-api.yml")
      let output = context.pluginWorkDirectory
      
      print(output)
      
      return [
        .buildCommand(displayName: "TonAPIGenerator",
                      executable: try context.tool(named: "create-api").path,
                      arguments: [
                        "generate",
                        schema,
                        "--output", output,
                        "--config", config,
                        "--config-option", "module=\(target.name)",
                        "--config-option", "mergeSources=true"
                      ],
                      inputFiles: [
                        schema,
                        config
                      ],
                      outputFiles: [
                        output.appending("Entities.swift"),
                      ])
      ]
    }
}
