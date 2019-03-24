//
//  CharacterToPinyin.swift
//  HanziPinyin
//
//  Created by robert pub on 2019/3/24.
//  Copyright © 2019 Teambition. All rights reserved.
//

import Foundation
public extension Character{
    public func toPinyinArray(withFormat outputFormat: PinyinOutputFormat = .default, separator: String = " ") -> [String] {
        var pinyinStrings = [String]()
        for unicodeScalar in unicodeScalars {
            let charCodePoint = unicodeScalar.value
            let pinyinArray = HanziPinyin.pinyinArray(withCharCodePoint: charCodePoint, outputFormat: outputFormat)
            for str in pinyinArray {
                pinyinStrings.append(str)
            }
        }
        return pinyinStrings
    }
}
