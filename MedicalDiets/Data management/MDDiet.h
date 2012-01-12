//
//  MDDiet.h
//  MedicalDiets
//
//  Created by Semka Novikov on 27.11.11.
//  Copyright (c) 2011 semka.novikov@gmail.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface MDDiet : NSManagedObject

@property (nonatomic, retain) NSString * dietDescription;
@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSSet *allowedProducts;
@property (nonatomic, retain) NSSet *disallowedProducts;
@end

@interface MDDiet (CoreDataGeneratedAccessors)

- (void)addAllowedProductsObject:(NSManagedObject *)value;
- (void)removeAllowedProductsObject:(NSManagedObject *)value;
- (void)addAllowedProducts:(NSSet *)values;
- (void)removeAllowedProducts:(NSSet *)values;

- (void)addDisallowedProductsObject:(NSManagedObject *)value;
- (void)removeDisallowedProductsObject:(NSManagedObject *)value;
- (void)addDisallowedProducts:(NSSet *)values;
- (void)removeDisallowedProducts:(NSSet *)values;

@end
