//
//  ListController.swift
//  SwiftUISamples
//
//  Created by cyd on 2021/3/16.
//

import SwiftUI
struct ListController: View {
    var item: TableItem
    
    var body: some View {
        
        Text("123")
            .navigationBarTitle(Text(verbatim: item.title), displayMode: .inline)
        
    }
}


struct ListController_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
