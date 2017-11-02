//
//  ViewController.m
//  HelloWord
//
//  Created by Trust on 2017/11/2.
//  Copyright © 2017年 Trust. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UILabel*label = [[UILabel alloc]initWithFrame:CGRectMake(100,100,200,100)];
    label.text=@"hello world !";
    label.font= [UIFont systemFontOfSize:22];
    label.textAlignment=NSTextAlignmentCenter;
    label.textColor= [UIColor cyanColor];
    label.backgroundColor= [UIColor redColor];
    [self.view addSubview:label];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
