//
//  MDDetailsController.m
//  MedicalDiets
//
//  Created by Semka Novikov on 21.11.11.
//  Copyright (c) 2011 semka.novikov@gmail.com. All rights reserved.
//

#import "MDDetailsController.h"


@implementation MDDetailsController

- (id)initWithStyle:(UITableViewStyle)style
{
  self = [super initWithStyle:style];
  if (self) {
  }
  return self;
}


- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
}


#pragma mark - View lifecycle

- (void)viewDidLoad
{
  [super viewDidLoad];
}


- (void)viewDidUnload
{
  [super viewDidUnload];
}


- (void)viewWillAppear:(BOOL)animated
{
  [super viewWillAppear:animated];
}


- (void)viewDidAppear:(BOOL)animated
{
  [super viewDidAppear:animated];
}


- (void)viewWillDisappear:(BOOL)animated
{
  [super viewWillDisappear:animated];
}


- (void)viewDidDisappear:(BOOL)animated
{
  [super viewDidDisappear:animated];
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
  return 3;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
  switch (section) {
    case 0:
      return 1;
      break;
    case 2:
      return 1;
      break;
    case 3:
      return 1;
      break;
    default:
      break;
  }
  return 1;
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
  switch (indexPath.section) {
    case 0:
      return 109;
      break;
    case 1:
      return 114;
      break;
    default:
      return 32;
      break;
  }
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{  
  switch (indexPath.section) {
    case 0: {
      UITableViewCell *titleCell = [tableView dequeueReusableCellWithIdentifier:@"titleCell"];
      return titleCell;
      break;
    }
    case 1: {
      UITableViewCell *descriptionCell = [tableView dequeueReusableCellWithIdentifier:@"descriptionCell"];
      return descriptionCell;
      break;
    }
    default: {
      UITableViewCell *productCell = [tableView dequeueReusableCellWithIdentifier:@"productCell"];
      return productCell;
      break;
    }
  }
}


#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
  [self.tableView deselectRowAtIndexPath:indexPath animated:NO];
}

@end
