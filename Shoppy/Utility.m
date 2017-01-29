//
//  Utility.m
//  Shoppy
//
//  Created by Sivrish Thangamani on 27/01/17.
//  Copyright © 2017 Sivrish Thangamani. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Utility.h"

static User* _user = nil;
static Warehouse* _warehouse = nil;

@implementation Utility

+(void) load{
    _user = [[User alloc] initWithUserName:@"Sivrish" AndCashInUserWallet:[NSNumber numberWithInteger:200000]];
    _warehouse = [[Warehouse alloc] init];

}

+(User *) user{
    return _user;
}

+(Warehouse *) warehouse{
    return _warehouse;
}

@end
