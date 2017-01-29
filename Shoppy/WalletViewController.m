//
//  WalletViewController.m
//  Shoppy
//
//  Created by Sivrish Thangamani on 29/01/17.
//  Copyright © 2017 Sivrish Thangamani. All rights reserved.
//

#import "WalletViewController.h"
#import "User.h"
#import "Utility.h"

@interface WalletViewController ()

@end

@implementation WalletViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    User *shared = [Utility user];
    self.userName.text = [NSString stringWithFormat:@"%@ wallet balance",[shared Name]];
    self.walletBalance.text = [NSString stringWithFormat:@"₹ %@", [shared cashInWallet]];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
