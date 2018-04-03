//
//  JuAVPlayer.h
//  JuMedia
//
//  Created by Juvid on 2018/3/28.
//  Copyright © 2018年 Juvid. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVKit/AVKit.h>

typedef NS_ENUM(NSInteger, JUAVPlayerStatus) {
    JUAVPlayerStatusReadyToPlay = 0, // 准备好播放
    JUAVPlayerStatusLoadingVideo,    // 加载视频
    JUAVPlayerStatusPlayEnd,         // 播放结束
    JUAVPlayerStatusCacheData,       // 缓冲视频
    JUAVPlayerStatusCacheEnd,        // 缓冲结束
    JUAVPlayerStatusPlayStop,        // 播放中断 （多是没网）
    JUAVPlayerStatusItemFailed,      // 视频资源问题
    JUAVPlayerStatusEnterBack,       // 进入后台
    JUAVPlayerStatusBecomeActive,    // 从后台返回
};

@protocol JuAVPlayerDelegate <NSObject>

@optional
// 进度刷新
- (void)juPlayProgress:(NSTimeInterval)totalTime currentTime:(NSTimeInterval)currentTime LoadRange:(NSTimeInterval)loadTime;
// 状态/错误 提示
- (void)juPromptPlayerStatusOrErrorWith:(JUAVPlayerStatus)status;

@end


@interface JuAVPlayer : UIView
@property (nonatomic, weak) id<JuAVPlayerDelegate>ju_Delegate;


// 视频总长度
@property (nonatomic, assign) NSTimeInterval ju_TotalTime;
// 视频总长度
//@property (nonatomic, assign) NSTimeInterval currentTime;
// 缓存数据
@property (nonatomic, assign) NSTimeInterval ju_LoadRange;


/**
 准备播放器

 @param videoPath 视频地址
 */
//- (void)setupPlayerWith:(NSString *)videoPath;
- (void)juSetupPlayerWith:(NSURL *)videoURL;

/** 播放 */
- (void)juPlay;

/** 暂停 */
- (void)juPause;

/** 播放|暂停 */
- (void)juPlayOrPause:(void (^)(BOOL isPlay))block;

/** 拖动视频进度 */
- (void)juSeekPlayerTimeTo:(NSTimeInterval)time;

/** 跳动中不监听 */
- (void)juStartToSeek;

/**
 切换视频

 @param videoPath 视频地址
 */
//- (void)replacePalyerItem:(NSString *)videoPath;
- (void)replacePalyerItem:(NSURL *)videoURL;


@end
