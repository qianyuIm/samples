//
//  TableSectionRow.swift
//  SwiftUISamples
//
//  Created by cyd on 2021/3/16.
//

import SwiftUI
struct TableSectionRow: View {
    var item: TableItem
    var body: some View {
        HStack {
            Text(item.title)
            Spacer()
            Text(item.subTitle)
        }
    }
}

struct TableSectionRow_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
