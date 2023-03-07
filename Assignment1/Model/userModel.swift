//
//  UserReponse.swift
//  Assignment1
//
//  Created by Dhanush S on 06/03/23.
//


import Foundation

// MARK: - UserModel
struct UserModel: Decodable {
    let id: Int
    let name, username, email: String
    let address: Address
    let phone, website: String
    let company: Company
}

// MARK: - Address
struct Address: Decodable {
    let street, suite, city, zipcode: String
    let geo: Geo
}

// MARK: - Geo
struct Geo: Decodable {
    let lat, lng: String
}

// MARK: - Company
struct Company: Decodable {
    let name, catchPhrase, bs: String
}

typealias UserResponse = [UserModel]


