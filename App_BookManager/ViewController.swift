//
//  ViewController.swift
//  App_BookManager
//
//  Created by mac on 2018. 8. 21..
//  Copyright © 2018년 UkJin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var myBookManager = BookManager()
    @IBOutlet weak var outputTextView: UITextView!
    @IBOutlet weak var nameTextfield: UITextField!
    @IBOutlet weak var genreTextfield: UITextField!
    @IBOutlet weak var authorTextfield: UITextField!
    @IBOutlet weak var countLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let book1 = Book(name: "햄릿", genre: "비극", author: "셰익스피어")
        let book2 = Book(name: "누구를 위하여 종을 울리나", genre: "전쟁소설", author: "헤밍웨이")
        let book3 = Book(name: "죄와벌", genre: "사실주의", author: "톨스토이")
        myBookManager.registerBook(bookObject: book1)
        myBookManager.registerBook(bookObject: book2)
        myBookManager.registerBook(bookObject: book3)
    }
    @IBAction func registerAction(_ sender: Any){
        let book = Book(name: nameTextfield.text!, genre: genreTextfield.text!, author: authorTextfield.text!)
        myBookManager.registerBook(bookObject: book)
        
        
    }
    @IBAction func searchAction(_ sender: Any){
    
        let searchBook = myBookManager.searchBook(name: nameTextfield.text!)
        if searchBook != nil {
            outputTextView.text = searchBook!
        }else{
            outputTextView.text = "책을 찾을수 없습니다."
        }
    }
    @IBAction func removeAction(_ sender: Any){
        myBookManager.removeBook(name: nameTextfield.text!)
        
        
    }
    @IBAction func showAllBooksAction(_ sender: Any){
        outputTextView.text = myBookManager.showAllBooks()
    }


}

