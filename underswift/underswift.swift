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

func each<T>(collection:[T], callback:(T, Int, [T])->Void){
    for i in 0..<collection.count{
        callback(collection[i], i, collection)
    }
}

func map<T>(a:[T], callback:(T, Int, [T])->T)->[T]{
    var result:[T] = [];
    each(a, {(item:T, index:Int, collection:[T]) in
        result.append(callback(item, index, collection));
    });
    return result;
}

func reduce<T>(arr:[T], callback:(m:T, item:T, index:Int, collection:[T])->T, var memo:T)->T {
    for i in 0..<arr.count{
        memo = callback(m:memo, item:arr[i], index:i, collection:arr)
    }
    return memo
}


func filter<T>(arr:[T], predicate:(T)->Bool)->[T]{
    var result: [T] = []
    for i in 0..<arr.count{
        if (predicate(arr[i])){
            result.append(arr[i]);
        }
    }
    return result
}














































