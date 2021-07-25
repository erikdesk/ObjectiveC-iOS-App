// https://stackoverflow.com/questions/7010547/uitextfield-text-change-event
// https://stackoverflow.com/questions/14231879/is-it-possible-to-change-color-of-single-word-in-uitextview-and-uitextfield

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) UITextField *textField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    CGRect textFieldRect = CGRectMake(10.0, 30.0, 300.0, 230.0);
    _textField = [[UITextField alloc] initWithFrame:textFieldRect];
    [_textField setPlaceholder:@"placeholderTextplaceholderTextplaceholderText"];
    [_textField setBackgroundColor:[UIColor whiteColor]];
    [self.view addSubview:_textField];
    
    [_textField setTranslatesAutoresizingMaskIntoConstraints:NO];
    [_textField.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor].active = YES;
    [_textField.centerYAnchor constraintEqualToAnchor:self.view.centerYAnchor].active = YES;
    
    [_textField addTarget:self action:@selector(textFieldDidChange:)
        forControlEvents:UIControlEventEditingChanged];
}

- (void)textFieldDidChange:(UITextField *)sender {
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:sender.text];
    NSArray *words = [sender.text componentsSeparatedByString:@" "];

    for (NSString *word in words) {
        if ([[word uppercaseString] isEqual: @"RED"]) {
            NSRange range = [sender.text rangeOfString:word];
            [attributedString addAttribute:NSForegroundColorAttributeName value:[UIColor redColor] range:range];
            NSLog(@"%@", word);
        }
    }
    [sender setAttributedText:attributedString];
}

@end
