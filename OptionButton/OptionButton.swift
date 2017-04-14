//
//  OptionButton.swift
//  OptionButton
//
//  Created by Cem Olcay on 14/04/2017.
//  Copyright © 2017 cemolcay. All rights reserved.
//

import UIKit

@IBDesignable
public class OptionButton: UIButton {
  public private(set) var contentView = UIView()
  public private(set) var labelStack = UIStackView()
  public private(set) var nameLabel = UILabel()
  public private(set) var optionLabel = UILabel()

  @IBInspectable public var titleText: String = ""
  @IBInspectable public var optionText: String = ""
  @IBInspectable public var titleColor: UIColor = .black
  @IBInspectable public var optionColor: UIColor = .black
  @IBInspectable public var titleFont: UIFont = .systemFont(ofSize: 13)
  @IBInspectable public var optionFont: UIFont = .systemFont(ofSize: 15)
  @IBInspectable public var leftInset: CGFloat = 0
  @IBInspectable public var rightInset: CGFloat = 0
  @IBInspectable public var topInset: CGFloat = 0
  @IBInspectable public var bottomInset: CGFloat = 0

  // MARK: Init

  public override init(frame: CGRect) {
    super.init(frame: frame)
    commonInit()
  }

  public required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    commonInit()
  }

  private func commonInit() {
    contentView.isUserInteractionEnabled = false
    contentView.backgroundColor = .clear
    addSubview(contentView)

    // Stack
    labelStack.axis = .vertical
    labelStack.alignment = .center
    labelStack.distribution = .fill
    labelStack.addArrangedSubview(nameLabel)
    labelStack.addArrangedSubview(optionLabel)
    contentView.addSubview(labelStack)

    // Title
    nameLabel.numberOfLines = 0
    nameLabel.leftAnchor.constraint(equalTo: labelStack.leftAnchor).isActive = true
    nameLabel.rightAnchor.constraint(equalTo: labelStack.rightAnchor).isActive = true
    nameLabel.setContentHuggingPriority(UILayoutPriorityDefaultHigh, for: .vertical)

    // Option
    optionLabel.numberOfLines = 0
    optionLabel.leftAnchor.constraint(equalTo: labelStack.leftAnchor).isActive = true
    optionLabel.rightAnchor.constraint(equalTo: labelStack.rightAnchor).isActive = true
    optionLabel.setContentHuggingPriority(UILayoutPriorityDefaultLow, for: .vertical)

    // Button
    setTitle(nil, for: .normal)
  }

  // MARK: Lifecycle

  public override func layoutSubviews() {
    super.layoutSubviews()
    contentView.frame = bounds
    labelStack.frame = CGRect(
      x: leftInset,
      y: topInset,
      width: contentView.frame.size.width - leftInset - rightInset,
      height: contentView.frame.size.height - topInset - bottomInset)

    nameLabel.text = titleText
    nameLabel.textColor = titleColor
    nameLabel.font = titleFont

    optionLabel.text = optionText
    optionLabel.textColor = optionColor
    optionLabel.font = optionFont
  }
}
