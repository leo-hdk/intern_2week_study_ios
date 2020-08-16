import UIKit

final class Question2ViewController: UIViewController,UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    //@IBOutlet weak var imageView: UIImageView!
    
    private let areaTexts: [String] = ["茨城県", "栃木県", "群馬県", "埼玉県", "千葉県", "東京都", "神奈川県"]
    
    private let areaImages: [String] = [
    "https://uub.jp/47/ibaraki/ibaraki_kensho.png",
    "https://uub.jp/47/tochigi/tochigi_kensho.png",
    "https://uub.jp/47/gunma/gunma_monsho.png",
    "https://uub.jp/47/saitama/saitama_kensho.png",
    "https://uub.jp/47/chiba/chiba_kensho.png",
    "https://uub.jp/47/tokyo/tokyo_symbol.png",
    "https://uub.jp/47/kanagawa/kanagawa_kensho.png"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
         tableView.register(UINib(nibName: "Question2Cell", bundle: nil), forCellReuseIdentifier: "question2Cell")
    }
}

extension Question2ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // TableViewに表示する行数を指定する
        return areaTexts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        if let cell = tableView.dequeueReusableCell(withIdentifier: "question2Cell", for: indexPath) as? Question2Cell {
            
            cell.setCellImageAndLabel(labelText: areaTexts[indexPath.row], imageURL: URL(string: areaImages[indexPath.row])!)
            return cell
        }
        
        return UITableViewCell()
        
    }
}
