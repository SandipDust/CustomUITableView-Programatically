//
//  ViewController.swift
//  CustomTableView-Programatically
//
//  Created by Sandip Das on 21/09/21.
//

import UIKit

class ViewController: UIViewController {
    
    var tableView = UITableView()
    var videos:[Video] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        videos = fetchData()
        configureTableView()
    }
    
    func configureTableView(){
        view.addSubview(tableView)
        
        //set delegate
        setTableViewDelegates()
        
        //set row height
        tableView.rowHeight = 100
        
        //register cells
        tableView.register(VideoCell.self, forCellReuseIdentifier: "VideoCell")
        
        //set constraints
        tableView.pin(to: view)
    }
    
    func setTableViewDelegates(){
        tableView.delegate = self
        tableView.dataSource = self
    }


}


extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "VideoCell") as! VideoCell
        let video = videos[indexPath.row]
        cell.set(video: video)
        
        return cell
        
    }
    
    
}

//Generate Dummy data
extension ViewController{
    func fetchData() -> [Video]{
        let video1 = Video(Image: Images.image1, title: "Pewdiepie Happy Wheel's Let's Play #1")
        let video2 = Video(Image: Images.image2, title: "Pewdiepie Happy Wheel's Let's Play #2")
        let video3 = Video(Image: Images.image3, title: "Pewdiepie Happy Wheel's Let's Play #3")
        let video4 = Video(Image: Images.image4, title: "Pewdiepie Happy Wheel's Let's Play #4")
        let video5 = Video(Image: Images.image5, title: "Pewdiepie Happy Wheel's Let's Play #5")
        let video6 = Video(Image: Images.image6, title: "Pewdiepie Happy Wheel's Let's Play #6")
        let video7 = Video(Image: Images.image7, title: "Pewdiepie Happy Wheel's Let's Play #7")
        let video8 = Video(Image: Images.image8, title: "Pewdiepie Happy Wheel's Let's Play #8")
        let video9 = Video(Image: Images.image9, title: "Pewdiepie Happy Wheel's Let's Play #9")
        let video10 = Video(Image: Images.image10, title: "Pewdiepie Happy Wheel's Let's Play #10")
        
        return  [video1,video2,video3,video4
                 ,video5,video6,video7,video8,video9,video10]
    }
}
