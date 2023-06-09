//
//  ViewController.swift
//  MomoKatsu_Kadai-08//
//  Created by モモカツ on 2023/06/03.
// Part8 2つの画面のスライダーが連動するアプリ

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

// バックグラウンド：オレンジ色の画面１の”ViewController関連”処理
class Slider01ViewController: UIViewController {
    // スライダー値示用のラベルを設定
    @IBOutlet weak var label01: UILabel!
    // スライダーのパーツを設置
    @IBOutlet weak var slider01: UISlider!
    // スライダーの値をラベルに表示する
    @IBAction func displaySliderValues01(_ sender: Any) {
        // スライダー位置の値を変数に設定
        label01.text = "\(slider01.value)"

        // AppDelegateに用意変数に渡したい値を代入
        //AppDelegateのインスタンスを取得
        let appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
        //appDelegateの変数を操作
        appDelegate.sliderValueDelgate = Float(slider01.value)
    }

    // コンテンツビューが画面に表示される前に実行する必要のある操作を実行
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //AppDelegateから変数の値を受け取る
        //AppDelegateのインスタンスを取得
        let appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
        let sliderValue = appDelegate.sliderValueDelgate

        print ("グリーン色の画面２のスライダー０２から渡された値：", sliderValue)
        label01.text = "\(sliderValue)"
        slider01.value = sliderValue
    }
}

// バックグラウンド：グリーン色の画面２の”ViewController関連”処理
class Slider02ViewController: UIViewController {
    // スライダー値示用のラベルを設定
    @IBOutlet weak var label02: UILabel!
    // スライダーのパーツを設置
    @IBOutlet weak var slider02: UISlider!
    // スライダーの値をラベルに表示する
    @IBAction func displaySliderValues02(_ sender: Any) {
        // スライダー位置の値を変数に設定
        label02.text = "\(slider02.value)"

        // AppDelegateに用意変数に渡したい値を代入
        //AppDelegateのインスタンスを取得
        let appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
        //appDelegateの変数を操作
        appDelegate.sliderValueDelgate = Float(slider02.value)
    }

    // コンテンツビューが画面に表示される前に実行する必要のある操作を実行
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //AppDelegateから変数の値を受け取る
        //AppDelegateのインスタンスを取得
        let appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
        let sliderValue = appDelegate.sliderValueDelgate

        print ("オレンジ色の画面１のスライダー０１から渡された値：", sliderValue)
        label02.text = "\(sliderValue)"
        slider02.value = sliderValue
    }
}


