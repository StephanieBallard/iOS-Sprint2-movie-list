//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Stephanie Ballard on 1/24/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func movieWasAdded(_ movie: Movie)
}

class AddMovieViewController: UIViewController {

    @IBOutlet weak var movieTitleTextField: UITextField!
    @IBOutlet weak var addNewMovieLabel: UILabel!
    @IBOutlet weak var addMovie: UIButton!
    
    var delegate: AddMovieDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addMovieButtonTapped(_ sender: UIButton) {
        
        guard let name = movieTitleTextField.text
            
        else { return }
    
        let movie = Movie(name: name)
    
        delegate?.movieWasAdded(movie)
        navigationController?.popViewController(animated: true)
        
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    //override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    

}

