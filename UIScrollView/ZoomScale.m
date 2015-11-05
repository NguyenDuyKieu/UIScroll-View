//
//  ZoomScale.m
//  UIScrollView
//
//  Created by Nguyễn Duy Kiều on 11/3/15.
//  Copyright © 2015 Nguyen Duy Kieu. All rights reserved.
//

#import "ZoomScale.h"

@interface ZoomScale () < UIScrollViewDelegate>
@property (nonatomic,strong) UIScrollView *scrollView;

@end

@implementation ZoomScale
{
    UIImageView *photo;
    UILabel *lblZoom ;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    lblZoom = [[UILabel alloc]initWithFrame:CGRectMake(320,6,55,32)];
    //lblZoom.text = @"Ashu";
    [self.navigationController.navigationBar addSubview:lblZoom];
    

    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    photo = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"anh.jpg"]];
    [self.scrollView addSubview:photo];
    self.scrollView.delegate = self;
    self.scrollView.minimumZoomScale = 0.2;
    self.scrollView.maximumZoomScale = 4.0;
    [self.view addSubview:self.scrollView];
    
}

- (UIView *) viewForZoomingInScrollView:(UIScrollView *)scrollView{
    
    return photo;
}
- (void)scrollViewDidZoom:(UIScrollView *)scrollView{
    lblZoom.text = [NSString stringWithFormat:@" %2.2f",self.scrollView.zoomScale];
    [lblZoom resignFirstResponder];
}

-(void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    lblZoom.text = nil;
}

@end
