//
//  Movie.swift
//  Movie.web
//
//  Created by MOHAMMED JUNAID on 22/04/26.
//

import Foundation

struct Movie: Identifiable {
    let id = UUID()
    let title: String
    let image: String
}
