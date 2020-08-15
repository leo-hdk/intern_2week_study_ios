import UIKit

final class Question1ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var addTextButton: UIButton!
    @IBOutlet weak var clearTextButton: UIButton!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //画面表示時にTextViewをクリア
        textView.text = ""
        //画面表示時にlabelをクリア
        label.text = ""
    }
    
    @IBAction func tapAddButton(_ sender: Any) {
        
        var beforeText: String
        var newText: String
        
        if textField.text == "" {
            label.text = "文字を入力してください"
            
        } else {
            newText = textField.text!
            beforeText = textView.text
            //Buttonを押すとTextFieldの文字をTextViewに追加・改行して表示
            textView.text = beforeText + "\n" + newText
            //labelをクリア
            label.text = ""
            //textFieldをクリア
            textField.text = ""
        }
 
 
    }
    
    @IBAction func tapClearButton(_ sender: Any) {
        textView.text = ""
    }
}
