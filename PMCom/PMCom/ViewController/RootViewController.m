//
//  RootViewController.m
//  PMCom
//
//  Created by Manish Yadav 01 on 1/13/16.
//  Copyright © 2016 pm. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController (){
    NSString *newStr;
}
@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)buttonAction:(UIButton *)sender {
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"Dummy" ofType:@"json"];
    NSError * error;
    
    NSData* data = [NSData dataWithContentsOfFile:filePath];
    NSDictionary *result = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&error];

    NSArray *dataArr = [result objectForKey:@"country"];
    for (NSDictionary *dict in dataArr) {
        NSString *country = [dict objectForKey:@"country"];
        NSString *city = [dict objectForKey:@"capital"];
        NSLog(@"");
    }
    NSLog(@"");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
