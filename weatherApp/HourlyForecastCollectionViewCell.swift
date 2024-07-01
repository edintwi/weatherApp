//
//  HourlyForecastCollectionViewCell.swift
//  weatherApp
//
//  Created by Edson Brandon on 30/06/24.
//

import UIKit

class HourlyForecastCollectionViewCell: UICollectionViewCell {
    
    static let indentifier : String = "HourlyForecast"
    
    private lazy var forecastStackView : UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [ hourLabel, iconImageView, temperatureLabel])
        stackView.axis = .vertical
        stackView.spacing = 4
        stackView.layer.borderWidth = 1
        stackView.layer.borderColor = UIColor.contrastColor?.cgColor
        stackView.layer.cornerRadius = 10
        stackView.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8)
        stackView.isLayoutMarginsRelativeArrangement = true
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    } ()
    
    private lazy var hourLabel : UILabel = {
        let label = UILabel(frame: .zero)
        label.text = "13:00hrs"
        label.textColor = UIColor.contrastColor
        label.font = .systemFont(ofSize: 10, weight: .semibold)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    } ()
    
    private lazy var temperatureLabel : UILabel = {
        let label = UILabel(frame: .zero)
        label.text = "25°C"
        label.textColor = UIColor.contrastColor
        label.font = .systemFont(ofSize: 14, weight: .semibold)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    } ()
    
    private lazy var iconImageView : UIImageView = {
        let imageView = UIImageView(frame: .zero)
        imageView.image = UIImage(named: "sunIcon")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
        
    } ()
    

    override init (frame: CGRect){
        super.init(frame: .zero)
        setupView()
    }
    
    private func setupView(){
        setHierarchy()
        setConstraints()
    }
    
    private func setHierarchy(){
        contentView.addSubview(forecastStackView)
    }
    
    private func setConstraints(){
        forecastStackView.setConstraintsToParent(contentView)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
