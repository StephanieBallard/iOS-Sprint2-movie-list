//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Stephanie Ballard on 1/24/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var movieName: UILabel!
    @IBOutlet weak var movieSeen: UIButton!
    
    var movie: Movie?{
        didSet {
            updateViews()
        }
    }
    
    func updateViews(){
        guard let movie = movie else { return }
        movieName.text = movie.name
            }
    
    
    //use the dot syntax for the label to grab it's text
    @IBAction func movieSeenButtonToggled(_ sender: Any) {
        //i know that i need to make it so when the button is tapped it changes to read seed.
        movie?.hasBeenSeen.toggle()
        if movie?.hasBeenSeen == false {
            movieSeen.setTitle("not seen", for: .normal)
        } else {
        movieSeen.setTitle("seen", for: .normal)

        
//            movieSeen.titleLabel?.text = "Seen"
//        }
        
    
        }
    }
}
