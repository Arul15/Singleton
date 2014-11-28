//
//  ViewController.m
//  Singleton
//
//  Created by Arulpandiyan on 28/11/14.
//  Copyright (c) 2014 Sybrant. All rights reserved.
//

#import "ViewController.h"
#import "Generic.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
[Generic sharedMySingleton].pStrName = @"FAther";
    
    NSLog(@"[Generic sharedMySingleton].pStrName %@",[Generic sharedMySingleton].pStrName);
    [Generic sharedMySingleton].pStrName = @"Dady";
    NSLog(@"[Generic sharedMySingleton].pStrName %@",[Generic sharedMySingleton].pStrName);
    [[Generic sharedMySingleton] sayhello];
    NSLog(@"[Generic sharedMySingleton].pStrName %@",[Generic sharedMySingleton].pArrFruits);

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
