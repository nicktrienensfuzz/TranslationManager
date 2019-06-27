//
//  TranslationRepository.swift
//  TranslationManager
//
//  Created by Dominik Hadl on 18/10/2018.
//  Copyright © 2018 Nodes. All rights reserved.
//

import Foundation

public protocol TranslationRepository {
    func getLocalizationConfig(acceptLanguage: String,
                               lastUpdated: Date?,
                               completion: @escaping (Result<[LocalizationModel], Error>) -> Void)
    func getTranslations(localization: LocalizationModel,
                         acceptLanguage: String,
                         completion: @escaping (Result<TranslationResponse<Language>, Error>) -> Void)
    func getAvailableLanguages<L: LanguageModel>(completion:  @escaping (Result<[L], Error>) -> Void)
    func fetchPreferredLanguages() -> [String]
    func fetchBundles() -> [Bundle]
}
