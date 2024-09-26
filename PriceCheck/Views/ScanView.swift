//
//  ScanView.swift
//  PriceCheck
//
//  Created by Cindy Jiang on 2024/9/26.
//

import SwiftUI

struct ScanView: View {
  var scan: PriceScan
  var body: some View {
    HStack {
      Text(scan.item)
      Spacer()
      Text(String(format: "$%.2f", scan.price))
        .bold()
    }
  }
}

struct ScanView_Previews: PreviewProvider {
  static var previews: some View {
    ScanView(scan: PriceScan(item: "Charmin Soft 12 Mega Rolls",
                             price: 14.79,
                             date: "2020-10-10T16:48:00"))
  }
}
