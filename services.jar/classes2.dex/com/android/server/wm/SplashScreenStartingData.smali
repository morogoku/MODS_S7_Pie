.class Lcom/android/server/wm/SplashScreenStartingData;
.super Lcom/android/server/wm/StartingData;
.source "SplashScreenStartingData.java"


# instance fields
.field private final mCompatInfo:Landroid/content/res/CompatibilityInfo;

.field private final mIcon:I

.field private final mLabelRes:I

.field private final mLogo:I

.field private final mMergedOverrideConfiguration:Landroid/content/res/Configuration;

.field private final mNonLocalizedLabel:Ljava/lang/CharSequence;

.field private final mPkg:Ljava/lang/String;

.field private final mTheme:I

.field private final mWindowFlags:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/content/res/Configuration;)V
    .registers 11

    invoke-direct {p0, p1}, Lcom/android/server/wm/StartingData;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object p2, p0, Lcom/android/server/wm/SplashScreenStartingData;->mPkg:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/wm/SplashScreenStartingData;->mTheme:I

    iput-object p4, p0, Lcom/android/server/wm/SplashScreenStartingData;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    iput-object p5, p0, Lcom/android/server/wm/SplashScreenStartingData;->mNonLocalizedLabel:Ljava/lang/CharSequence;

    iput p6, p0, Lcom/android/server/wm/SplashScreenStartingData;->mLabelRes:I

    iput p7, p0, Lcom/android/server/wm/SplashScreenStartingData;->mIcon:I

    iput p8, p0, Lcom/android/server/wm/SplashScreenStartingData;->mLogo:I

    iput p9, p0, Lcom/android/server/wm/SplashScreenStartingData;->mWindowFlags:I

    iput-object p10, p0, Lcom/android/server/wm/SplashScreenStartingData;->mMergedOverrideConfiguration:Landroid/content/res/Configuration;

    return-void
.end method


# virtual methods
.method createStartingSurface(Lcom/android/server/wm/AppWindowToken;)Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;
    .registers 21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x0

    const/4 v4, -0x1

    iget-object v0, v1, Lcom/android/server/wm/SplashScreenStartingData;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v5

    :try_start_b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, v1, Lcom/android/server/wm/SplashScreenStartingData;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mCustomStartingWindowController:Lcom/android/server/wm/CustomStartingWindowController;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/CustomStartingWindowController;->canAddCustomStartingWindowLocked(Lcom/android/server/wm/AppWindowToken;)Z

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v7

    iget v7, v7, Lcom/android/server/wm/Task;->mUserId:I

    iget-object v8, v2, Lcom/android/server/wm/AppWindowToken;->mCustomStartingWindowKey:Ljava/lang/String;

    monitor-exit v5
    :try_end_29
    .catchall {:try_start_b .. :try_end_29} :catchall_7b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    if-eqz v0, :cond_52

    iget-object v5, v1, Lcom/android/server/wm/SplashScreenStartingData;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/SamsungWindowManagerService;->mCustomStartingWindowController:Lcom/android/server/wm/CustomStartingWindowController;

    iget-object v9, v2, Lcom/android/server/wm/AppWindowToken;->mCustomStartingWindowKey:Ljava/lang/String;

    invoke-virtual {v5, v9, v6, v7}, Lcom/android/server/wm/CustomStartingWindowController;->getImageForCustomStartingWindow(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_46

    iget-object v5, v1, Lcom/android/server/wm/SplashScreenStartingData;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/SamsungWindowManagerService;->mCustomStartingWindowController:Lcom/android/server/wm/CustomStartingWindowController;

    const/4 v9, 0x1

    invoke-virtual {v5, v8, v9, v7}, Lcom/android/server/wm/CustomStartingWindowController;->setCustomImageLoaded(Ljava/lang/String;ZI)Z

    :cond_46
    if-nez v3, :cond_52

    iget-object v5, v1, Lcom/android/server/wm/SplashScreenStartingData;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/SamsungWindowManagerService;->mCustomStartingWindowController:Lcom/android/server/wm/CustomStartingWindowController;

    invoke-virtual {v5, v8, v6, v7}, Lcom/android/server/wm/CustomStartingWindowController;->getCustomStartingWindowLayoutResId(Ljava/lang/String;II)I

    move-result v4

    :cond_52
    iget-object v0, v1, Lcom/android/server/wm/SplashScreenStartingData;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v6, v2, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    iget-object v7, v1, Lcom/android/server/wm/SplashScreenStartingData;->mPkg:Ljava/lang/String;

    iget v8, v1, Lcom/android/server/wm/SplashScreenStartingData;->mTheme:I

    iget-object v9, v1, Lcom/android/server/wm/SplashScreenStartingData;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    iget-object v10, v1, Lcom/android/server/wm/SplashScreenStartingData;->mNonLocalizedLabel:Ljava/lang/CharSequence;

    iget v11, v1, Lcom/android/server/wm/SplashScreenStartingData;->mLabelRes:I

    iget v12, v1, Lcom/android/server/wm/SplashScreenStartingData;->mIcon:I

    iget v13, v1, Lcom/android/server/wm/SplashScreenStartingData;->mLogo:I

    iget v14, v1, Lcom/android/server/wm/SplashScreenStartingData;->mWindowFlags:I

    iget-object v15, v1, Lcom/android/server/wm/SplashScreenStartingData;->mMergedOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v16

    move-object/from16 v17, v3

    move/from16 v18, v4

    invoke-interface/range {v5 .. v18}, Lcom/android/server/policy/WindowManagerPolicy;->addSplashScreen(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/content/res/Configuration;ILandroid/graphics/Bitmap;I)Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    move-result-object v0

    return-object v0

    :catchall_7b
    move-exception v0

    :try_start_7c
    monitor-exit v5
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_7b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method
