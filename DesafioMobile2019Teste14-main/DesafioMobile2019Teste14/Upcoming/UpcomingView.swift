//
//  UpcomingView.swift
//  DesafioMobile2019Teste14
//
//  Created by Vinicius Angelo on 27/09/22.
//

import UIKit
import SDWebImage

class UpcomingView: UIViewController {
    
    private let upcomingViewModel = UpcomingViewModel()
    
    private var movies: [Result] = []
    private var cast: [Cast] = []
    
    private var movieDetail: MovieDetails?
    
    private lazy var segmentedControl: UISegmentedControl = {
        let control = UISegmentedControl(items: ["Em Breve", "Populares"])
        control.backgroundColor = UIColor.black
        control.layer.borderColor = UIColor.white.cgColor
        control.selectedSegmentTintColor = UIColor.white
        control.layer.borderWidth = 1
            let titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        control.setTitleTextAttributes(titleTextAttributes, for:.normal)
            let titleTextAttributes1 = [NSAttributedString.Key.foregroundColor: #colorLiteral(red: 0.1215686426, green: 0.1215686426, blue: 0.1215686426, alpha: 1) ]
        control.setTitleTextAttributes(titleTextAttributes1, for:.selected)
        control.addTarget(nil, action: #selector(changeScreen), for: .valueChanged)
        control.selectedSegmentIndex = 0
        control.translatesAutoresizingMaskIntoConstraints = false
        return control
    }()
    
    private lazy var titleLabel: UILabel = {
       let label = UILabel()
        label.textAlignment = .left
        label.text = "Em Breve"
        label.font = UIFont.boldSystemFont(ofSize: 32)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var collectionView: UICollectionView = {
       let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        let collection = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collection.backgroundColor = #colorLiteral(red: 0.1999999881, green: 0.1999999881, blue: 0.1999999881, alpha: 1)
        collection.delegate = self
        collection.dataSource = self
        collection.register(PopularMoviesCell.self, forCellWithReuseIdentifier: "cell")
        collection.translatesAutoresizingMaskIntoConstraints = false
        return collection
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = #colorLiteral(red: 0.1215686426, green: 0.1215686426, blue: 0.1215686426, alpha: 1)
        
        setupViews()
        setupContraints()
        upcomingViewModel.delegate = self
        upcomingViewModel.getUpcomingMovies()
        
    }
    
    private func setupViews() {
        
        view.addSubview(segmentedControl)
        view.addSubview(titleLabel)
        view.addSubview(collectionView)
        
    }
    
    private func setupContraints() {
        
        NSLayoutConstraint.activate([
        
            segmentedControl.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            segmentedControl.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            segmentedControl.heightAnchor.constraint(equalToConstant: 35),
            segmentedControl.widthAnchor.constraint(equalToConstant: 180),
            
            titleLabel.topAnchor.constraint(equalTo: segmentedControl.bottomAnchor, constant: 20),
            titleLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            titleLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
        
            collectionView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20),
            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            collectionView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)

        ])
    }
    
    @objc func changeScreen() {
        
        if segmentedControl.selectedSegmentIndex == 0 {
            titleLabel.text = "Em Breve"
            upcomingViewModel.getUpcomingMovies()
            DispatchQueue.main.async {
                self.collectionView.reloadData()
            }
        } else {
            titleLabel.text = "Filmes Populares"
            upcomingViewModel.getPopularMovies()
            DispatchQueue.main.async {
                self.collectionView.reloadData()
            }
        }
    }
}

extension UpcomingView: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: collectionView.frame.width/3.2, height: collectionView.frame.width/1.8)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? PopularMoviesCell
        setupCell(cell: cell, indexPath: indexPath)
        
        return cell ?? UICollectionViewCell()
    }
    
    func setupCell(cell: PopularMoviesCell?, indexPath: IndexPath) {
        cell?.labelDate.text = upcomingViewModel.setupDate(movies[indexPath.row].release_date)
        cell?.labelTitle.text = movies[indexPath.row].title
        guard let movieImagePath = movies[indexPath.row].poster_path else {
            print("Unable to unwrap imagepath")
            return
        }
        
        let imageBaseString = "https://image.tmdb.org/t/p/original"
        
        let url = URL(string: imageBaseString + movieImagePath)
        
        
        DispatchQueue.main.async {
            cell?.movieBanner.sd_setImage(with: url, placeholderImage: UIImage(named: "download"))
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        guard let movieId = movies[indexPath.row].id else {
            print("Unable to unwrap id")
            return
        }
       
        upcomingViewModel.getDetails(movieId: movieId, indexPath: indexPath)
        
    }
        
}

extension UpcomingView: MovieDataProtocol {
    func getCredits(_ cast: [Cast]) {
        self.cast = cast
        
    }
    
    func getMovieData(_ movies: [Result]) {
        self.movies = movies
        DispatchQueue.main.async {
            self.collectionView.reloadData()
        }
       
    }
    
    func getMovieDetails(_ movieDetails: MovieDetails?) {
        self.movieDetail = movieDetails
    }
    
    func changeToDetailView(movieId: Int, indexPath: IndexPath) {
        
        DispatchQueue.main.async {
            let vc = DetailsView()
            vc.movieDetails = self.movieDetail
            vc.movieId = movieId
            vc.titleLabel.text = self.movies[indexPath.row].title
            vc.descriptionFilm.text = self.movies[indexPath.row].overview
            vc.cast = self.cast
            guard let movieImagePath = self.movies[indexPath.row].backdrop_path else {
                print("Unable to unwrap imagepath")
                return
            }
            
            let imageBaseString = "https://image.tmdb.org/t/p/original"
            
            let url = URL(string: imageBaseString + movieImagePath)
            
            vc.detailImage.sd_setImage(with:url)
            vc.modalPresentationStyle = .fullScreen
            self.present(vc, animated: true)
        }
       
    }
    

}
