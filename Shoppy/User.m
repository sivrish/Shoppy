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

-(id) initWithUserName:(NSString *)name AndCashInUserWallet:(NSNumber *)cashInWallet{
    self = [super init];
    if(self){
        self.name = name;
        self.cashInWallet = cashInWallet;
    }
    return self;
}

@end