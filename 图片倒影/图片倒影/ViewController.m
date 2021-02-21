//
//  ViewController.m
//  图片倒影
//
//  Created by iiik- on 2021/2/20.
//

#import "ViewController.h"
#import "PicReversalView.h"

@interface ViewController ()

@property (nonatomic, strong)PicReversalView *picView;

@end

@implementation ViewController

- (PicReversalView *)picView {
    if (!_picView) {
        _picView = [[PicReversalView alloc] initWithFrame:CGRectMake(80, 80, 200, 400)];
    }
    return _picView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setUI];
    
}

- (void)setUI {
    
    self.picView.backgroundColor = [UIColor redColor];
    [self.view addSubview:self.picView];
}

@end
