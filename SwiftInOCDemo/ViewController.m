//
//  ViewController.m
//  SwiftInOCDemo
//
//  Created by Jason on 2017/4/13.
//  Copyright © 2017年 Jason. All rights reserved.
//

#import "ViewController.h"
#import "SwiftInOCDemo-Swift.h"

@interface ViewController ()
@property (nonatomic, strong) SwiftViewController *svc1;
@property (nonatomic, strong) SwiftViewController2 *svc2;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _svc1 = [[SwiftViewController alloc] init];
    NSString *title = [_svc1 myTitle];
    NSLog(@"title: %@", title);
    [self addChildViewController:_svc1];
    [self.view addSubview:_svc1.view];
    
    _svc2 = [[SwiftViewController2 alloc] init];
    [self addChildViewController:_svc2];
    [self.view addSubview:_svc2.view];
    
    [self performSelector:@selector(transitionChildViewControllers) withObject:nil afterDelay:2];
}

- (void)transitionChildViewControllers {
    [self transitionFromViewController:_svc2
                      toViewController:_svc1
                              duration:2
                               options:UIViewAnimationOptionTransitionFlipFromLeft
                            animations:^{
                                NSLog(@"animations");
                            }
                            completion:^(BOOL finished) {
                                NSLog(@"completion");
                            }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)hello {
    NSLog(@"hello");
}
+ (void)sayBye {
    NSLog(@"bye!!!");
}
@end
