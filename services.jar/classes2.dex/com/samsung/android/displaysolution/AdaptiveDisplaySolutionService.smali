.class public Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;
.super Ljava/lang/Object;
.source "AdaptiveDisplaySolutionService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$ADSControlHandler;,
        Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;,
        Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$ScreenWatchingReceiver;
    }
.end annotation


# static fields
.field private static final ADS_ON:Ljava/lang/String; = "sys.adaptivedisplaysolution.adson"

.field private static final TAG:Ljava/lang/String; = "AdaptiveDisplaySolutionService"


# instance fields
.field private final ADAPTIVE_CONTROL_PATH:Ljava/lang/String;

.field private final ADAPTIVE_CONTROL_SUB_PATH:Ljava/lang/String;

.field private final AVAILABLE_ADAPTIVE_CONTROL:Z

.field private final DEBUG:Z

.field private mAdaptiveControlValues:[Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mDetailViewState:Z

.field private mHandler:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$ADSControlHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mPlatformBrightnessValue:I

.field private mScreenBrightnessRangeForClearView:[I

.field private mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

.field private mSettingsObserver:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;

.field private mUseAdaptiveDisplaySolutionServiceConfig:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->DEBUG:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mUseAdaptiveDisplaySolutionServiceConfig:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mDetailViewState:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mAdaptiveControlValues:[Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mScreenBrightnessRangeForClearView:[I

    const-string v2, "/sys/class/lcd/panel/adaptive_control"

    iput-object v2, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->ADAPTIVE_CONTROL_PATH:Ljava/lang/String;

    const-string v2, "/sys/class/lcd/panel1/adaptive_control"

    iput-object v2, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->ADAPTIVE_CONTROL_SUB_PATH:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "AdaptiveDisplaySolutionServiceThread"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v2, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$ADSControlHandler;

    iget-object v3, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$ADSControlHandler;-><init>(Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mHandler:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$ADSControlHandler;

    iget-object v2, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x112000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mUseAdaptiveDisplaySolutionServiceConfig:Z

    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/lcd/panel/adaptive_control"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_7a

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->AVAILABLE_ADAPTIVE_CONTROL:Z

    iget-object v2, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x107005a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mAdaptiveControlValues:[Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10700a6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mScreenBrightnessRangeForClearView:[I

    goto :goto_7c

    :cond_7a
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->AVAILABLE_ADAPTIVE_CONTROL:Z

    :goto_7c
    new-instance v2, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;

    iget-object v3, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mHandler:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$ADSControlHandler;

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;-><init>(Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mSettingsObserver:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;

    iget-object v2, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "screen_brightness"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mSettingsObserver:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$ScreenWatchingReceiver;

    invoke-direct {v4, p0, v1}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$ScreenWatchingReceiver;-><init>(Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$1;)V

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, v0

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const-string/jumbo v1, "sys.adaptivedisplaysolution.adson"

    const-string v3, "false"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mUseAdaptiveDisplaySolutionServiceConfig:Z

    if-eqz v1, :cond_d4

    const-string/jumbo v1, "sys.adaptivedisplaysolution.adson"

    const-string/jumbo v3, "true"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d4
    const-string v1, "AdaptiveDisplaySolutionService"

    const-string v3, "AdaptiveDisplaySolutionService Enabled"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->receive_boot_completed_intent()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->receive_screen_on_intent()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->receive_screen_off_intent()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->receive_user_present_intent()V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->setting_is_changed()V

    return-void
.end method

.method public static fileWriteString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    const-string v1, "AdaptiveDisplaySolutionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fileWriteString to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1f
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_29
    .catch Ljava/io/FileNotFoundException; {:try_start_1f .. :try_end_29} :catch_43
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_29} :catch_36

    move-object v0, v1

    nop

    :try_start_2b
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_35} :catch_36

    goto :goto_42

    :catch_36
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :try_start_3a
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3d} :catch_3e

    goto :goto_42

    :catch_3e
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_42
    return-void

    :catch_43
    move-exception v1

    return-void
.end method

.method private getStringFromFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x80

    const/16 v2, 0x80

    new-array v3, v2, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v7, v6

    :goto_b
    if-ge v7, v2, :cond_12

    aput-byte v6, v3, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    :cond_12
    :try_start_12
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v2

    nop

    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v2

    move v5, v2

    if-eqz v5, :cond_2f

    new-instance v2, Ljava/lang/String;

    add-int/lit8 v7, v5, -0x1

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v6, v7, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object v4, v2

    :cond_2f
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_32
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_32} :catch_62
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_32} :catch_42
    .catchall {:try_start_12 .. :try_end_32} :catchall_40

    nop

    :try_start_33
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_37

    :goto_36
    goto :goto_7f

    :catch_37
    move-exception v2

    const-string v6, "AdaptiveDisplaySolutionService"

    const-string v7, "File Close error"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    :catchall_40
    move-exception v2

    goto :goto_80

    :catch_42
    move-exception v2

    :try_start_43
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    const-string v6, "AdaptiveDisplaySolutionService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IOException : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5c
    .catchall {:try_start_43 .. :try_end_5c} :catchall_40

    if-eqz v0, :cond_7f

    :try_start_5e
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_37

    goto :goto_36

    :catch_62
    move-exception v2

    :try_start_63
    const-string v6, "AdaptiveDisplaySolutionService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FileNotFoundException : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_79
    .catchall {:try_start_63 .. :try_end_79} :catchall_40

    if-eqz v0, :cond_7f

    :try_start_7b
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_7e} :catch_37

    goto :goto_36

    :cond_7f
    :goto_7f
    return-object v4

    :goto_80
    if-eqz v0, :cond_8e

    :try_start_82
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_85} :catch_86

    goto :goto_8e

    :catch_86
    move-exception v6

    const-string v7, "AdaptiveDisplaySolutionService"

    const-string v8, "File Close error"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8e
    :goto_8e
    throw v2
.end method

.method private receive_boot_completed_intent()V
    .registers 1

    return-void
.end method

.method private receive_screen_off_intent()V
    .registers 1

    return-void
.end method

.method private receive_screen_on_intent()V
    .registers 1

    return-void
.end method

.method private receive_user_present_intent()V
    .registers 1

    return-void
.end method

.method private setting_is_changed()V
    .registers 3

    const-string v0, "AdaptiveDisplaySolutionService"

    const-string/jumbo v1, "setting_is_changed()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateAdaptiveControlState(Z)V
    .registers 5

    const-string v0, "AdaptiveDisplaySolutionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateAdaptiveControlState() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mContext:Landroid/content/Context;

    const-string v1, "DisplaySolution"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    iput-object v0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->AVAILABLE_ADAPTIVE_CONTROL:Z

    if-nez v0, :cond_2f

    const-string v0, "AdaptiveDisplaySolutionService"

    const-string v1, "!AVAILABLE_ADAPTIVE_CONTROL"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2f
    const/4 v0, 0x1

    if-eqz p1, :cond_67

    const-string v1, "AdaptiveDisplaySolutionService"

    const-string v2, "[AdaptiveControl]: ACL OFF"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onAutoCurrentLimitOffMode(Z)V

    iget-object v1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mAdaptiveControlValues:[Ljava/lang/String;

    array-length v1, v1

    sub-int/2addr v1, v0

    :goto_42
    move v0, v1

    if-ltz v0, :cond_9c

    const-string v1, "/sys/class/lcd/panel/adaptive_control"

    iget-object v2, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mAdaptiveControlValues:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v1, v2}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/class/lcd/panel1/adaptive_control"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_64

    const-string v1, "/sys/class/lcd/panel1/adaptive_control"

    iget-object v2, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mAdaptiveControlValues:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v1, v2}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_64
    add-int/lit8 v1, v0, -0x1

    goto :goto_42

    :cond_67
    const-string v1, "AdaptiveDisplaySolutionService"

    const-string v2, "[AdaptiveControl]: ACL ON"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onAutoCurrentLimitOffMode(Z)V

    nop

    :goto_75
    iget-object v1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mAdaptiveControlValues:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_9c

    const-string v1, "/sys/class/lcd/panel/adaptive_control"

    iget-object v2, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mAdaptiveControlValues:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v1, v2}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/class/lcd/panel1/adaptive_control"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_99

    const-string v1, "/sys/class/lcd/panel1/adaptive_control"

    iget-object v2, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mAdaptiveControlValues:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v1, v2}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_99
    add-int/lit8 v0, v0, 0x1

    goto :goto_75

    :cond_9c
    return-void
.end method


# virtual methods
.method public setAutoCurrentLimitState(Z)V
    .registers 5

    const-string v0, "AdaptiveDisplaySolutionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAutoCurrentLimitState() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->updateAdaptiveControlState(Z)V

    return-void
.end method

.method public setGalleryDetailViewMode(Z)V
    .registers 5

    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mDetailViewState:Z

    const-string v0, "AdaptiveDisplaySolutionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setGalleryDetailViewMode() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mDetailViewState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mDetailViewState:Z

    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->updateAdaptiveControlState(Z)V

    return-void
.end method
