//
//  MDMainViewController.h
//  MedicalDiets
//
//  Created by Semka Novikov on 21.11.11.
//  Copyright (c) 2011 semka.novikov@gmail.com. All rights reserved.
//

#import "MDFlipsideViewController.h"

#import <CoreData/CoreData.h>

@interface MDMainViewController : UIViewController <MDFlipsideViewControllerDelegate>

@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

@end
