//
//  FixedIncomeHomeViewController.swift
//  easynvest-test
//
//  Created by Henrique Akiyoshi Eguchi on 11/12/19.
//  Copyright © 2020 Henrique Akiyoshi Eguchi. All rights reserved.
//

import UIKit

final class FixedIncomeHomeViewController: CustomViewController<FixedIncomeHomeView> {
    // MARK: View Lifecycle
    override func loadView() {
        super.loadView()
        customView.delegate = self

        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }

    @objc
    func keyboardWillShow(notification: NSNotification) {
        if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
            let contentInsets = UIEdgeInsets(top: 0.0, left: 0.0, bottom: keyboardSize.height + 58, right: 0.0)
            customView.fixedIncomeTableView.scrollIndicatorInsets = contentInsets

            self.customView.moveSimulateButtonAboveKeyboard(isKeyboardVisible: true, keyboardHeight: keyboardSize.height)

            guard let animationDuration = notification.userInfo?[UIResponder.keyboardAnimationDurationUserInfoKey] as? Double else { return }
            UIView.animate(withDuration: animationDuration) { [weak self] in
                guard let self = self else { return }
                self.view.layoutIfNeeded()
            }
        }
    }

    @objc
    func keyboardWillHide(notification: NSNotification) {
        let contentInsets = UIEdgeInsets(top: 0.0, left: 0.0, bottom: 0.0, right: 0.0)
        customView.fixedIncomeTableView.scrollIndicatorInsets = contentInsets

        if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
            customView.moveSimulateButtonAboveKeyboard(isKeyboardVisible: false, keyboardHeight: keyboardSize.height)

            guard let animationDuration = notification.userInfo?[UIResponder.keyboardAnimationDurationUserInfoKey] as? Double else { return }
            UIView.animate(withDuration: animationDuration) { [weak self] in
                guard let self = self else { return }
                self.view.layoutIfNeeded()
            }
        }
    }
}

extension FixedIncomeHomeViewController: FixedIncomeHomeDelegate {
    func didTapSimulate(_ sender: UIButton) {
        customView.endEditing(true)
//        print(customView.fixedIncomeTableView..textField.text)
    }
}
