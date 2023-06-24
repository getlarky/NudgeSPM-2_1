//
//  ViewController.m
//  NudgeObjC
//
//  Created by slzhou on 2023/6/24.
//

#import "ViewController.h"
@import nudgeBase;
@import nudgeGeo;

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NudgeBase *myNudge = [[NudgeBase alloc] initWithOptions:@{
        @"apiKey": @"<YOUR_API_KEY_HERE>",
        @"enabled": @YES,
        @"federationID": @"<USER_ID>"
    }];
    // Do any additional setup after loading the view.
}


@end
