//
//  ProductsViewController.h
//  Shoppy
//
//  Created by Sivrish Thangamani on 27/01/17.
//  Copyright © 2017 Sivrish Thangamani. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProductsViewController : UITableViewController < UITableViewDelegate, UITableViewDataSource>
@property (strong, nonatomic) IBOutlet UITableView *productsTableView;
@property NSMutableArray *productsList;

-(void) viewDidLoad;
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView;
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender;

@end
