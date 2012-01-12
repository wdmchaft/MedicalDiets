//
//  MPDietDetails.m
//  MedicalDiets
//
//  Created by Semka Novikov on 21.11.11.
//  Copyright (c) 2011 semka.novikov@gmail.com. All rights reserved.
//

#import "MDDietDetailsPages.h"

@implementation MDDietDetailsPages
@synthesize scrollView;

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
}


- (void)awakeFromNib
{
  NSLog(@"Awake from nib");
  [super awakeFromNib];
  
  allowed = [self.storyboard instantiateViewControllerWithIdentifier:@"diet"];
  disallowed = [self.storyboard instantiateViewControllerWithIdentifier:@"diet"];  
}


- (void)viewDidLoad
{
  NSLog(@"View did load");
  [super viewDidLoad];
  
  self.scrollView.contentSize = CGSizeMake(self.view.bounds.size.width * 2, 
                                           self.scrollView.frame.size.height - self.navigationController.view.frame.size.height);
  allowed.view.frame = CGRectMake(self.scrollView.frame.origin.x, 
                                  self.scrollView.frame.origin.y,
                                  self.scrollView.frame.size.width, 
                                  self.scrollView.frame.size.height);
  [self.scrollView addSubview:allowed.view];
  
  disallowed.view.frame = CGRectMake(self.scrollView.frame.origin.x + self.scrollView.frame.size.width, 
                                     self.scrollView.frame.origin.y,
                                     self.scrollView.frame.size.width, 
                                     self.scrollView.frame.size.height);
  [self.scrollView addSubview:disallowed.view];
}


#pragma mark - View lifecycle

- (void)viewDidUnload
{
  [self setScrollView:nil];
  [super viewDidUnload];
}


@end
