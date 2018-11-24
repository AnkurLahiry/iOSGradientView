//
//  iOSGradientView.swift
//  Pods
//
//  Created by ankur.lahiry on 24/11/18.
//

import Foundation
import UIKit

@IBDesignable class iOSGradientView: UIView {
    
    @IBInspectable var gradientTopColor: UIColor = .clear {
        didSet {
            setNeedsLayout()
        }
    }
    
    @IBInspectable var gradientBottomColor: UIColor = .clear {
        didSet {
            setNeedsLayout()
        }
    }
    
    @IBInspectable var startPointX: CGFloat = 0 {
        didSet {
            setNeedsLayout()
        }
    }
    
    @IBInspectable var startPointY: CGFloat = 0 {
        didSet {
            setNeedsLayout()
        }
    }
    
    @IBInspectable var endPointX: CGFloat = 0 {
        didSet {
            setNeedsLayout()
        }
    }
    
    @IBInspectable var endPointY: CGFloat = 0 {
        didSet {
            setNeedsLayout()
        }
    }
    
    required override init(frame: CGRect) {
        super.init(frame: frame)
        setGradientView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setGradientView()
    }
    
    override func layoutSubviews() {
        
        super.layoutSubviews()
        setGradientView()
        
    }
    
    func setGradientView() {
        let gradient: CAGradientLayer = CAGradientLayer()
        gradient.colors = [gradientTopColor.cgColor, gradientBottomColor.cgColor]
        //gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: startPointX, y: startPointY)
        gradient.endPoint = CGPoint(x: endPointX, y: endPointY)
        gradient.frame = self.layer.frame
        self.layer.insertSublayer(gradient, at: 0)
    }
    
}
