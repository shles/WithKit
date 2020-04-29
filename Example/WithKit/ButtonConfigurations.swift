//
//  File.swift
//  WithKit_Example
//
//  Created by Артeмий Шлесберг on 29/04/2020.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import Foundation
import WithKit

extension  UIButton {
    struct Configurations {
        static var standard:  UIConfiguration<UIButton> {
            return UIConfiguration { button in
                return button
                    .with(font: .systemFont(ofSize: 17, weight: .semibold))
                    .with(titleColor: .white)
                    .with(roundedEdges: 12)
                    .with(backgroundColor: #colorLiteral(red: 0.4907429218, green: 0.3752257228, blue: 1, alpha: 1))
            }
        }
        static var gray:  UIConfiguration<UIButton> {
            return UIConfiguration { button in
                return button
                    .with(font: .systemFont(ofSize: 17, weight: .semibold))
                    .with(titleColor: .black)
                    .with(roundedEdges: 12)
                    .with(backgroundColor: #colorLiteral(red: 0.9215686275, green: 0.9294117647, blue: 0.9411764706, alpha: 1))
            }
        }
    }
}
