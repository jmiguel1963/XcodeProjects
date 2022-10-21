//
//  ManagerPlaces.swift
//  PAC1
//
//  Created by Joseph on 12/10/2022.
//

import Foundation

class ManagerPlaces {
    
    var places:[Place]=[]
    
    /*static let shared:ManagerPlaces={
        let instance=ManagerPlaces()
        return instance
    }()*/
    
    private static var sharedManagerPlaces:ManagerPlaces={
        var singletonManager:ManagerPlaces?
        
        //singletonManager=load()
        if (singletonManager==nil){
            singletonManager=ManagerPlaces()
        }
        return singletonManager!
        
    }()
    
    class func shared()->ManagerPlaces{
        return sharedManagerPlaces
    }
    
    init(){
        
    }
    
    func append(_value:Place) {
        self.places.append(_value)
    }
    func GetCount()->Int {
        return self.places.count
    }
    func GetItemAt(position:Int)->Place{
        return self.places[position]
    }
    
    func GetItemById(id:String)->Place?{
        let selectedplace:Place?=self.places.filter{$0.id==id}[0]
        if let result=selectedplace{
            return result
        }else{
            return nil
        }
    }
    
    func RemoveItemById(id:String){
        let selectedplace:Place?=self.places.filter{$0.id==id}[0]
        if let result=selectedplace{
            if let index=self.places.firstIndex(where: {$0===result}){
                self.places.remove(at:index)
            }
        }
    }
    
    /*func RemovePlace(_value:Place?){
        if let result=_value{
            if let index=self.places.firstIndex(where:{$0===result}){
                self.places.remove(at:index)
            }
        }
    }*/

}
    
    

