//
//  FirstViewController.swift
//  PAC1
//
//  Created by Joseph on 13/10/2022.
//

import UIKit
import MapKit

class FirstViewController: UITableViewController {
    
    let manager = ManagerPlaces.shared()
    
    let pl0=Place(name:"CosmoCaixa",description:"Science Museum in Barcelona",image_in:UIImage(named:"CosmoCaixa")?.pngData())
    let pl1=Place(name:"Le Louvre",description:"Art Museum in Paris",image_in:UIImage(named:"Louvre")?.pngData())
    let pl2=Place(name:"Hermitage",description:"Art Museum in Sant Petersbourg",image_in:UIImage(named:"Hermitage")?.pngData())
    let pl3=Place(name:"Prado",description:"Art Museum in Madrid",image_in:UIImage(named:"Prado")?.pngData())
    let pl4=Place(name:"Guggenheim",description:"Art Museum in New York",image_in:UIImage(named:"Guggenheim")?.pngData())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pl0.location = CLLocationCoordinate2D(latitude:41.4130919,longitude:2.131415795835)
        pl1.location = CLLocationCoordinate2D(latitude:48.8606111,longitude:2.337644)
        pl2.location = CLLocationCoordinate2D(latitude:59.9412076,longitude:30.3154865177658)
        pl3.location = CLLocationCoordinate2D(latitude:40.4137818,longitude:-3.6921271)
        pl4.location = CLLocationCoordinate2D(latitude:40.7829932,longitude:-73.9589250181006)
        
        manager.append(_value: pl0)
        manager.append(_value: pl1)
        manager.append(_value: pl2)
        manager.append(_value: pl3)
        manager.append(_value: pl4)
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return manager.GetCount()
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomTableViewCell
        let place=manager.GetItemAt(position: indexPath.row)
        cell.labelImage?.text=place.name
        cell.iconImageView.image=UIImage(data:place.image_in!)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath:IndexPath) -> CGFloat{
        return UITableView.automaticDimension
    }
    
    var selectedPlace:Place?
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath:IndexPath){
        let place=manager.GetItemAt(position: indexPath.row)
        selectedPlace=place
        performSegue(withIdentifier: "ShowPlaceDetail", sender: nil)
        
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier=="ShowPlaceDetail"{
            let placeDetail = segue.destination as! DetailController
            placeDetail.place=selectedPlace
        }
        
    }
    

}
