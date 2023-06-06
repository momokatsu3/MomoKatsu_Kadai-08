//
//  ViewController.swift
//  MomoKatsu_Kadai-08//
//  Created by モモカツ on 2023/06/03.
// Part8 2つの画面のスライダーが連動するアプリ

import UIKit

// バックグラウンド：オレンジ色の画面１の”ViewController関連”処理
class Slider01ViewController: UIViewController {
    // スライダー値示用のラベルを設定
    @IBOutlet weak var label: UILabel!
    // スライダーのパーツを設置
    @IBOutlet weak var slider: UISlider!
    // スライダーの値をラベルに表示する
    @IBAction func displaySliderValues(_ sender: Any) {
        // スライダー位置の値を変数に設定
        label.text = "\(slider.value)"

        // AppDelegateに用意変数に渡したい値を代入
        //AppDelegateのインスタンスを取得
        let appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
        //appDelegateの変数を操作
        appDelegate.sliderValue = Float(slider.value)
    }

    // コンテンツビューが画面に表示される前に実行する必要のある操作を実行
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //AppDelegateから変数の値を受け取る
        //AppDelegateのインスタンスを取得
        let appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
        let sliderValue = appDelegate.sliderValue

        print ("グリーン色の画面２のスライダー０２から渡された値：", sliderValue)
        label.text = "\(sliderValue)"
        slider.value = sliderValue
    }
}

// バックグラウンド：グリーン色の画面２の”ViewController関連”処理
class Slider02ViewController: UIViewController {
    // スライダー値示用のラベルを設定
    @IBOutlet weak var label: UILabel!
    // スライダーのパーツを設置
    @IBOutlet weak var slider: UISlider!
    // スライダーの値をラベルに表示する
    @IBAction func displaySliderValues(_ sender: Any) {
        // スライダー位置の値を変数に設定
        label.text = "\(slider.value)"

        // AppDelegateに用意変数に渡したい値を代入
        //AppDelegateのインスタンスを取得
        let appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
        //appDelegateの変数を操作
        appDelegate.sliderValue = Float(slider.value)
    }

    // コンテンツビューが画面に表示される前に実行する必要のある操作を実行
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //AppDelegateから変数の値を受け取る
        //AppDelegateのインスタンスを取得
        let appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
        let sliderValue = appDelegate.sliderValue

        print ("オレンジ色の画面１のスライダー０１から渡された値：", sliderValue)
        label.text = "\(sliderValue)"
        slider.value = sliderValue
    }
}


