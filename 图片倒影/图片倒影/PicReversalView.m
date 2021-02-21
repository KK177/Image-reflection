//
//  PicReversalView.m
//  图片倒影
//
//  Created by iiik- on 2021/2/20.
//

#import "PicReversalView.h"

@interface PicReversalView()

@property(nonatomic, strong)UIImageView *imageView;

@end

@implementation PicReversalView

- (UIImageView *)imageView {
    if (!_imageView) {
        _imageView = [[UIImageView alloc] init];
    }
    return _imageView;
}

//改变当前view的layer类型
+(Class)layerClass {
    return [CAReplicatorLayer class];
}

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self setUI];
    }
    return self;
}

- (void)setUI {
    self.imageView.image = [UIImage imageNamed:@"WechatIMG627"];
    self.imageView.frame = CGRectMake(self.bounds.origin.x, self.bounds.origin.y, 200, 200);
    [self addSubview:self.imageView];
    
    CAReplicatorLayer *repl = (CAReplicatorLayer *)self.layer;
    repl.instanceCount = 2;
    //根据复制层的中心进行旋转 - 默认的
    repl.instanceTransform = CATransform3DMakeRotation(M_PI, 1, 0, 0);
    
    //阴影效果
    repl.instanceRedOffset -= 0.2;
    repl.instanceGreenOffset -= 0.2;
    repl.instanceBlueOffset -= 0.2;
}

@end
