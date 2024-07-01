//
//  DailyForecastTableViewCell.swift
//  weatherApp
//
//  Created by Edson Brandon on 01/07/24.
//

import UIKit

class DailyForecastTableViewCell: UITableViewCell {
    
    static let identifier : String = "DailyForecast"
    
    private lazy var weekDayLabel : UILabel = {
        let label = UILabel(frame: .zero)
        label.textColor = UIColor.contrastColor
        label.font = .systemFont(ofSize: 12, weight: .semibold)
        label.text = "TER"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var minTemperatureLabel : UILabel = {
        let label = UILabel(frame: .zero)
        label.textColor = UIColor.contrastColor
        label.font = .systemFont(ofSize: 12, weight: .semibold)
        label.text = "min 25°C"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var maxTemperatureLabel : UILabel = {
        let label = UILabel(frame: .zero)
        label.textColor = UIColor.contrastColor
        label.font = .systemFont(ofSize: 12, weight: .semibold)
        label.text = "max 32°C"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var iconImageView : UIImageView = {
        let imageView = UIImageView(frame: .zero)
        imageView.image = UIImage(named: "cloudIcon")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private lazy var dailyForecastStackView : UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [weekDayLabel, iconImageView, minTemperatureLabel, maxTemperatureLabel])
        stackView.axis = .horizontal
        stackView.spacing = 15
        stackView.directionalLayoutMargins = NSDirectionalEdgeInsets(top:16, leading: 16, bottom: 16, trailing: 16)
        stackView.isLayoutMarginsRelativeArrangement = true
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    
    private func setupView(){
        backgroundColor = .clear
        selectionStyle = .none
        setHierarchy()
        setConstraints()
    }
    private func setHierarchy(){
        contentView.addSubview(dailyForecastStackView)
    }
    
    private func setConstraints(){
        dailyForecastStackView.setConstraintsToParent(contentView)
        NSLayoutConstraint.activate([
            weekDayLabel.widthAnchor.constraint(lessThanOrEqualToConstant: 50)
        ])
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
