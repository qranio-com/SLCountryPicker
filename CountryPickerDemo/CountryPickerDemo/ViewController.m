//
//  ViewController.m
//  CountryPickerDemo
//
//  Created by Dmitry Shmidt on 26/11/13.
//  Copyright (c) 2013 Dmitry Shmidt. All rights reserved.
//

#import "ViewController.h"
#import "SLCountryPickerViewController.h"
@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *countryImageView;
@property (weak, nonatomic) IBOutlet UILabel *countryNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *countryCodeLabel;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)chooseCountry:(id)sender {
    SLCountryPickerViewController *vc = [[SLCountryPickerViewController alloc]init];
    NSArray *array = [[NSArray alloc] initWithObjects:@"BR",@"US", @"MX", @"ES", nil];
    NSArray *array2 = [[NSArray alloc] initWithObjects:@"BR",@"US", @"MX", nil];

    vc.availableCountry = array2;
    vc.preferredCountryCodes = array;

    vc.completionBlock = ^(NSString *country, NSString *code){
        _countryNameLabel.text = country;
        _countryImageView.image = [UIImage imageNamed:code];
        _countryCodeLabel.text = code;

    };
    
    [self.navigationController pushViewController:vc animated:YES];
}

@end
