//
//  ToDoTableViewCell.swift
//  ToDoList
//
//  Created by Shumei Kawagoe on 2018/06/20.
//  Copyright © 2018 Shumei Kawagoe. All rights reserved.
//

import UIKit

@objc protocol ToDoCellDelegate: class {
    func checkmarkTapped(sender: ToDoTableViewCell)
    
}


class ToDoTableViewCell: UITableViewCell {
    
    var delegate: ToDoCellDelegate?

    @IBOutlet weak var isCompleteButton: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    
    func update(with todo: ToDo) {
        titleLabel.text = todo.title
        isCompleteButton.isSelected = todo.isComplete
    }
    
    @IBAction func completeButtonTapped() {
        delegate?.checkmarkTapped(sender: self)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
