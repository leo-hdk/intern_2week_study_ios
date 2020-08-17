import UIKit
import Nuke

class Question2Cell: UITableViewCell {
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var areaImageView: UIImageView!
    
    public func setCellImageAndLabel (labelText: String, imageURL: URL) {
        self.label?.text = labelText
        Nuke.loadImage(with: imageURL, into: areaImageView)
    }
}
