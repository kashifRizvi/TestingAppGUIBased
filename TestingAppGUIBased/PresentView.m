//
//  PresentView.m
//  TestingAppGUIBased
//
//  Created by Kashif on 19/10/16.
//  Copyright © 2016 Kashif. All rights reserved.
//

#import "PresentView.h"

@interface PresentView ()
{
    CGPoint originalCenter;
}

@property (weak, nonatomic) IBOutlet UITextField *textField;
@end

@implementation PresentView

- (void)viewDidLoad {
    [super viewDidLoad];
//    self.textField.delegate=self;

    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)segmentedControl:(UISegmentedControl *)sender {
    
    UIAlertView *alert=[[UIAlertView alloc]initWithTitle:[sender titleForSegmentAtIndex:sender.selectedSegmentIndex] message:[NSString stringWithFormat:@"You have selected key named %@", [sender titleForSegmentAtIndex:sender.selectedSegmentIndex]] delegate:sender cancelButtonTitle:@"Cancel" otherButtonTitles:nil];
    [alert show];
}

- (IBAction)gestureLongPressButton:(UILongPressGestureRecognizer *)sender {
    if (sender.state == UIGestureRecognizerStateBegan) {
        UIAlertView *buttonAlert=[[UIAlertView alloc]initWithTitle:@"Button Pressed" message:@"Remove your finger from the Button." delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"OK", nil];
        [buttonAlert show];
    }
}

- (IBAction)gestureLongPressImageView:(UILongPressGestureRecognizer *)sender {
    if (sender.state == UIGestureRecognizerStateBegan) {
        UIAlertView *imageAlert=[[UIAlertView alloc]initWithTitle:@"Image Long Pressed" message:@"Try Pressing with multiple fingers." delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:nil];
        [imageAlert show];
    }
}

- (IBAction)gestureTapImageView:(UITapGestureRecognizer *)sender {
    NSInteger numberOfTouches=sender.numberOfTouches;
    NSLog(@" Number of touches :  %li",numberOfTouches);
    UIAlertView *numberOfTouchesAlert;
    numberOfTouchesAlert=[[UIAlertView alloc]initWithTitle:@"One Finger Touch" message:@"Touched with one finger only." delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:nil];
    [numberOfTouchesAlert show];
}

- (IBAction)gesturedoubleTapImageView:(UITapGestureRecognizer *)sender {
    NSInteger numberOfTouches=sender.numberOfTouches;
    NSLog(@" Number of touches :  %li",numberOfTouches);
    UIAlertView *numberOfTouchesAlert;
    numberOfTouchesAlert=[[UIAlertView alloc]initWithTitle:@"Two Finger Touch" message:@"Touched with Two fingers." delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:nil];
    
    [numberOfTouchesAlert show];
}

- (IBAction)gesturePanLabelDrag:(UIPanGestureRecognizer *)sender {
    UILabel *label=(UILabel *)sender.view;
    if (sender.state==UIGestureRecognizerStateBegan) {
        originalCenter=label.center;
        NSLog(@"Dragging Began!!");
    }
    CGPoint newPoint=[sender translationInView:label];
    label.center=CGPointMake(label.center.x+newPoint.x, label.center.y+newPoint.y);
    NSLog(@"State is getting changed!");
    
    
    if (sender.state==UIGestureRecognizerStateEnded) {
        label.center=originalCenter;
        NSLog(@"Dragging Stopped!!");
    }
    
    [sender setTranslation:CGPointZero inView:label];
}

- (IBAction)handleSliderLabel:(UISlider *)sender {
    self.labelOutlet.text=[NSString stringWithFormat:@"%.1f", sender.value];
    self.progressViewOutlet.progress=sender.value/100;
    [self.activityIndicatorOutlet startAnimating];
}

- (IBAction)handleSliderLabelStop:(UISlider *)sender {
    [self.activityIndicatorOutlet stopAnimating];
}


- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Return Key Pressed!" message:textField.text delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:nil];
    [alert show];
    return YES;
}
@end
