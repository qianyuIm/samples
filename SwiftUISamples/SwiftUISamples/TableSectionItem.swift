//
//  TableSectionItem.swift
//  SwiftUISamples
//
//  Created by cyd on 2021/3/12.
//

import UIKit
import SwiftUI
struct TableItem {
    var title: String
    var subTitle: String
    var controllerName: String
    init(with title: String,
         subTitle: String,
         controllerName: String) {
        self.title = title
        self.subTitle = subTitle
        self.controllerName = controllerName
    }
}

struct TableSectionItem: Identifiable, Hashable {
    var id: Int
    var sectionTitle: String
    var items: [TableItem]
    static func == (lhs: TableSectionItem, rhs: TableSectionItem) -> Bool {
        return lhs.id == rhs.id
    }
}
