//
//  ViewController.m
//  ShowBigImage
//
//  Created by mc on 2018/1/30.
//  Copyright © 2018年 肖中旺. All rights reserved.
//

#import "ViewController.h"
#import "UIImageView+ShowBigImage.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImageView *imagesss=[[UIImageView alloc]initWithFrame:CGRectMake(100, 100, 30, 30)];
    imagesss.image=[UIImage imageNamed:@"1"];
    [self.view addSubview:imagesss];
    
    UITapGestureRecognizer *tap=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapAction:)];
    [imagesss addGestureRecognizer:tap];
    imagesss.userInteractionEnabled=YES;
    
    
    // Do any additional setup after loading the view, typically from a nib.
}
-(void)tapAction:(UITapGestureRecognizer *)sender
{
    UIImageView *imageView=(UIImageView *)sender.view;
    [imageView showImage];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
