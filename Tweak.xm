#import <UIKit/UIApplication.h>

%hook UIViewController

- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    return (%orig | UIInterfaceOrientationMaskPortraitUpsideDown);
}

%end
