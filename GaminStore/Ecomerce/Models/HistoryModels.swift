//
//  HistoryModels.swift
//  GaminStore
//
//  Created by Angel alberto Bernechea on 4/18/24.
//

import Foundation

struct HistoryModels {
    var id = UUID()
    var listItems:[String]
    var totalOfOrden:Int
    
    static var dummyData:[HistoryModels] = [
        HistoryModels(listItems: ["test's test #1" ,"Items'test #2"], totalOfOrden: 30),
        HistoryModels(listItems: ["tfruits" , "apple" , "Orange"], totalOfOrden: 130),
        HistoryModels(listItems: ["PC", "Monitor" ,"Mouse"], totalOfOrden: 300),
        HistoryModels(listItems: ["cars","ariplane"], totalOfOrden: 450),
    ]
}

