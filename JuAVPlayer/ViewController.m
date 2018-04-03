//
//  ViewController.m
//  JuMedia
//
//  Created by Juvid on 2018/4/3.
//  Copyright © 2018年 Juvid. All rights reserved.
//

#import "ViewController.h"
#import "JuAVPlayer.h"
@interface ViewController ()<JuAVPlayerDelegate>{

    __weak IBOutlet JuAVPlayer *ju_vieVideo;
    __weak IBOutlet UIProgressView *ju_progressView;
    __weak IBOutlet UIButton *ju_btnPlay;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self juSetPlayerView];
    // Do any additional setup after loading the view.
}
/**
 创建播放器视图
 */
- (void)juSetPlayerView{

    ju_vieVideo.ju_Delegate = self;
    NSURL *remoteUrl = [NSURL URLWithString:@"http://w2.dwstatic.com/1/5/1525/127352-100-1434554639.mp4"];
    [ju_vieVideo juSetupPlayerWith:remoteUrl];
}
- (void)juPlayProgress:(NSTimeInterval)totalTime currentTime:(NSTimeInterval)currentTime LoadRange:(NSTimeInterval)loadTime{
    ju_progressView.progress=currentTime/totalTime;
}
// JUAVPlayer delegate  ----- 状态提示
- (void)juPromptPlayerStatusOrErrorWith:(JUAVPlayerStatus)status
{
    switch (status) {
        case JUAVPlayerStatusLoadingVideo:// 开始准备
            break;
        case JUAVPlayerStatusPlayEnd:// 播放完成
        {
             [ju_btnPlay setTitle:@"播放" forState:UIControlStateNormal];
        }
            break;
        default:
            break;
    }
}
- (IBAction)juTouchPlay:(id)sender {
    if ([ju_btnPlay.currentTitle isEqual:@"播放"]) {
        [ju_vieVideo juPlay];
        [ju_btnPlay setTitle:@"暂停" forState:UIControlStateNormal];
    }else{
        [ju_vieVideo juPause];
         [ju_btnPlay setTitle:@"播放" forState:UIControlStateNormal];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
