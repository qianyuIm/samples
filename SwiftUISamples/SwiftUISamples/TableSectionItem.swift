//
//  TableSectionItem.swift
//  SwiftUISamples
//
//  Created by cyd on 2021/3/12.
//

import UIKit
import SwiftUI
struct TableItem: Hashable, Identifiable{
    let title: String
    let subTitle: String
    let controllerName: String
    let id = UUID()
}

struct TableSectionItem: Identifiable {
    let id = UUID()
    let sectionTitle: String
    let items: [TableItem]
}
