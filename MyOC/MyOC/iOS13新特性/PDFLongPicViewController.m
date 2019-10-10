//
//  PDFLongPicViewController.m
//  MyOC
//
//  Created by jiangyelin on 2019/10/10.
//  Copyright © 2019 XinChan. All rights reserved.
//

#import "PDFLongPicViewController.h"
#import "SceneDelegate.h"
@interface PDFLongPicViewController ()<UIScreenshotServiceDelegate>

@end

@implementation PDFLongPicViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    SceneDelegate *sceneDelegate = (SceneDelegate *)UIApplication.sharedApplication.connectedScenes.allObjects[0].delegate;
    sceneDelegate.window.windowScene.screenshotService.delegate = self;
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell"];
    
}

#pragma mark - PDF
- (void)screenshotService:(UIScreenshotService *)screenshotService generatePDFRepresentationWithCompletion:(void (^)(NSData * _Nullable, NSInteger, CGRect))completionHandler {
    completionHandler([self createPDFdataFromUIScrollView:self.tableView],0,CGRectZero);
}
//View转Image
- (UIImage *)imageFromView:(UIView *)view rect:(CGRect)rect {
    
    UIGraphicsBeginImageContextWithOptions(view.frame.size, NO, [UIScreen mainScreen].scale);
    [view.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    
    CGRect myImageRect = rect;
    CGImageRef imageRef = image.CGImage;
    CGImageRef subImageRef = CGImageCreateWithImageInRect(imageRef, myImageRect);
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextDrawImage(context, myImageRect, subImageRef);
    UIImage *smallImage = [UIImage imageWithCGImage:subImageRef];
    CGImageRelease(subImageRef);
    UIGraphicsEndImageContext();
    return smallImage;
}

//UIScrollView 转 pdf data
- (NSMutableData *)createPDFdataFromUIScrollView:(UIScrollView *)scrollView {
    NSMutableData *pdfData = [NSMutableData data];
    
    UIGraphicsBeginPDFContextToData(pdfData, (CGRect){0, 0, scrollView.contentSize}, nil);
    UIGraphicsBeginPDFPageWithInfo(CGRectMake(0, 0, scrollView.contentSize.width, scrollView.contentSize.height), nil);
    CGContextRef pdfContext = UIGraphicsGetCurrentContext();
    
    CGRect originSize = scrollView.frame;
    CGRect newSize = originSize;
    newSize.size = scrollView.contentSize;
    [scrollView setFrame:newSize];
    
    [scrollView.layer renderInContext:pdfContext];
    [scrollView setFrame:originSize];
    UIGraphicsEndPDFContext();
    return pdfData;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 100;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    cell.textLabel.text = [NSString stringWithFormat:@"%ld",indexPath.row + 1];
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
