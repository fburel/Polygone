//
//  PolygneView.swift
//  Polygone
//
//  Created by florian BUREL on 22/09/2015.
//  Copyright (c) 2015 florian BUREL. All rights reserved.
//

import UIKit

@IBDesignable
class PolygneView: UIView {
    
   
    @IBInspectable var edges : Int = 3 {
        didSet {
            setNeedsDisplay()
        }
    }

    // ne surcharger que ssi vous planifier de l'utiliser pour dessiner qqch
    // ne pas appeler drawRect: directement, utiliser setNeedsDisplay
    // rect est juste une optim (zone à redessiner) mais ok de redessiner toute la vue
    override func drawRect(rect: CGRect) {
        
        let zone = rect
        var middle = CGPoint(x: zone.width / 2.0, y: zone.height/2.0)
        var r = min(middle.x, middle.y) * 0.8
        var alpha = CGFloat(2.0 * M_PI / Double(edges))
        
        
        var path = UIBezierPath()
        
        for position in 0 ... edges-1
        {
            var a = CGFloat(position) * alpha
            
            var sx = middle.x + cos(a) * r
            var sy = middle.y + sin(a) * r
            var point =  CGPoint(x: sx, y: sy)
            
            if position == 0
            {
                path.moveToPoint(point)
            }
            else
            {
                path.addLineToPoint(point)
            }
        }
        
        // Ferme la forme automatiquement
        path.closePath()
        
        // Couleurs & trait
        var color  = UIColor(red:100.0/255.0, green: 120.0/255.0, blue: 20.0/255.0, alpha: 1.0)
        color.setFill()
        UIColor.orangeColor().setStroke()
        path.lineWidth = 10
        
        // Dessin
        path.fill()
        path.stroke()
    }
    
}
