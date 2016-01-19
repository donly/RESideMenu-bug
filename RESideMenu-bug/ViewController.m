//
//  ViewController.m
//  RESideMenu-bug
//

#import "ViewController.h"
#import "MainViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [self configureResideView];

    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

#pragma mark - View
- (void)configureResideView {
    self.contentViewController = [self.storyboard instantiateViewControllerWithIdentifier:
                                  NSStringFromClass(MainViewController.class)];
    
    self.leftMenuViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"LeftViewController"];

    
    self.parallaxEnabled = NO;
    self.scaleBackgroundImageView = NO;
    self.bouncesHorizontally = NO;
    self.scaleMenuView = NO;
    self.backgroundImage = [UIImage imageNamed:@"bg_menu"];
    self.menuPreferredStatusBarStyle = UIStatusBarStyleDefault; // UIStatusBarStyleLightContent
    self.contentViewShadowColor = [UIColor blackColor];
    self.contentViewShadowOffset = CGSizeMake(0, 0);
    self.contentViewShadowOpacity = 0.6;
    self.contentViewShadowRadius = 12;
    self.contentViewShadowEnabled = YES;
    self.panFromEdge = TRUE;
}

- (BOOL)prefersStatusBarHidden {
    return self.contentViewController.prefersStatusBarHidden;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
