//
//  Extension.swift
//  CricInfoUIKit
//
//  Created by Mohd Kashif on 28/07/24.
//

import Foundation

extension String{
    func dateFormmater()->String?{
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-mm-dd'T'HH:mm:ss"
        dateFormatter.locale = Locale(identifier: "en_US_POSIX") // Ensure consistent parsing

        guard let date = dateFormatter.date(from: self) else {
            return nil
        }

        let localizedDateFormatter = DateFormatter()
        localizedDateFormatter.dateStyle = .medium
        localizedDateFormatter.timeStyle = .short
        localizedDateFormatter.locale = Locale.current

        return localizedDateFormatter.string(from: date)
    }
}
