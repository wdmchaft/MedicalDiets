//
//  MDDietsListController.m
//  MedicalDiets
//
//  Created by Semka Novikov on 21.11.11.
//  Copyright (c) 2011 semka.novikov@gmail.com. All rights reserved.
//

#import "MDDietsListController.h"

@implementation MDDietsListController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
  self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
  if (self) {
  }
  return self;
}


- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
}


#pragma mark - View lifecycle

- (void)viewDidUnload
{
  [super viewDidUnload];
}


#pragma mark - Table view

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
  return 1;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
  return 6;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
  static NSString *CellIdentifier = @"Cell";
  
  UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
  if (cell == nil) {
    cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
  }
  
  cell.textLabel.text = NSLocalizedString(@"Диета №42", nil);
  
  return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
  MDDietDetailsPages *details = [self.storyboard instantiateViewControllerWithIdentifier:@"diet pages"];
  [self.navigationController pushViewController:details animated:YES];
}

@end
