//
//  Place.swift
//  PAC1
//
//  Created by Joseph on 12/10/2022.
//

import Foundation

import MapKit

class Place {
    
    enum PlacesTypes
    {
        case GenericPlace
        case TouristicPlace
    }
    
    var id:String = ""
    var type:PlacesTypes = .GenericPlace
    var name:String = ""
    var description:String = ""
    var location:CLLocationCoordinate2D!
    var image_in:Data? = nil
    
    init(){
        
    }
    
    init(name:String,description:String,image_in:Data?){
        self.name=name
        self.description=description
        self.image_in=image_in
        self.id=UUID().uuidString
    }
    
    init(type:PlacesTypes,name:String,description:String,image_in:Data?){
        self.type=type
        self.name=name
        self.description=description
        self.image_in=image_in
        self.id=UUID().uuidString
    }
    
    
}
