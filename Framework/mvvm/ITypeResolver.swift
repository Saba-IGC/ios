//
//  IResolver.swift
//  framework
//
//  Created by Ali Hosseini Khayat on 1/28/18.
//  Copyright © 2018 Ali Hosseini Khayat. All rights reserved.
//

import Foundation

public protocol ITypeResolver {
    func resolve<T>() -> T?
}
