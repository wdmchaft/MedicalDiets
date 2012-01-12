//
//  MDProduct.h
//  MedicalDiets
//
//  Created by Semka Novikov on 27.11.11.
//  Copyright (c) 2011 semka.novikov@gmail.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface MDProduct : NSManagedObject

@property (nonatomic, retain) NSString * title;
@property (nonatomic, retain) NSSet *diets;
@end

@interface MDProduct (CoreDataGeneratedAccessors)

- (void)addDietsObject:(NSManagedObject *)value;
- (void)removeDietsObject:(NSManagedObject *)value;
- (void)addDiets:(NSSet *)values;
- (void)removeDiets:(NSSet *)values;

@end
