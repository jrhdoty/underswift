//
//  underswift.swift
//  underswift
//
//  Created by John Doty on 8/5/14.
//  Copyright (c) 2014 John Doty. All rights reserved.
//

import Foundation
/*
###List of Underscore functions###

- each
- map
- reduce
- reduceRight
- find
- filter
- where
- findWhere
- reject
- every
- some
- contains
- invoke
- pluck
- max
- min
- sortBy
- groupBy
- indexBy
- countBy
- shuffle
- sample
- toArray
- size
*/

func each<T>(collection:[T], callback:(T)->Void){
    for i in 0..<collection.count{
        callback(collection[i]);
    }
}

func map<T>(a:[T], callback:(T)->T)->[T]{
    var result:[T] = [];
    each(a, {(item:T) in result.append(callback(item));});
    return result;
}

func reduce<T>(a:[T], callback:(T, T)->T, var acc:T)->T {
    for i in 0..<a.count{
        acc = callback(acc, a[i])
    }
    return acc
}


func filter<T>(arr:[T], callback:(T)->Bool)->[T]{
    var result: [T] = []
    each(arr, {(item:T) in
        if (callback(item)){
            result.append(item);
        }
        })
    return result
}














































