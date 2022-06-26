//
//  UITableView+Extensions.swift
//  MarvelPop
//
//  Created by Guiteras Cebrian, Gemma on 18/6/22.
//

import Foundation
import UIKit

extension UITableView {
    
    func updateHeaderFooterTableView() {
        updateHeader()
        updateFooter()
    }
    
    private func updateFooter() {
        guard let footerView = self.tableFooterView else {
            return
        }
        let width = self.bounds.size.width
        let footerSize = footerView.systemLayoutSizeFitting(CGSize(width: width, height: UIView.layoutFittingCompressedSize.height), withHorizontalFittingPriority: .required, verticalFittingPriority: .defaultLow)
        if footerView.frame.size.height != footerSize.height {
            footerView.frame.size.height = footerSize.height
            self.tableFooterView = footerView
        }
    }
    
     private func updateHeader() {
        guard let headerView = self.tableHeaderView else {
            return
        }

        let width = self.bounds.size.width
        let headersSize = headerView.systemLayoutSizeFitting(CGSize(width: width, height: UIView.layoutFittingCompressedSize.height), withHorizontalFittingPriority: .required, verticalFittingPriority: .defaultLow)
        if headerView.frame.size.height != headersSize.height {
            headerView.frame.size.height = headersSize.height
            self.tableHeaderView = headerView
        }
    }
}
