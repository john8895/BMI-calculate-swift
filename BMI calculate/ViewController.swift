import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightField: UITextField!
    @IBOutlet weak var weightField: UITextField!
    @IBOutlet weak var BMIlabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        BMIlabel.text = "BMI："
    }

    @IBAction func Button(_ sender: Any) {
//        let height = Double(heightField.text!)
//        let width = Double(weightField.text!)  // !驚嘆號就是強制取值
        
        // 先判斷欄位有成功轉成Double才執行
        if let height = Double(heightField.text!), let weight = Double(weightField.text!) {
            let bmi = weight / ((height/100) * (height/100))
            BMIlabel.text = String(format: "你的BMI是：%.2f", bmi)
        }
        
//        if(height == nil || width == nil){
//            BMIlabel.text = "請輸入身高與體重"
//        }else{
//            let bmi = width! / ((height!/100) * (height!/100))
//    //        BMIlabel.text = "你的BMI是\(bmi)"
//            BMIlabel.text = String(format: "你的BMI是：%.2f", bmi)
//            print(bmi)
//        }
    }
}
