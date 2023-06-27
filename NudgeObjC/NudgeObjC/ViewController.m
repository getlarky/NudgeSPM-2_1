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

@property(nonatomic, strong)NudgeBase *nudgeBase;
@property(nonatomic, strong)NudgeGeo *nudgeGeo;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.nudgeBase = [[NudgeBase alloc] initWithOptions:@{
        @"apiKey": @"y26htlmAfYUEsoIh5UV_Bw",
        @"enabled": @YES,
        @"federationID": @""
    }];
    
    self.nudgeGeo = [[NudgeGeo alloc] initWithOptions:@{
        @"apiKey": @"y26htlmAfYUEsoIh5UV_Bw",
        @"enabled": @YES,
        @"federationID": @""
    } callback:^{
        
    }];
    // Do any additional setup after loading the view.
}


@end
