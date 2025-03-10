//  Created by Dmitry Shmidt on 5/11/13.
//  Copyright (c) 2013 Shmidt Lab. All rights reserved.
//  mail@shmidtlab.com

#import <UIKit/UIKit.h>

@interface SLCountryPickerViewController : UITableViewController

@property (nonatomic, copy) NSArray *preferredCountryCodes;
@property (nonatomic, copy) NSString *preferredCountriesSectionName;
@property (nonatomic, copy) NSString *selectedCountryCode;
@property (nonatomic, copy) void (^completionBlock)(NSString *country, NSString *code);
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (nonatomic, copy) NSArray *availableCountry;

@end
