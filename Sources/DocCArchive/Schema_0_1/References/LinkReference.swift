//
//  LinkReference.swift
//  DocCArchive
//
//  Created by Jakub Towarek.
//  Copyright © 2021 ZeeZide GmbH. All rights reserved.
//

extension DocCArchive.DocCSchema_0_1 {

  public struct LinkReference: Equatable, Codable, CustomStringConvertible {

    public var identifier: String
    public var title: String
    public var titleInlineContent: [ InlineContent ]
    public var type : String
    public var url: String

    public var description: String {
      "What do I return here :dunno:"
    }
  }
}
