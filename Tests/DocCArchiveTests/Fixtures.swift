//
//  Fixtures.swift
//  DocCArchiveTests
//
//  Created by Helge Heß.
//  Copyright © 2021 ZeeZide GmbH. All rights reserved.
//

import Foundation

enum Fixtures {
  
  static let baseURL = URL(fileURLWithPath: #filePath)
                         .deletingLastPathComponent()
                         .appendingPathComponent("Fixtures/", isDirectory: true)

  static let slothCreatorArchive =
    FileManager.default.homeDirectoryForCurrentUser
      .appendingPathComponent("Downloads")
      .appendingPathComponent("SlothCreator.doccarchive")
  
  static let failJSON1 =
  """
  {"primaryContentSections":[{"kind":"declarations","declarations":[{"tokens":[{"kind":"keyword","text":"struct"},{"kind":"text","text":" "},{"kind":"identifier","text":"HTTP"}],"languages":["swift"],"platforms":["macOS"]}]}],"schemaVersion":{"major":0,"minor":1,"patch":0},"sections":[],"variants":[{"paths":["/documentation/llabsnetwork/http"],"traits":[{"interfaceLanguage":"swift"}]}],"identifier":{"url":"doc://LLabsNetwork/documentation/LLabsNetwork/HTTP","interfaceLanguage":"swift"},"abstract":[{"type":"text","text":"No overview available."}],"kind":"symbol","metadata":{"fragments":[{"kind":"keyword","text":"struct"},{"kind":"text","text":" "},{"kind":"identifier","text":"HTTP"}],"title":"HTTP","roleHeading":"Structure","role":"symbol","symbolKind":"struct","externalID":"s:12LLabsNetwork4HTTPV","modules":[{"name":"LLabsNetwork"}],"navigatorTitle":[{"kind":"identifier","text":"HTTP"}]},"hierarchy":{"paths":[["doc://LLabsNetwork/documentation/LLabsNetwork"]]},"topicSections":[{"title":"Enumerations","identifiers":["doc://LLabsNetwork/documentation/LLabsNetwork/HTTP/Code","doc://LLabsNetwork/documentation/LLabsNetwork/HTTP/Method"]}],"references":{"doc://LLabsNetwork/documentation/LLabsNetwork/HTTP":{"role":"symbol","title":"HTTP","fragments":[{"kind":"keyword","text":"struct"},{"kind":"text","text":" "},{"kind":"identifier","text":"HTTP"}],"abstract":[],"identifier":"doc://LLabsNetwork/documentation/LLabsNetwork/HTTP","kind":"symbol","type":"topic","navigatorTitle":[{"kind":"identifier","text":"HTTP"}],"url":"/documentation/llabsnetwork/http"},"doc://LLabsNetwork/documentation/LLabsNetwork/HTTP/Method":{"role":"symbol","title":"HTTP.Method","fragments":[{"kind":"keyword","text":"enum"},{"kind":"text","text":" "},{"kind":"identifier","text":"Method"}],"abstract":[{"type":"text","text":"HTTP verbs."}],"identifier":"doc://LLabsNetwork/documentation/LLabsNetwork/HTTP/Method","kind":"symbol","type":"topic","navigatorTitle":[{"kind":"identifier","text":"Method"}],"url":"/documentation/llabsnetwork/http/method"},"doc://LLabsNetwork/documentation/LLabsNetwork/HTTP/Code":{"role":"symbol","title":"HTTP.Code","fragments":[{"kind":"keyword","text":"enum"},{"kind":"text","text":" "},{"kind":"identifier","text":"Code"}],"abstract":[{"type":"text","text":"A list of HTTP codes"}],"identifier":"doc://LLabsNetwork/documentation/LLabsNetwork/HTTP/Code","kind":"symbol","type":"topic","navigatorTitle":[{"kind":"identifier","text":"Code"}],"url":"/documentation/llabsnetwork/http/code"},"doc://LLabsNetwork/documentation/LLabsNetwork":{"role":"collection","title":"LLabsNetwork","abstract":[],"identifier":"doc://LLabsNetwork/documentation/LLabsNetwork","kind":"symbol","type":"topic","url":"/documentation/llabsnetwork"}}}
  """
}
