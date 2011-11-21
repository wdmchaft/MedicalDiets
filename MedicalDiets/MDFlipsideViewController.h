//
//  MDFlipsideViewController.h
//  MedicalDiets
//
//  Created by Semka Novikov on 21.11.11.
//  Copyright (c) 2011 semka.novikov@gmail.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MDFlipsideViewController;

@protocol MDFlipsideViewControllerDelegate
- (void)flipsideViewControllerDidFinish:(MDFlipsideViewController *)controller;
@end

@interface MDFlipsideViewController : UIViewController

@property (weak, nonatomic) IBOutlet id <MDFlipsideViewControllerDelegate> delegate;

- (IBAction)done:(id)sender;

@end
