//
//  ContentView.swift
//  SwiftUISamples
//
//  Created by cyd on 2021/3/12.
//

import SwiftUI

struct ContentView: View {
    var dataSource: [TableSectionItem] = [
        .init(id: 100, sectionTitle: "基础控件", items: [
                .init(with: "12", subTitle: "12", controllerName: "12")])]
    var body: some View {
        NavigationView {
            
            
            .navigationBarTitle("SwiftUISamples", displayMode: .large)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
