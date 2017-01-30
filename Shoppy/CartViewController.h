//
//  CartViewController.h
//  Shoppy
//
//  Created by Sivrish Thangamani on 27/01/17.
//  Copyright © 2017 Sivrish Thangamani. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CartViewController : UITableViewController <UITableViewDelegate, UITableViewDataSource>
- (IBAction)checkout:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *totalValue;
@property (weak, nonatomic) IBOutlet UILabel *walletBalance;
@end
