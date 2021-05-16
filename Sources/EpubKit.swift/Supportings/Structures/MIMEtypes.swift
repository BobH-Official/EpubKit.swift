//
//  MIMEtypes.swift
//
//
//  Created by BoB on 2020/10/18.
//

import Foundation

enum MIME: String {
    // Audio
    case mp3 = "audio/mpeg"
    case mp4_audio = "audio/mp4" // AAC LC audio using MP4 container

    // Font
    case ttf = "font/ttf"
    case otf = "font/otf"
    case woff = "font/woff"
    case woff2 = "font/woff2"
    case ttf_otf_2 = "application/font-sfnt"
    case otf_3 = "application/vnd.ms-opentype"
    case woff_2 = "application/font-woff"

    // Image
    case gif = "image/gif"
    case jpeg = "image/jpeg"
    case png = "image/png"
    case svg = "image/svg+xml"

    // Script
    case javascript = "application/javascript"
    case javascript_2 = "text/javascript"

    // Style
    case css = "text/css"

    // Text
    case xhtml = "application/xhtml+xml"
    case ncx = "application/x-dtbncx+xml"
}
