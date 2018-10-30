//
// Created by Артмеий Шлесберг on 16/10/2018.
//

import UIKit

extension UIView {
    
    func addSubviews(_ views: [UIView] ) {
        for view in views {
            addSubview(view)
        }
    }

    func takeScreenshot() -> UIImage {

        UIGraphicsBeginImageContextWithOptions(self.frame.size, false, UIScreen.main.scale)
        drawHierarchy(in: CGRect(origin: CGPoint.zero, size: self.frame.size), afterScreenUpdates: true)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image!
    }

    //TODO: discuss
    func jiggle() {

        let animation = CABasicAnimation(keyPath: "position")
        animation.duration = 0.05
        animation.repeatCount = 2
        animation.autoreverses = true
        animation.fromValue = NSValue(cgPoint: CGPoint(x: self.center.x - 4, y: self.center.y))
        animation.toValue = NSValue(cgPoint: CGPoint(x: self.center.x + 4, y: self.center.y))
        self.layer.add(animation, forKey: nil)
    }

    //TODO: move somewhere
    ///------------
    var maxY: CGFloat {
        return self.frame.maxY
    }

    var minY: CGFloat {
        return self.frame.minY
    }

    var maxX: CGFloat {
        return self.frame.maxX
    }

    var minX: CGFloat {
        return self.frame.minX
    }

    var midY: CGFloat {
        return self.frame.midY
    }

    var midX: CGFloat {
        return self.frame.midX
    }
    //------------
    //TODO: discuss
//    func makeDisabled() {
//
//        self.alpha = 0.3
//        self.isUserInteractionEnabled = false
//    }
//
//    func makeEnabled() {
//
//        self.alpha = 1.0
//        self.isUserInteractionEnabled = true
//    }
//
//    func setEnabled(enabled: Bool) {
//        if enabled {
//            makeEnabled()
//        } else {
//            makeDisabled()
//        }
//    }

    func with(contentMode: UIViewContentMode) -> Self {
        self.contentMode = contentMode
        return self
    }

    func with(clipsToBounds: Bool) -> Self {
        self.clipsToBounds = clipsToBounds
        return self
    }
    
    func with(roundedEdges radius: CGFloat) -> Self {
        self.layer.cornerRadius = radius
        return self.with(clipsToBounds: true)
    }

    func with(backgroundColor: UIColor) -> Self {
        self.backgroundColor = backgroundColor
        return self
    }

    func with(translatesAutoresizingMaskIntoConstraints: Bool) -> Self {
        self.translatesAutoresizingMaskIntoConstraints = translatesAutoresizingMaskIntoConstraints
        return self
    }

    func with(compressionResistancePriority: UILayoutPriority, for axis: UILayoutConstraintAxis) -> Self {
        self.setContentCompressionResistancePriority(compressionResistancePriority, for: axis)
        return self
    }

    func with(huggingPriority: UILayoutPriority, for axis: UILayoutConstraintAxis) -> Self {
        self.setContentHuggingPriority(huggingPriority, for: axis)
        return self
    }
    
    @discardableResult
    func withShadow(
        xOffset: CGFloat = 0,
        yOffset: CGFloat = 2,
        radius: CGFloat = 2,
        opacity: Float = 1,
        shadowColor: UIColor = UIColor.black
    ) -> Self {
        self.layer.shadowRadius = radius
        self.layer.shadowOpacity = opacity
        self.layer.shadowOffset = CGSize(width: xOffset, height: yOffset)
        self.layer.shadowColor = shadowColor.cgColor
        self.layer.masksToBounds = false
        self.clipsToBounds = false
        return self
    }

    func withoutShadow() -> Self {
        return withShadow(xOffset: 0, yOffset: 0, radius: 0, opacity: 0)
    }

    func with(borderWidth: CGFloat, borderColor: UIColor) -> Self {
        (self.layer as CALayer).borderWidth = borderWidth
        (self.layer as CALayer).borderColor = borderColor.cgColor
        return self
    }

    func rotatedBy(radians: CGFloat) -> Self {
        self.transform = self.transform.rotated(by: radians)
        return self
    }

    func with(alpha: CGFloat) -> Self {
        self.alpha = alpha
        return self
    }

    func with(isUserInteractionEnabled: Bool) -> Self {
        self.isUserInteractionEnabled = isUserInteractionEnabled
        return self
    }

    func with(isHidden: Bool) -> Self {
        self.isHidden = isHidden
        return self
    }

}

