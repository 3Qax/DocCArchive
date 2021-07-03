//
//  Task.swift
//  DocCArchive
//
//  Created by Helge Heß.
//  Copyright © 2021 ZeeZide GmbH. All rights reserved.
//

extension DocCArchive.DocCSchema_0_1.Section {

  /**
   * A task is one section in a tutorial.
   *
   * It has a title, an anchor (the html element id),
   * content and steps.
   *
   * E.g. in SlothCreator:
   *
   *   Section 1
   *   Create a new project and add SlothCreator
   *
   */
  public struct Task: Equatable, Codable {
    
    public struct ContentAndMedia: Equatable, Codable {
      
      public enum Layout: String, Equatable, Codable {
        case horizontal
      }
      public enum Position: String, Equatable, Codable {
        case trailing
      }
      
      public var layout        : Layout
      public var mediaPosition : Position
      public var media         : String // 01-creating-section1.png
      public var content       : [ DocCArchive.DocCSchema_0_1.Content ]
    }
    
    public enum TaskContent: Equatable, Codable {
      
      case contentAndMedia(ContentAndMedia)

      // - MARK: Codable
      
      private enum CodingKeys: String, CodingKey {
        case kind
      }
      
      public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let kind      = try container.decode(String.self, forKey: .kind)
        
        switch kind {
          case "contentAndMedia":
            self = .contentAndMedia(try .init(from: decoder))
          default:
            throw DocCArchiveLoadingError.unsupportedTaskContent(kind)
        }
      }

      public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        switch self {
          case .contentAndMedia(let value):
            try container.encode("contentAndMedia" , forKey: .kind)
            try value.encode(to: encoder)
        }
      }
    }
    
    public var title          : String
    public var anchor         : String
    
    // This does not seem to be a regular `Content`, because it has a `kind`
    // instead of a `type`.
    public var contentSection : [ TaskContent ]
    
    // So far seen `step` and `paragraph` content in this.
    public var stepsSection   : [ DocCArchive.DocCSchema_0_1.Content ]
  }
}
