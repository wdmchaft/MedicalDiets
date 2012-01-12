//
//  MPDietDetails.h
//  MedicalDiets
//
//  Created by Semka Novikov on 21.11.11.
//  Copyright (c) 2011 semka.novikov@gmail.com. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MDDetailsController.h"

@interface MDDietDetailsPages : UIViewController
{
  MDDetailsController *allowed;
  MDDetailsController *disallowed;
}

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@end
