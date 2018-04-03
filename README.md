# JuMedia
AVKit视频播放自定义UI


/**
 准备播放器

 @param videoPath 视频地址
 */
- (void)juSetupPlayerWith:(NSURL *)videoURL;

/** 播放 */
- (void)juPlay;

/** 暂停 */
- (void)juPause;

/** 播放|暂停 */
- (void)juPlayOrPause:(void (^)(BOOL isPlay))block;

/** 拖动视频进度 */
- (void)juSeekPlayerTimeTo:(NSTimeInterval)time;


/**
 切换视频
 @param videoPath 视频地址
 */
- (void)juReplacePalyerItem:(NSURL *)videoURL;


// 播放进度刷新
- (void)juPlayProgress:(NSTimeInterval)totalTime currentTime:(NSTimeInterval)currentTime LoadRange:(NSTimeInterval)loadTime;

// 状态/错误 提示
- (void)juPromptPlayerStatusOrErrorWith:(JUAVPlayerStatus)status;
