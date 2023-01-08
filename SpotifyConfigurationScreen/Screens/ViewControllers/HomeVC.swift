//
//  HomeVC.swift
//  SpotifyConfigurationScreen
//
//  Created by Emre Kocak on 7.01.2023.
//

import UIKit

class HomeVC: UIViewController {
    
    let margin: CGFloat = 20
    let spacing: CGFloat = 32

    // MARK: - Life Cycles
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        view.backgroundColor = .darkGray
        setupNavigationBar()
        setupViews()
    }
    
    // MARK: - Navigation Bar
    
    func setupNavigationBar() {
        // This will change the navigation bar background color
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = UIColor.red
        
        navigationItem.title = "PlayBack"
        
        // This will alter the navigation bar title appearance
        let titleAttribute = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 25, weight: .bold), NSAttributedString.Key.foregroundColor: UIColor.white]
        appearance.titleTextAttributes = titleAttribute
        
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
    }
    
    // MARK: - Setup Views
    
    func setupViews() {
        let offlineLabel = makeLabel(withText: "Offline")
        let offlineSwitch = makeSwitch(isOn: false)
        let offlineSubLabel = makeSubLabel(withText: "When you go offline, you'll only be able to play the music and podcasts you've downloaded.")
        
        let crossfadeLabel = makeBoldLabel(withText: "Crossfade")
        let crossfadeMinLabel = makeSubLabel(withText: "0s")
        let crossfadeMaxLabel = makeSubLabel(withText: "12s")
        let crossfadeProgressView = makeProgressView()
        
        let gaplessPlaybackLabel = makeLabel(withText: "Gapless Playback")
        let gaplessPlaybackSwitch = makeSwitch(isOn: true)

        let hideSongsLabel = makeLabel(withText: "Hide Unplayable Songs")
        let hideSongsSwitch = makeSwitch(isOn: true)

        let enableNormalizationLabel = makeLabel(withText: "Enable Audio Normalization")
        let enableNormalizationSwitch = makeSwitch(isOn: true)
        
        
        view.addSubview(offlineLabel)
        view.addSubview(offlineSwitch)
        view.addSubview(offlineSubLabel)
        
        view.addSubview(crossfadeLabel)
        view.addSubview(crossfadeMinLabel)
        view.addSubview(crossfadeMaxLabel)
        view.addSubview(crossfadeProgressView)
        
        view.addSubview(gaplessPlaybackLabel)
        view.addSubview(gaplessPlaybackSwitch)

        view.addSubview(hideSongsLabel)
        view.addSubview(hideSongsSwitch)

        view.addSubview(enableNormalizationLabel)
        view.addSubview(enableNormalizationSwitch)
        
        offlineLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: margin).isActive = true
        offlineLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: margin).isActive = true
        
        offlineSwitch.centerYAnchor.constraint(equalTo: offlineLabel.centerYAnchor).isActive = true
        offlineSwitch.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -margin).isActive = true
        
        offlineSubLabel.topAnchor.constraint(equalTo: offlineLabel.bottomAnchor, constant: margin).isActive = true
        offlineSubLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: margin).isActive = true
        offlineSubLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -margin).isActive = true
        
        crossfadeLabel.topAnchor.constraint(equalTo: offlineSubLabel.bottomAnchor, constant: spacing).isActive = true
        crossfadeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        crossfadeMinLabel.topAnchor.constraint(equalTo: crossfadeLabel.bottomAnchor, constant: spacing).isActive = true
        crossfadeMinLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: margin).isActive = true
        
        crossfadeProgressView.centerYAnchor.constraint(equalTo: crossfadeMinLabel.centerYAnchor).isActive = true
        crossfadeProgressView.leadingAnchor.constraint(equalTo: crossfadeMinLabel.trailingAnchor, constant: 4).isActive = true
        crossfadeProgressView.trailingAnchor.constraint(equalTo: crossfadeMaxLabel.leadingAnchor, constant: -4).isActive = true
        
        crossfadeMaxLabel.centerYAnchor.constraint(equalTo: crossfadeMinLabel.centerYAnchor).isActive = true
        crossfadeMaxLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -margin).isActive = true
        
        gaplessPlaybackLabel.topAnchor.constraint(equalTo: crossfadeMinLabel.bottomAnchor, constant: spacing).isActive = true
        gaplessPlaybackLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: margin).isActive = true

        gaplessPlaybackSwitch.centerYAnchor.constraint(equalTo: gaplessPlaybackLabel.centerYAnchor).isActive = true
        gaplessPlaybackSwitch.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -margin).isActive = true

        hideSongsLabel.topAnchor.constraint(equalTo: gaplessPlaybackLabel.bottomAnchor, constant: spacing).isActive = true
        hideSongsLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: margin).isActive = true

        hideSongsSwitch.centerYAnchor.constraint(equalTo: hideSongsLabel.centerYAnchor).isActive = true
        hideSongsSwitch.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -margin).isActive = true

        enableNormalizationLabel.topAnchor.constraint(equalTo: hideSongsLabel.bottomAnchor, constant: spacing).isActive = true
        enableNormalizationLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: margin).isActive = true

        enableNormalizationSwitch.centerYAnchor.constraint(equalTo: enableNormalizationLabel.centerYAnchor).isActive = true
        enableNormalizationSwitch.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -margin).isActive = true
    }

}

