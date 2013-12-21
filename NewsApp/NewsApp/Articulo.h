//
//  Articulo.h
//  NewsApp
//
//  Created by Gerardo Blanco García on 19/12/13.
//  Copyright (c) 2013 Gerardo Blanco García. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Escritor;

@interface Articulo : NSManagedObject

@property (nonatomic, retain) NSString * titulo;
@property (nonatomic, retain) NSDate * fecha;
@property (nonatomic, retain) NSString * texto;
@property (nonatomic, retain) Escritor *escritoPor;

@end
