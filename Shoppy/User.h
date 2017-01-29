//
//  User.h
//  Shoppy
//
//  Created by Sivrish Thangamani on 27/01/17.
//  Copyright © 2017 Sivrish Thangamani. All rights reserved.
//

@interface User : NSObject

@property (strong) NSString *Name;
@property (strong) NSMutableArray *cart;
@property (strong) NSNumber *cashInWallet;

-(id) initWithUserName: (NSString *) name AndCashInUserWallet: (NSNumber *) cashInWallet;

@end
