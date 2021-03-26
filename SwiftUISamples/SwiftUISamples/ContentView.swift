//
//  ContentView.swift
//  SwiftUISamples
//
//  Created by cyd on 2021/3/12.
//

import SwiftUI

struct ContentView: View {

    private let dataSource: [TableSectionItem]  = [
        TableSectionItem(sectionTitle: "基础控件",
                         items: [TableItem(title: "List的基本使用",
                                           subTitle: "List的基本使用",
                                           controllerName: "ListController")])
        ]
    
    @State private var singleSelection : UUID?

    var body: some View {
        NavigationView {
            List(selection: $singleSelection){
                ForEach(dataSource) { tableSectionItem in
                    Section(header: Text(tableSectionItem.sectionTitle)) {
                        ForEach(tableSectionItem.items) { item in
                            NavigationLink(
                                destination: ListController(item: item),
                                label: {
                                    TableSectionRow(item: item)
                                })
                        }
                    }
                }
            }
            .navigationBarTitle("SwiftUISamples", displayMode: .large)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
