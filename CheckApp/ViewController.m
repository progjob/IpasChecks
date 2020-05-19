//
//  ViewController.m
//  CheckApp
//
//  Created by Dmitry on 18/05/2020.
//  Copyright © 2020 xxx. All rights reserved.
//

#import "ViewController.h"
#import "SchemesData.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSDictionary *bundle = SchemesData.bundles[indexPath.row];
    NSArray *schemes = [bundle objectForKey:@"schemes"];

    NSLog(@"Start: %@", [bundle objectForKey:@"name"]);
    if (schemes.count > 0) {
        BOOL isFailed = NO;
        
        for (NSString *scheme in schemes) {
            NSString *schemeURLString = [self schemeFromString:scheme];
            NSURL *url = [NSURL URLWithString:schemeURLString];
            BOOL canOpenURL = [UIApplication.sharedApplication canOpenURL:url];

            if (!canOpenURL) {
                isFailed = YES;
                NSLog(@"ERROR (%@) url = %@", [bundle objectForKey:@"name"],  url);
            }
        }
        
        if (!isFailed) {
            NSLog(@"All schemes are alives!");
        }
    } else {
        NSLog(@"Warning: empty schemes list");
    }
    NSLog(@"End.");
}

- (NSString *)schemeFromString:(NSString *)string {
    return [NSString stringWithFormat:@"%@://", string];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return SchemesData.bundles.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"identifier"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"MyIdentifier"];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }

    NSDictionary *item = (NSDictionary *)[SchemesData.bundles objectAtIndex:indexPath.row];
    NSString *appName = [item objectForKey:@"name"];

    cell.textLabel.text = appName;
    cell.selectionStyle = UITableViewCellSelectionStyleDefault;

    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return (CGFloat)50.0;
}

@end
