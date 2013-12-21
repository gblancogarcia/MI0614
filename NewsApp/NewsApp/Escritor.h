//
//  Escritor.h
//  NewsApp
//
//  Created by Gerardo Blanco García on 19/12/13.
//  Copyright (c) 2013 Gerardo Blanco García. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Articulo;

@interface Escritor : NSManagedObject

@property (nonatomic, retain) NSString * nombre;
@property (nonatomic, retain) NSDate * fechaNacimiento;
@property (nonatomic, retain) NSString * lugarNacimiento;
@property (nonatomic, retain) NSSet *escribio;
@end

@interface Escritor (CoreDataGeneratedAccessors)

- (void)addEscribioObject:(Articulo *)value;
- (void)removeEscribioObject:(Articulo *)value;
- (void)addEscribio:(NSSet *)values;
- (void)removeEscribio:(NSSet *)values;

@end
