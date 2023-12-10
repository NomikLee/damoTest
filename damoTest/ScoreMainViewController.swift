//
//  ScoreMainViewController..swift
//  damoTest
//
//  Created by Pinocchio on 2023/12/10.
//

import UIKit

class ScoreMainViewController: UIViewController {
    
    private let backgroundImageScreen: UIImageView = {
        let backgroundScreen = UIImageView()
        backgroundScreen.image = UIImage(named: "籃球場")
        backgroundScreen.translatesAutoresizingMaskIntoConstraints = false
        return backgroundScreen
    }()
    
    private let homeTeamImageView: UIImageView = {
        let homeTeam = UIImageView()
        homeTeam.image = UIImage(named: "Golden_State_Warriors")
        homeTeam.translatesAutoresizingMaskIntoConstraints = false
        return homeTeam
    }()
    
    private let awayTeamImageView: UIImageView = {
        let awayTeam = UIImageView()
        awayTeam.image = UIImage(named: "Los_Angeles_Lakers_logo")
        awayTeam.translatesAutoresizingMaskIntoConstraints = false
        return awayTeam
    }()
    
    private let startGameButton: UIButton = {
        let strButton = UIButton()
        strButton.configuration = .filled()
        strButton.setTitle("比賽開始", for: .normal)
        strButton.setTitleColor(.white, for: .normal)
        strButton.configuration?.baseBackgroundColor = .systemPink
        strButton.translatesAutoresizingMaskIntoConstraints = false
        return strButton
    }()
    
    private let resetButton: UIButton = {
        let resButton = UIButton()
        resButton.configuration = .filled()
        resButton.setTitle("Reset", for: .normal)
        resButton.setTitleColor(.white, for: .normal)
        resButton.configuration?.baseBackgroundColor = .systemGray
        resButton.translatesAutoresizingMaskIntoConstraints = false
        return resButton
    }()
    
    private let homeScroeLabel: UILabel = {
        var homeScroe = UILabel()
        homeScroe.text = "140"
        homeScroe.font = homeScroe.font.withSize(40)
        homeScroe.backgroundColor = .black
        homeScroe.numberOfLines = 0
        homeScroe.layer.borderWidth = 2
        homeScroe.layer.cornerRadius = 5
        homeScroe.layer.borderColor = CGColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 2)
        homeScroe.textAlignment = .center
        homeScroe.textColor = .systemMint
        homeScroe.translatesAutoresizingMaskIntoConstraints = false
        return homeScroe
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureUI()
    }
    
    
    func configureUI() {
        setupImageViewUI()
        setpButton()
        setupLabel()
    }
    
    func setupImageViewUI() {
        view.addSubview(backgroundImageScreen)
        view.addSubview(homeTeamImageView)
        view.addSubview(awayTeamImageView)
        
        NSLayoutConstraint.activate([
            backgroundImageScreen.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundImageScreen.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            backgroundImageScreen.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroundImageScreen.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            homeTeamImageView.widthAnchor.constraint(equalToConstant: 150),
            homeTeamImageView.heightAnchor.constraint(equalToConstant: 150),
            homeTeamImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -250),
            homeTeamImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -80),
            
            awayTeamImageView.widthAnchor.constraint(equalToConstant: 200),
            awayTeamImageView.heightAnchor.constraint(equalToConstant: 200),
            awayTeamImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 250),
            awayTeamImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -80)
        ])
    }
    
    func setpButton() {
        view.addSubview(startGameButton)
        view.addSubview(resetButton)
        
        NSLayoutConstraint.activate([
            startGameButton.widthAnchor.constraint(equalToConstant: 100),
            startGameButton.heightAnchor.constraint(equalToConstant: 50),
            startGameButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            startGameButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
            resetButton.widthAnchor.constraint(equalToConstant: 100),
            resetButton.heightAnchor.constraint(equalToConstant: 50),
            resetButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            resetButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 60)
        ])
    }
    
    func setupLabel() {
        view.addSubview(homeScroeLabel)
        
        NSLayoutConstraint.activate([
            homeScroeLabel.widthAnchor.constraint(equalToConstant: 100),
            homeScroeLabel.heightAnchor.constraint(equalToConstant: 100),
            homeScroeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -250),
            homeScroeLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 80)
                    
        ])

    }
}
