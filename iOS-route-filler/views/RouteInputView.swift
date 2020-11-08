//
//  RouteInputView.swift
//  iOS-route-filler
//
//  Created by Hugo Flores Perez on 11/8/20.
//  Copyright © 2020 Hugo Flores Perez. All rights reserved.
//

import SnapKit
import UIKit

protocol RouteInputViewDelegate: AnyObject {
    func donePressed(text: String)
}

class RouteInputView: UIView {
    
    private lazy var inputTextView: UITextView = {
        let textField = UITextView()
        return textField
    }()
    
    private lazy var doneButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Done", for: .normal)
        button.addTarget(self, action: #selector(onDonePressed), for: .touchUpInside)
        return button
    }()
    
    private weak var viewDelegate: RouteInputViewDelegate!
    
    init(viewDelegate: RouteInputViewDelegate) {
        self.viewDelegate = viewDelegate
        super.init(frame: .zero)
        setUpLayout()
        backgroundColor = .white
    }
    
    required init?(coder: NSCoder) { fatalError("init(coder:) has not been implemented") }
    
    private func setUpLayout() {
        addSubview(inputTextView)
        inputTextView.snp.makeConstraints {
            $0.bottom.left.top.equalToSuperview()
            $0.height.equalTo(200)
        }
        
        addSubview(doneButton)
        doneButton.setContentCompressionResistancePriority(.required, for: .horizontal)
        doneButton.setContentHuggingPriority(.required, for: .horizontal)
        doneButton.snp.makeConstraints {
            $0.top.bottom.right.equalToSuperview().offset(20)
            $0.bottom.right.equalToSuperview().inset(20)
            $0.left.equalTo(inputTextView.snp.right).offset(20)
        }
    }
    
    @objc func onDonePressed() {
        viewDelegate.donePressed(text: inputTextView.text)
    }
}
