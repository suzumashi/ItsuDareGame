//
//  ViewController.swift
//  ItsuDaretoGame
//
//  Created by 鈴木ましろ on 2023/05/12.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var itsuLabel:UILabel!
    @IBOutlet var dokodeLabel:UILabel!
    @IBOutlet var daretoLabel:UILabel!
    @IBOutlet var dousitaLabel:UILabel!
    
    // 配列(Array)に変数(文字列: String)を指定し、文字を代入
    let itsuArray: [String] = ["1年前","1ヶ月前","昨日","今日"]
    let dokodeArray: [String] = ["山の上で","アメリカで","学校で","クラスで"]
    let daretoArray: [String] = ["僕が","大統領が","先生が","友達が"]
    let dousitaArray: [String] = ["叫んだ","演説した","怒った","踊った"]
    
    // indexに変数(整数型: Int)、初期値0を設定
    var index: Int = 0

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func change(){
        // 指定したindexに基づいて配列の要素を取得して、それをitsuLabelのテキスト表示させる
        itsuLabel.text = itsuArray[index]
        dokodeLabel.text = dokodeArray[index]
        daretoLabel.text = daretoArray[index]
        dousitaLabel.text = dousitaArray[index]
        
        // もしindexが3だったら
        if index == 3{
            // indexに0を代入(初期化)
            index = 0
        // その他
        } else {
            // indexに1を足す
            index = index + 1
        }
    }
    
    
    @IBAction func reset(){
        // Labelに___を表示
        itsuLabel.text = "____"
        dokodeLabel.text = "____"
        daretoLabel.text = "____"
        dousitaLabel.text = "____"
        
        // indexに0を代入(初期化)
        index = 0
    }
    
    
    @IBAction func random(){
        //0から3までの範囲でランダムな整数値を取得
        let itsuIndex = Int .random(in:  0...3)
        let dokodeIndex = Int .random(in:  0...3)
        let daretoIndex = Int .random(in:  0...3)
        let dousitaIndex = Int .random(in:  0...3)
        
        // print: コンソールに表示
        print("いつ: \(itsuIndex)")
        print("どこで: \(dokodeIndex)")
        print("だれと: \(daretoIndex)")
        print("どうした: \(dousitaIndex)")
        
        // 〇〇Array[〇〇Index] -> 配列からランダムな整数値を取得
        itsuLabel.text = itsuArray[itsuIndex]
        dokodeLabel.text = dokodeArray[dokodeIndex]
        daretoLabel.text = daretoArray[daretoIndex]
        dousitaLabel.text = dousitaArray[dousitaIndex]
    }


}

