//
//  User.m
//  Shoppy
//
//  Created by Sivrish Thangamani on 27/01/17.
//  Copyright © 2017 Sivrish Thangamani. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "User.h"

@implementation  User

-(id) initWithUserName:(NSString *)name AndCashInUserWallet:(NSNumber *)cashInWallet AndCartValue:(NSNumber *)cartValue{
    self = [super init];
    if(self){
        self.Name = name;
        self.cashInWallet = cashInWallet;
        self.cart = [[NSMutableArray alloc] init];
        self.cartValue = cartValue;
    }
    return self;
}

@end
