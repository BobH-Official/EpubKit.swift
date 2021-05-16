//
//  BookProperties.swift
//
//
//  Created by BoB on 2020/10/18.
//

import Foundation

enum BookMata {
    case author(String)
    case publisher(String)
}

let a: BookMata = .author("a")



//extension BookMata {
//    func `default`(author: String, publisher: String) -> BookMata {
//        return
//    }
//}

public struct BookPage {
    var ID: String = "defualtID"
    var title: String = "defaultTitle"
    var playOrder: Int = 0
    var content: String = "defaultContent"
    var href: String = "defaultHref"
    let mediaType = MIME.xhtml
}

extension BookPage {

    init(fromString: String,ID: String, title: String, playOrder: Int) {
        self.ID = ID
        self.title = title
        self.playOrder = playOrder
        content = fromString
        href = "Text/" + ID.replacingOccurrences(of: ".xhtml", with: "") + ".xhtml"
    }
}

extension BookPage {
    init(fromPath: String, ID: String, title: String, playOrder: Int) {
        self.ID = ID
        self.title = title
        self.playOrder = playOrder
        content = fromPath
        href = "Text/" + ID.replacingOccurrences(of: ".xhtml", with: "") + ".xhtml"
    }
}

extension BookPage {
    init(fromURL: URL,ID: String, title: String, playOrder: Int) {
        self.ID = ID
        self.title = title
        self.playOrder = playOrder
        content = try! String(contentsOf: fromURL)
        href = "Text/" + ID.replacingOccurrences(of: ".xhtml", with: "") + ".xhtml"
    }
}
