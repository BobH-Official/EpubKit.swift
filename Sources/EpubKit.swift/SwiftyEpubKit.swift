//
//  SwiftyEpubKit.swift
//
//
//  Created by BoB on 2020/10/02.
//

struct EpubBook {
    var name: String
    var matedata: [BookMata]
    var pages: [BookPage]
}

extension EpubBook {
    private init() {
        name = "defaultName"
        matedata = [.author("defaultAuthor")]
        pages = [.init()]
    }
}

let bb = EpubBook(
    name: "a",
    matedata: [
        .author("defaultAuthor")
    ],
    pages: [
        .init(),
        .init(fromString: "<html><body><h1 style=\"font-weight=600pt\">Title</h1></body></html>", ID: "page-1", title: "title-1", playOrder: 1)
    ])

// let book = Epub(.name="ExampleName")

/*
 A book envolved:
 example.epub
 ├── META-INF
 │   └── container.xml(NOCHANGE)
 ├── OEBPS
 │   ├── content.opf
 │   ├── toc.ncx(FOR EPUB2) [application/x-dtbncx+xml]
 │   ├── Audio
 │   │   ├── example.mp3 [audio/mpeg]
 │   │   └── example.mp4 [audio/mp4](AAC LC audio using MP4 container)
 │   ├── Font
 │   │   ├── example.ttf [font/ttf|application/font-sfnt]
 │   │   ├── example.otf [font/otf|application/font-sfnt
 │   │   │               |application/vnd.ms-opentype]
 │   │   ├── example.woff [font/woff|application/font-woff]
 │   │   └── example.woff2 [font/woff2]
 │   ├── Images
 │   │   ├── example.gif [image/gif]
 │   │   ├── example.jpeg [image/jpeg]
 │   │   ├── example.jpg [image/jpeg]
 │   │   ├── example.png [image/png]
 │   │   └── example.svg [image/svg+xml]
 │   ├── Script
 │   │   └── example.js [application/javascript|text/javascript]
 │   ├── Style
 │   │   ├── example.css [text/css]
 │   │   └── common.css [text/css]
 │   └── Text
 │       ├── nav.xhtml(FOR EPUB3) [application/xhtml+xml]
 │       └── example.xhtml [application/xhtml+xml]
 └── mimetype(NOCHANGE)
 ┌────────────────────┬───────────────────────┬──────────────────────────┐
 │application/smil+xml│  [ MediaOverlays32 ]  |  Media Overlay documents │
 ├────────────────────┼───────────────────────┼──────────────────────────┤
 |application/pls+xml │[PRONUNCIATION-LEXICON]|TTS Pronunciation lexicons|
 └────────────────────┴───────────────────────┴──────────────────────────┘

 */
