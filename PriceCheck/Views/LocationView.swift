//
//  LocationView.swift
//  PriceCheck
//
//  Created by Cindy Jiang on 2024/9/26.
//

import SwiftUI

struct LocationView: View {
  var location: Location
  var body: some View {
    
    Section(header: Text(location.name), content: {
      ForEach(location.scans.sorted(by: { $0 < $1 })) { scan in
        ScanView(scan: scan)
      }
    })
    
  }
}

struct LocationView_Previews: PreviewProvider {
  static var previews: some View {
    LocationView(location: Location(name: "Target",
                                    scans: [PriceScan(item: "Charmin Soft 12 Mega Rolls",
                                                      price: 14.79,
                                                      date: "2020-10-10T16:48:00")]))
  }
}
