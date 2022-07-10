//
//  PublicationsListViewModel.swift
//  MarvelPop
//
//  Created by Guiteras Cebrian, Gemma on 6/7/22.
//

import Foundation

class PublicationsListViewModel {
    let provider: PublicationsListDataProvider
    let type: PublicationType
    let id: Int
    
    var publications: [Publication] = []
    var paging: Paging?
    
    var isFetchingData = false
    
    weak var output: PublicationsListViewOutput?
    
    private var state: PublicationsListViewState = .loading {
        didSet {
            output?.update(state)
        }
    }
    
    init(id: Int, type: PublicationType, provider: PublicationsListDataProvider) {
        self.provider = provider
        self.type = type
        self.id = id
    }
    
    func handleData(_ dto: PublicationDataWrapperDTO) {
        guard let data = dto.data, let results = data.results else { return }
        paging = Paging(count: data.count ?? 0, offset: data.offset ?? 0, total: data.total ?? 0)
        publications.append(contentsOf: results.map { Publication($0) })
        state = .data(publications)
    }
    
    func fetchData(offset: Int? = nil) {
        guard !isFetchingData else { return }
        isFetchingData = true
        provider.getPublication(id: id, type: type, offset: offset) { [weak self] result in
            guard let self = self else { return }
            self.isFetchingData = false
            switch result {
            case .success(let data):
                self.handleData(data)
            case .failure(let error):
                print(error)
            }
        }
    }
}

// MARK: - PublicationsListViewInput protocol implementation
extension PublicationsListViewModel: PublicationsListViewInput {
    func loadMoreData() {
        guard let paging = paging else { return }
        if paging.hasMoreData == true {
            fetchData(offset: paging.offset + 20)
        }
    }
    
    func willAppear() {
        state = .loading
        fetchData()
        output?.showTitle(type.title)
    }
}
