.class public final Lcom/android/server/accessibility/OverlayMagnifier;
.super Lcom/android/server/accessibility/BaseEventStreamTransformation;
.source "OverlayMagnifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MY_PID:I

.field private static final SIZE_LARGE:I = 0x2

.field private static final SIZE_MEDIUM:I = 0x1

.field private static final SIZE_SMALL:I


# instance fields
.field private final mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

.field private final mContext:Landroid/content/Context;

.field private mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field private mCoverState:Z

.field private final mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

.field private final mDisplayManager:Landroid/hardware/display/IDisplayManager;

.field private mHeight:I

.field private final mMagnificationSettingsObserver:Landroid/database/ContentObserver;

.field private mMagnifierScale:I

.field private mMagnifierSize:I

.field private mPolicy:Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;

.field private final mScreenStateReceiver:Landroid/content/BroadcastReceiver;

.field private mWidth:I

.field private final mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/server/accessibility/OverlayMagnifier;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/accessibility/OverlayMagnifier;->LOG_TAG:Ljava/lang/String;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/android/server/accessibility/OverlayMagnifier;->MY_PID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .registers 8

    invoke-direct {p0}, Lcom/android/server/accessibility/BaseEventStreamTransformation;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mMagnifierScale:I

    iput v0, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mMagnifierSize:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mWidth:I

    iput v0, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mHeight:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mCoverState:Z

    new-instance v2, Lcom/android/server/accessibility/OverlayMagnifier$1;

    invoke-direct {v2, p0}, Lcom/android/server/accessibility/OverlayMagnifier$1;-><init>(Lcom/android/server/accessibility/OverlayMagnifier;)V

    iput-object v2, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Lcom/android/server/accessibility/OverlayMagnifier$2;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/android/server/accessibility/OverlayMagnifier$2;-><init>(Lcom/android/server/accessibility/OverlayMagnifier;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mMagnificationSettingsObserver:Landroid/database/ContentObserver;

    new-instance v2, Lcom/android/server/accessibility/OverlayMagnifier$3;

    invoke-direct {v2, p0}, Lcom/android/server/accessibility/OverlayMagnifier$3;-><init>(Lcom/android/server/accessibility/OverlayMagnifier;)V

    iput-object v2, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    iput-object p1, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mWindowManager:Landroid/view/IWindowManager;

    const-string/jumbo v2, "display"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/display/IDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    new-instance v2, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;

    invoke-direct {v2, p0}, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;-><init>(Lcom/android/server/accessibility/OverlayMagnifier;)V

    iput-object v2, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mPolicy:Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;

    iput-object p2, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    :try_start_4f
    iget-object v2, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v2, v1}, Landroid/hardware/display/IDisplayManager;->enableOverlayMagnifier(Z)V

    iget-object v1, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105002a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050025

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    const/high16 v4, 0x40000000    # 2.0f

    invoke-interface {v3, v1, v2, v4}, Landroid/hardware/display/IDisplayManager;->setMagnificationSettings(IIF)V
    :try_end_75
    .catch Landroid/os/RemoteException; {:try_start_4f .. :try_end_75} :catch_76

    goto :goto_7a

    :catch_76
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_7a
    iget-object v1, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "hover_zoom_magnifier_size"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mMagnificationSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "hover_zoom_value"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mMagnificationSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/android/server/accessibility/OverlayMagnifier;->setMagnificationSettings()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Lcom/samsung/android/cover/CoverManager;

    iget-object v2, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iget-object v1, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iget-object v2, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/cover/CoverManager;->registerListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/accessibility/OverlayMagnifier;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/accessibility/OverlayMagnifier;)Landroid/hardware/display/IDisplayManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/accessibility/OverlayMagnifier;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/accessibility/OverlayMagnifier;->hideMagnifier()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/accessibility/OverlayMagnifier;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/accessibility/OverlayMagnifier;->setMagnificationSettings()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/accessibility/OverlayMagnifier;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mCoverState:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/accessibility/OverlayMagnifier;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mCoverState:Z

    return p1
.end method

.method private hideMagnifier()V
    .registers 3

    sget-object v0, Lcom/android/server/accessibility/OverlayMagnifier;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "hideMagnifier()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mPolicy:Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;

    invoke-virtual {v0}, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->stopMagnifier()V

    :try_start_d
    iget-object v0, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/hardware/display/IDisplayManager;->setMagnificationSpec(Landroid/view/MagnificationSpec;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_13} :catch_14

    goto :goto_18

    :catch_14
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_18
    return-void
.end method

.method private setMagnificationSettings()V
    .registers 8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "hover_zoom_magnifier_size"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "hover_zoom_value"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    sget-object v3, Lcom/android/server/accessibility/OverlayMagnifier;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setMagnificationSettings: size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " scale="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mMagnifierScale:I

    if-eq v3, v2, :cond_44

    const/4 v0, 0x1

    iput v2, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mMagnifierScale:I

    :cond_44
    iget v3, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mMagnifierSize:I

    if-eq v3, v1, :cond_ac

    const/4 v0, 0x1

    iput v1, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mMagnifierSize:I

    packed-switch v1, :pswitch_data_c2

    goto :goto_ac

    :pswitch_4f
    iget-object v3, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050028

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mWidth:I

    iget-object v3, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050023

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mHeight:I

    goto :goto_ac

    :pswitch_6e
    iget-object v3, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050029

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mWidth:I

    iget-object v3, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050024

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mHeight:I

    goto :goto_ac

    :pswitch_8d
    iget-object v3, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x105002a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mWidth:I

    iget-object v3, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050025

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mHeight:I

    nop

    :cond_ac
    :goto_ac
    if-eqz v0, :cond_bf

    :try_start_ae
    iget-object v3, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    iget v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mWidth:I

    iget v5, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mHeight:I

    iget v6, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mMagnifierScale:I

    int-to-float v6, v6

    invoke-interface {v3, v4, v5, v6}, Landroid/hardware/display/IDisplayManager;->setMagnificationSettings(IIF)V
    :try_end_ba
    .catch Landroid/os/RemoteException; {:try_start_ae .. :try_end_ba} :catch_bb

    goto :goto_bf

    :catch_bb
    move-exception v3

    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_bf
    :goto_bf
    return-void

    nop

    nop

    :pswitch_data_c2
    .packed-switch 0x0
        :pswitch_8d
        :pswitch_6e
        :pswitch_4f
    .end packed-switch
.end method


# virtual methods
.method public clear()V
    .registers 2

    const/16 v0, 0x1002

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/OverlayMagnifier;->clearEvents(I)V

    return-void
.end method

.method public clearEvents(I)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/server/accessibility/BaseEventStreamTransformation;->clearEvents(I)V

    return-void
.end method

.method public bridge synthetic getNext()Lcom/android/server/accessibility/EventStreamTransformation;
    .registers 2

    invoke-super {p0}, Lcom/android/server/accessibility/BaseEventStreamTransformation;->getNext()Lcom/android/server/accessibility/EventStreamTransformation;

    move-result-object v0

    return-object v0
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/server/accessibility/BaseEventStreamTransformation;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onDestroy()V
    .registers 3

    invoke-direct {p0}, Lcom/android/server/accessibility/OverlayMagnifier;->hideMagnifier()V

    iget-object v0, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iget-object v1, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/cover/CoverManager;->unregisterListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    iget-object v0, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mMagnificationSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :try_start_1c
    iget-object v0, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/hardware/display/IDisplayManager;->enableOverlayMagnifier(Z)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_22} :catch_23

    goto :goto_27

    :catch_23
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_27
    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;I)V
    .registers 3

    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 7

    iget-boolean v0, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mCoverState:Z

    if-eqz v0, :cond_56

    iget-object v0, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mPolicy:Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->onMotionEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_29

    packed-switch v0, :pswitch_data_66

    goto :goto_56

    :pswitch_14
    sget-object v1, Lcom/android/server/accessibility/OverlayMagnifier;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "onMotionEvent: spec is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/accessibility/OverlayMagnifier;->hideMagnifier()V

    goto :goto_56

    :pswitch_20
    sget-object v1, Lcom/android/server/accessibility/OverlayMagnifier;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "onMotionEvent: HoverEnter"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_56

    :cond_29
    iget-object v1, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mPolicy:Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;

    invoke-virtual {v1}, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->isMagnifying()Z

    move-result v1

    if-eqz v1, :cond_56

    iget-object v1, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mPolicy:Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;

    invoke-virtual {v1}, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object v1

    const/high16 v2, 0x40000000    # 2.0f

    iput v2, v1, Landroid/view/MagnificationSpec;->scale:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, v1, Landroid/view/MagnificationSpec;->offsetX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, v1, Landroid/view/MagnificationSpec;->offsetY:F

    :try_start_4b
    iget-object v2, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v2, v1}, Landroid/hardware/display/IDisplayManager;->setMagnificationSpec(Landroid/view/MagnificationSpec;)V
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_50} :catch_51

    goto :goto_55

    :catch_51
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_55
    nop

    :cond_56
    :goto_56
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_64

    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/BaseEventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    :cond_64
    return-void

    nop

    :pswitch_data_66
    .packed-switch 0x9
        :pswitch_20
        :pswitch_14
    .end packed-switch
.end method

.method public bridge synthetic setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/server/accessibility/BaseEventStreamTransformation;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    return-void
.end method
