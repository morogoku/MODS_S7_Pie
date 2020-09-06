.class public Lcom/android/server/notification/EasyMuteController;
.super Ljava/lang/Object;
.source "EasyMuteController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/EasyMuteController$EasyMuteSettingObserver;
    }
.end annotation


# instance fields
.field private final RINGTONE_PLAYER:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mEasyMuteMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

.field private final mEasyMuteSettingObserver:Lcom/android/server/notification/EasyMuteController$EasyMuteSettingObserver;

.field private final mHandler:Landroid/os/Handler;

.field private mIsRegister:Z

.field private mMethodRingtonePlayer:Ljava/lang/reflect/Method;

.field private mMotionListener:Lcom/samsung/android/gesture/SemMotionEventListener;

.field private mMotionOn:Z

.field private mNotificationPlayerBinder:Landroid/os/IBinder;

.field private mOverTurnOn:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EasyMuteController"

    iput-object v0, p0, Lcom/android/server/notification/EasyMuteController;->TAG:Ljava/lang/String;

    const-string v0, "android.media.IRingtonePlayer"

    iput-object v0, p0, Lcom/android/server/notification/EasyMuteController;->RINGTONE_PLAYER:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/notification/EasyMuteController;->mEasyMuteMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    new-instance v1, Lcom/android/server/notification/EasyMuteController$1;

    invoke-direct {v1, p0}, Lcom/android/server/notification/EasyMuteController$1;-><init>(Lcom/android/server/notification/EasyMuteController;)V

    iput-object v1, p0, Lcom/android/server/notification/EasyMuteController;->mMotionListener:Lcom/samsung/android/gesture/SemMotionEventListener;

    iput-object p1, p0, Lcom/android/server/notification/EasyMuteController;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/server/notification/EasyMuteController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/notification/EasyMuteController;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/server/notification/EasyMuteController;->mAudioManager:Landroid/media/AudioManager;

    new-instance v1, Lcom/android/server/notification/EasyMuteController$EasyMuteSettingObserver;

    iget-object v2, p0, Lcom/android/server/notification/EasyMuteController;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/server/notification/EasyMuteController$EasyMuteSettingObserver;-><init>(Lcom/android/server/notification/EasyMuteController;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/notification/EasyMuteController;->mEasyMuteSettingObserver:Lcom/android/server/notification/EasyMuteController$EasyMuteSettingObserver;

    iget-object v1, p0, Lcom/android/server/notification/EasyMuteController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "master_motion"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/notification/EasyMuteController;->mEasyMuteSettingObserver:Lcom/android/server/notification/EasyMuteController$EasyMuteSettingObserver;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/server/notification/EasyMuteController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "motion_overturn"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/notification/EasyMuteController;->mEasyMuteSettingObserver:Lcom/android/server/notification/EasyMuteController$EasyMuteSettingObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/server/notification/EasyMuteController;->mEasyMuteSettingObserver:Lcom/android/server/notification/EasyMuteController$EasyMuteSettingObserver;

    invoke-virtual {v1, v4}, Lcom/android/server/notification/EasyMuteController$EasyMuteSettingObserver;->onChange(Z)V

    :try_start_5d
    const-string v1, "android.media.IRingtonePlayer"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Landroid/app/INotificationPlayerOnCompletionListener;

    aput-object v3, v2, v4

    const-string/jumbo v3, "setOnCompletionListener"

    invoke-virtual {v1, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/notification/EasyMuteController;->mMethodRingtonePlayer:Ljava/lang/reflect/Method;
    :try_end_73
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5d .. :try_end_73} :catch_7f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5d .. :try_end_73} :catch_74

    goto :goto_89

    :catch_74
    move-exception v1

    const-string v2, "EasyMuteController"

    const-string v3, "NoSuchMethodException"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, p0, Lcom/android/server/notification/EasyMuteController;->mMethodRingtonePlayer:Ljava/lang/reflect/Method;

    goto :goto_8a

    :catch_7f
    move-exception v1

    const-string v2, "EasyMuteController"

    const-string v3, "ClassNotFoundException"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, p0, Lcom/android/server/notification/EasyMuteController;->mMethodRingtonePlayer:Ljava/lang/reflect/Method;

    :goto_89
    nop

    :goto_8a
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/notification/EasyMuteController;)Landroid/media/AudioManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/notification/EasyMuteController;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/notification/EasyMuteController;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/notification/EasyMuteController;->mIsRegister:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/notification/EasyMuteController;)Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/android/server/notification/EasyMuteController;->mNotificationPlayerBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/notification/EasyMuteController;Landroid/os/IBinder;)Landroid/os/IBinder;
    .registers 2

    iput-object p1, p0, Lcom/android/server/notification/EasyMuteController;->mNotificationPlayerBinder:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/notification/EasyMuteController;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/notification/EasyMuteController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/notification/EasyMuteController;ZZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/EasyMuteController;->setEasyMuteEnabled(ZZ)V

    return-void
.end method

.method private setEasyMuteEnabled(ZZ)V
    .registers 6

    const-string v0, "EasyMuteController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EasyMute updated 1."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " 2."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/notification/EasyMuteController;->mMotionOn:Z

    if-ne v0, p1, :cond_30

    iget-boolean v0, p0, Lcom/android/server/notification/EasyMuteController;->mOverTurnOn:Z

    if-eq v0, p2, :cond_27

    goto :goto_30

    :cond_27
    const-string v0, "EasyMuteController"

    const-string/jumbo v1, "setEasyMuteEnabled no setting changed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_69

    :cond_30
    :goto_30
    iput-boolean p1, p0, Lcom/android/server/notification/EasyMuteController;->mMotionOn:Z

    iput-boolean p2, p0, Lcom/android/server/notification/EasyMuteController;->mOverTurnOn:Z

    iget-boolean v0, p0, Lcom/android/server/notification/EasyMuteController;->mMotionOn:Z

    if-eqz v0, :cond_57

    iget-boolean v0, p0, Lcom/android/server/notification/EasyMuteController;->mOverTurnOn:Z

    if-eqz v0, :cond_57

    iget-object v0, p0, Lcom/android/server/notification/EasyMuteController;->mEasyMuteMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    if-nez v0, :cond_4e

    iget-object v0, p0, Lcom/android/server/notification/EasyMuteController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "motion_recognition"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    iput-object v0, p0, Lcom/android/server/notification/EasyMuteController;->mEasyMuteMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    goto :goto_69

    :cond_4e
    const-string v0, "EasyMuteController"

    const-string/jumbo v1, "setEasyMuteEnabled mEasyMuteMotionManager in not null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_69

    :cond_57
    const-string v0, "EasyMuteController"

    const-string/jumbo v1, "setEasyMuteEnabled setting off"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/notification/EasyMuteController;->mIsRegister:Z

    if-eqz v0, :cond_66

    invoke-virtual {p0}, Lcom/android/server/notification/EasyMuteController;->unregisterListener()V

    :cond_66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/notification/EasyMuteController;->mEasyMuteMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    :goto_69
    return-void
.end method


# virtual methods
.method public isEnable()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/notification/EasyMuteController;->mMotionOn:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/notification/EasyMuteController;->mOverTurnOn:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public registerListener()V
    .registers 7

    invoke-virtual {p0}, Lcom/android/server/notification/EasyMuteController;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_7f

    iget-boolean v0, p0, Lcom/android/server/notification/EasyMuteController;->mIsRegister:Z

    if-nez v0, :cond_7f

    iget-object v0, p0, Lcom/android/server/notification/EasyMuteController;->mEasyMuteMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    if-eqz v0, :cond_77

    iget-object v0, p0, Lcom/android/server/notification/EasyMuteController;->mEasyMuteMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    iget-object v1, p0, Lcom/android/server/notification/EasyMuteController;->mMotionListener:Lcom/samsung/android/gesture/SemMotionEventListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->registerListener(Lcom/samsung/android/gesture/SemMotionEventListener;I)V

    iput-boolean v2, p0, Lcom/android/server/notification/EasyMuteController;->mIsRegister:Z

    const-string v0, "EasyMuteController"

    const-string v1, "Reg. OverTurn"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/notification/EasyMuteController;->mNotificationPlayerBinder:Landroid/os/IBinder;

    if-nez v0, :cond_86

    new-array v0, v2, [Ljava/lang/Object;

    new-instance v1, Lcom/android/server/notification/EasyMuteController$2;

    invoke-direct {v1, p0}, Lcom/android/server/notification/EasyMuteController$2;-><init>(Lcom/android/server/notification/EasyMuteController;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x0

    :try_start_2e
    iget-object v3, p0, Lcom/android/server/notification/EasyMuteController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/notification/EasyMuteController;->mMethodRingtonePlayer:Ljava/lang/reflect/Method;

    invoke-virtual {v4, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    iput-object v4, p0, Lcom/android/server/notification/EasyMuteController;->mNotificationPlayerBinder:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/android/server/notification/EasyMuteController;->mNotificationPlayerBinder:Landroid/os/IBinder;

    new-instance v5, Lcom/android/server/notification/EasyMuteController$3;

    invoke-direct {v5, p0}, Lcom/android/server/notification/EasyMuteController$3;-><init>(Lcom/android/server/notification/EasyMuteController;)V

    invoke-interface {v4, v5, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_48
    .catch Ljava/lang/IllegalAccessException; {:try_start_2e .. :try_end_48} :catch_64
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2e .. :try_end_48} :catch_52
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_48} :catch_49

    goto :goto_75

    :catch_49
    move-exception v1

    const-string v2, "EasyMuteController"

    const-string v3, "RemoteException"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_76

    :catch_52
    move-exception v2

    const-string v3, "EasyMuteController"

    const-string v4, "InvocationTargetException"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, p0, Lcom/android/server/notification/EasyMuteController;->mNotificationPlayerBinder:Landroid/os/IBinder;

    iget-boolean v1, p0, Lcom/android/server/notification/EasyMuteController;->mIsRegister:Z

    if-eqz v1, :cond_75

    invoke-virtual {p0}, Lcom/android/server/notification/EasyMuteController;->unregisterListener()V

    goto :goto_75

    :catch_64
    move-exception v2

    const-string v3, "EasyMuteController"

    const-string v4, "IllegalAccessException"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, p0, Lcom/android/server/notification/EasyMuteController;->mNotificationPlayerBinder:Landroid/os/IBinder;

    iget-boolean v1, p0, Lcom/android/server/notification/EasyMuteController;->mIsRegister:Z

    if-eqz v1, :cond_75

    invoke-virtual {p0}, Lcom/android/server/notification/EasyMuteController;->unregisterListener()V

    :cond_75
    :goto_75
    nop

    :goto_76
    goto :goto_86

    :cond_77
    const-string v0, "EasyMuteController"

    const-string v1, "Register failed. mEasyMuteMotionManager is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_86

    :cond_7f
    const-string v0, "EasyMuteController"

    const-string v1, "Register failed. already registered or setting not eanbled"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_86
    :goto_86
    return-void
.end method

.method public resetEasyMuteSettingObserver(I)V
    .registers 6

    const-string v0, "EasyMuteController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetEasyMuteSettingObserver: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/notification/EasyMuteController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/EasyMuteController;->mEasyMuteSettingObserver:Lcom/android/server/notification/EasyMuteController$EasyMuteSettingObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/server/notification/EasyMuteController;->mEasyMuteSettingObserver:Lcom/android/server/notification/EasyMuteController$EasyMuteSettingObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/notification/EasyMuteController$EasyMuteSettingObserver;->onChange(Z)V

    iget-object v0, p0, Lcom/android/server/notification/EasyMuteController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "master_motion"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/notification/EasyMuteController;->mEasyMuteSettingObserver:Lcom/android/server/notification/EasyMuteController$EasyMuteSettingObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/server/notification/EasyMuteController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "motion_overturn"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/notification/EasyMuteController;->mEasyMuteSettingObserver:Lcom/android/server/notification/EasyMuteController$EasyMuteSettingObserver;

    invoke-virtual {v0, v1, v3, v2, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public unregisterListener()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/notification/EasyMuteController;->mIsRegister:Z

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/server/notification/EasyMuteController;->mEasyMuteMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/notification/EasyMuteController;->mEasyMuteMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    iget-object v1, p0, Lcom/android/server/notification/EasyMuteController;->mMotionListener:Lcom/samsung/android/gesture/SemMotionEventListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->unregisterListener(Lcom/samsung/android/gesture/SemMotionEventListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/notification/EasyMuteController;->mIsRegister:Z

    const-string v0, "EasyMuteController"

    const-string v1, "UnReg. OverTurn"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    :cond_1a
    const-string v0, "EasyMuteController"

    const-string v1, "UnRegister failed. mEasyMuteMotionManager is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    :cond_22
    const-string v0, "EasyMuteController"

    const-string v1, "UnRegister failed. no registered"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_29
    return-void
.end method
