.class public Lcom/android/server/display/WFDUibcManager;
.super Ljava/lang/Object;
.source "WFDUibcManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/WFDUibcManager$EventQueue;,
        Lcom/android/server/display/WFDUibcManager$EventDispatcher;,
        Lcom/android/server/display/WFDUibcManager$ScrollInput;,
        Lcom/android/server/display/WFDUibcManager$KeyInfo;,
        Lcom/android/server/display/WFDUibcManager$KeyInput;,
        Lcom/android/server/display/WFDUibcManager$TouchInput;,
        Lcom/android/server/display/WFDUibcManager$TouchPointer;,
        Lcom/android/server/display/WFDUibcManager$UIBCMode;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final INPUT_GENERIC_KEY_DOWN:I = 0x3

.field private static final INPUT_GENERIC_KEY_UP:I = 0x4

.field private static final INPUT_GENERIC_ROTATE:I = 0x8

.field private static final INPUT_GENERIC_SCROLL_HORIZONTAL:I = 0x7

.field private static final INPUT_GENERIC_SCROLL_VERTICAL:I = 0x6

.field private static final INPUT_GENERIC_TOUCH_DOWN:I = 0x0

.field private static final INPUT_GENERIC_TOUCH_MOVE:I = 0x2

.field private static final INPUT_GENERIC_TOUCH_UP:I = 0x1

.field private static final INPUT_GENERIC_ZOOM:I = 0x5

.field private static final KEY_MAX_EVENTS:I = 0xf

.field private static final TAG:Ljava/lang/String; = "WFDUibcManager"


# instance fields
.field private final KDDI_SOURCE_CONNECT_SUCCESS_ACTION:Ljava/lang/String;

.field private final KDDI_SOURCE_DISCONNECT_SUCCESS_ACTION:Ljava/lang/String;

.field private final PRESENTATION_START_ACTION:Ljava/lang/String;

.field private final PRESENTATION_STOP_ACTION:Ljava/lang/String;

.field private final SEC_UIBC_GET_FOCUS:Ljava/lang/String;

.field private final SLIDESHOW_START_ACTION:Ljava/lang/String;

.field private final SLIDESHOW_STOP_ACTION:Ljava/lang/String;

.field private final VIDEOPLAY_START_ACTION:Ljava/lang/String;

.field private final VIDEOPLAY_STOP_ACTION:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mEventDispatcher:Lcom/android/server/display/WFDUibcManager$EventDispatcher;

.field private mEventDispatcherThread:Ljava/lang/Thread;

.field private mExternalDisplayHeight:F

.field private mExternalDisplayID:I

.field private mExternalDisplayRatio:F

.field private mExternalDisplayWidth:F

.field private mIsKDDIServiceConnected:Z

.field private mIsPortraitMode:Z

.field private mIsPresentationMode:Z

.field private mPresentDisplayID:I

.field private mPrimaryDisplayHeight:F

.field private mPrimaryDisplayRatio:F

.field private mPrimaryDisplayWidth:F

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSinkUIBCVersion:I

.field private mUIBCMode:Lcom/android/server/display/WFDUibcManager$UIBCMode;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/WFDUibcManager;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.samsung.android.video.START_PRESENTATION"

    iput-object v0, p0, Lcom/android/server/display/WFDUibcManager;->VIDEOPLAY_START_ACTION:Ljava/lang/String;

    const-string v0, "com.samsung.android.video.END_PRESENTATION"

    iput-object v0, p0, Lcom/android/server/display/WFDUibcManager;->VIDEOPLAY_STOP_ACTION:Ljava/lang/String;

    const-string v0, "com.samsung.android.gallery.action.slideshow.start"

    iput-object v0, p0, Lcom/android/server/display/WFDUibcManager;->SLIDESHOW_START_ACTION:Ljava/lang/String;

    const-string v0, "com.samsung.android.gallery.action.slideshow.finish"

    iput-object v0, p0, Lcom/android/server/display/WFDUibcManager;->SLIDESHOW_STOP_ACTION:Ljava/lang/String;

    const-string v0, "com.samsung.intent.action.SEC_PRESENTATION_START"

    iput-object v0, p0, Lcom/android/server/display/WFDUibcManager;->PRESENTATION_START_ACTION:Ljava/lang/String;

    const-string v0, "com.samsung.intent.action.SEC_PRESENTATION_STOP"

    iput-object v0, p0, Lcom/android/server/display/WFDUibcManager;->PRESENTATION_STOP_ACTION:Ljava/lang/String;

    const-string v0, "com.samsung.intent.action.SEC_UIBC_GET_FOCUS"

    iput-object v0, p0, Lcom/android/server/display/WFDUibcManager;->SEC_UIBC_GET_FOCUS:Ljava/lang/String;

    const-string v0, "com.kddi.android.sptab_source.SUCCESS_CONNECT_SOURCE"

    iput-object v0, p0, Lcom/android/server/display/WFDUibcManager;->KDDI_SOURCE_CONNECT_SUCCESS_ACTION:Ljava/lang/String;

    const-string v0, "com.kddi.android.sptab_source.SUCCESS_DISCONNECT_SOURCE"

    iput-object v0, p0, Lcom/android/server/display/WFDUibcManager;->KDDI_SOURCE_DISCONNECT_SUCCESS_ACTION:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/WFDUibcManager;->mEventDispatcher:Lcom/android/server/display/WFDUibcManager$EventDispatcher;

    iput-object v0, p0, Lcom/android/server/display/WFDUibcManager;->mEventDispatcherThread:Ljava/lang/Thread;

    sget-object v0, Lcom/android/server/display/WFDUibcManager$UIBCMode;->DEFAULT:Lcom/android/server/display/WFDUibcManager$UIBCMode;

    iput-object v0, p0, Lcom/android/server/display/WFDUibcManager;->mUIBCMode:Lcom/android/server/display/WFDUibcManager$UIBCMode;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/WFDUibcManager;->mPrimaryDisplayWidth:F

    iput v0, p0, Lcom/android/server/display/WFDUibcManager;->mPrimaryDisplayHeight:F

    iput v0, p0, Lcom/android/server/display/WFDUibcManager;->mPrimaryDisplayRatio:F

    iput v0, p0, Lcom/android/server/display/WFDUibcManager;->mExternalDisplayWidth:F

    iput v0, p0, Lcom/android/server/display/WFDUibcManager;->mExternalDisplayHeight:F

    iput v0, p0, Lcom/android/server/display/WFDUibcManager;->mExternalDisplayRatio:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/WFDUibcManager;->mExternalDisplayID:I

    iput v0, p0, Lcom/android/server/display/WFDUibcManager;->mPresentDisplayID:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/WFDUibcManager;->mSinkUIBCVersion:I

    iput-boolean v0, p0, Lcom/android/server/display/WFDUibcManager;->mIsPresentationMode:Z

    iput-boolean v0, p0, Lcom/android/server/display/WFDUibcManager;->mIsPortraitMode:Z

    iput-boolean v0, p0, Lcom/android/server/display/WFDUibcManager;->mIsKDDIServiceConnected:Z

    new-instance v0, Lcom/android/server/display/WFDUibcManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/WFDUibcManager$1;-><init>(Lcom/android/server/display/WFDUibcManager;)V

    iput-object v0, p0, Lcom/android/server/display/WFDUibcManager;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/display/WFDUibcManager;->mContext:Landroid/content/Context;

    const-string v0, "WFDUibcManager"

    const-string v1, "WFDUibcManager"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/WFDUibcManager;)I
    .registers 2

    iget v0, p0, Lcom/android/server/display/WFDUibcManager;->mPresentDisplayID:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/display/WFDUibcManager;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/display/WFDUibcManager;->mPresentDisplayID:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/display/WFDUibcManager;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/display/WFDUibcManager;->mIsPresentationMode:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/display/WFDUibcManager;)F
    .registers 2

    iget v0, p0, Lcom/android/server/display/WFDUibcManager;->mExternalDisplayRatio:F

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/display/WFDUibcManager;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/display/WFDUibcManager;->mIsPresentationMode:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/display/WFDUibcManager;)F
    .registers 2

    iget v0, p0, Lcom/android/server/display/WFDUibcManager;->mPrimaryDisplayWidth:F

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/display/WFDUibcManager;)F
    .registers 2

    iget v0, p0, Lcom/android/server/display/WFDUibcManager;->mExternalDisplayHeight:F

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/display/WFDUibcManager;)F
    .registers 2

    iget v0, p0, Lcom/android/server/display/WFDUibcManager;->mPrimaryDisplayHeight:F

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/display/WFDUibcManager;)F
    .registers 2

    iget v0, p0, Lcom/android/server/display/WFDUibcManager;->mExternalDisplayWidth:F

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/display/WFDUibcManager;)I
    .registers 2

    iget v0, p0, Lcom/android/server/display/WFDUibcManager;->mSinkUIBCVersion:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/display/WFDUibcManager;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/display/WFDUibcManager;->mIsKDDIServiceConnected:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/display/WFDUibcManager;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/display/WFDUibcManager;->mIsKDDIServiceConnected:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/display/WFDUibcManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/WFDUibcManager;->updateDisplayInfos()V

    return-void
.end method

.method static synthetic access$500()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/display/WFDUibcManager;->DEBUG:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/display/WFDUibcManager;)I
    .registers 2

    iget v0, p0, Lcom/android/server/display/WFDUibcManager;->mExternalDisplayID:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/display/WFDUibcManager;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/WFDUibcManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/display/WFDUibcManager;)Lcom/android/server/display/WFDUibcManager$UIBCMode;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/WFDUibcManager;->mUIBCMode:Lcom/android/server/display/WFDUibcManager$UIBCMode;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/display/WFDUibcManager;)F
    .registers 2

    iget v0, p0, Lcom/android/server/display/WFDUibcManager;->mPrimaryDisplayRatio:F

    return v0
.end method

.method private updateDisplayInfos()V
    .registers 10

    const-string v0, "WFDUibcManager"

    const-string v1, "Update Display Informations"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    if-nez v0, :cond_16

    const-string v1, "WFDUibcManager"

    const-string/jumbo v2, "displayManagerGlobal is not found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_16
    iget v1, p0, Lcom/android/server/display/WFDUibcManager;->mExternalDisplayID:I

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-gez v1, :cond_5f

    const-string v1, "WFDUibcManager"

    const-string v4, "External Display is not setted"

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayIds()[I

    move-result-object v1

    array-length v4, v1

    move v5, v3

    :goto_29
    if-ge v5, v4, :cond_53

    aget v6, v1, v5

    invoke-virtual {v0, v6}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v7

    iget v7, v7, Landroid/view/DisplayInfo;->type:I

    if-ne v7, v2, :cond_50

    iput v6, p0, Lcom/android/server/display/WFDUibcManager;->mExternalDisplayID:I

    const-string v1, "WFDUibcManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Find External Display ID : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/display/WFDUibcManager;->mExternalDisplayID:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_53

    :cond_50
    add-int/lit8 v5, v5, 0x1

    goto :goto_29

    :cond_53
    :goto_53
    iget v1, p0, Lcom/android/server/display/WFDUibcManager;->mExternalDisplayID:I

    if-gez v1, :cond_5f

    const-string v1, "WFDUibcManager"

    const-string v2, "Could not found External Display"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5f
    iget-object v1, p0, Lcom/android/server/display/WFDUibcManager;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "window"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    sget-object v5, Lcom/android/server/display/WFDUibcManager$UIBCMode;->DEFAULT:Lcom/android/server/display/WFDUibcManager$UIBCMode;

    iput-object v5, p0, Lcom/android/server/display/WFDUibcManager;->mUIBCMode:Lcom/android/server/display/WFDUibcManager$UIBCMode;

    iget-object v5, p0, Lcom/android/server/display/WFDUibcManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "sidesync_source_connect"

    const/4 v7, -0x2

    invoke-static {v5, v6, v3, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-eqz v5, :cond_8f

    sget-object v2, Lcom/android/server/display/WFDUibcManager$UIBCMode;->SIDESYNC:Lcom/android/server/display/WFDUibcManager$UIBCMode;

    iput-object v2, p0, Lcom/android/server/display/WFDUibcManager;->mUIBCMode:Lcom/android/server/display/WFDUibcManager$UIBCMode;

    goto :goto_bd

    :cond_8f
    iget-boolean v5, p0, Lcom/android/server/display/WFDUibcManager;->mIsKDDIServiceConnected:Z

    if-eqz v5, :cond_98

    sget-object v2, Lcom/android/server/display/WFDUibcManager$UIBCMode;->KDDISERVICE:Lcom/android/server/display/WFDUibcManager$UIBCMode;

    iput-object v2, p0, Lcom/android/server/display/WFDUibcManager;->mUIBCMode:Lcom/android/server/display/WFDUibcManager$UIBCMode;

    goto :goto_bd

    :cond_98
    iget v5, p0, Lcom/android/server/display/WFDUibcManager;->mExternalDisplayID:I

    invoke-virtual {v0, v5}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v5

    if-eqz v5, :cond_bd

    iget v5, p0, Lcom/android/server/display/WFDUibcManager;->mExternalDisplayID:I

    invoke-virtual {v0, v5}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v5

    iget v5, v5, Landroid/view/DisplayInfo;->rotation:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_b9

    iget v5, p0, Lcom/android/server/display/WFDUibcManager;->mExternalDisplayID:I

    invoke-virtual {v0, v5}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v5

    iget v5, v5, Landroid/view/DisplayInfo;->rotation:I

    if-eq v5, v2, :cond_b9

    iget-boolean v2, p0, Lcom/android/server/display/WFDUibcManager;->mIsPortraitMode:Z

    if-eqz v2, :cond_bd

    :cond_b9
    sget-object v2, Lcom/android/server/display/WFDUibcManager$UIBCMode;->PORTRAIT_DISPLAY:Lcom/android/server/display/WFDUibcManager$UIBCMode;

    iput-object v2, p0, Lcom/android/server/display/WFDUibcManager;->mUIBCMode:Lcom/android/server/display/WFDUibcManager$UIBCMode;

    :cond_bd
    :goto_bd
    iget v2, p0, Lcom/android/server/display/WFDUibcManager;->mPresentDisplayID:I

    const/4 v5, -0x1

    if-le v2, v5, :cond_123

    iget-object v2, p0, Lcom/android/server/display/WFDUibcManager;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "display"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    const-string v5, "android.hardware.display.category.PRESENTATION"

    invoke-virtual {v2, v5}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v5

    sget-boolean v6, Lcom/android/server/display/WFDUibcManager;->DEBUG:Z

    if-eqz v6, :cond_ee

    const-string v6, "WFDUibcManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PresentationDisplays amount : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ee
    nop

    :goto_ef
    array-length v6, v5

    if-ge v3, v6, :cond_123

    aget-object v6, v5, v3

    invoke-virtual {v6}, Landroid/view/Display;->getDisplayId()I

    move-result v7

    iget v8, p0, Lcom/android/server/display/WFDUibcManager;->mExternalDisplayID:I

    if-ne v7, v8, :cond_120

    iget v7, p0, Lcom/android/server/display/WFDUibcManager;->mPresentDisplayID:I

    invoke-virtual {v2, v7}, Landroid/hardware/display/DisplayManager;->semGetPresentationOwner(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_123

    iget v7, p0, Lcom/android/server/display/WFDUibcManager;->mPresentDisplayID:I

    invoke-virtual {v2, v7}, Landroid/hardware/display/DisplayManager;->semGetPresentationOwner(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_123

    iget v7, p0, Lcom/android/server/display/WFDUibcManager;->mPresentDisplayID:I

    iget v8, p0, Lcom/android/server/display/WFDUibcManager;->mExternalDisplayID:I

    if-ne v7, v8, :cond_123

    invoke-virtual {v6, v4}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    sget-object v7, Lcom/android/server/display/WFDUibcManager$UIBCMode;->PRESENTATION:Lcom/android/server/display/WFDUibcManager$UIBCMode;

    iput-object v7, p0, Lcom/android/server/display/WFDUibcManager;->mUIBCMode:Lcom/android/server/display/WFDUibcManager$UIBCMode;

    goto :goto_123

    :cond_120
    add-int/lit8 v3, v3, 0x1

    goto :goto_ef

    :cond_123
    :goto_123
    iget v2, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/android/server/display/WFDUibcManager;->mPrimaryDisplayWidth:F

    iget v2, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    mul-float/2addr v3, v2

    iput v3, p0, Lcom/android/server/display/WFDUibcManager;->mPrimaryDisplayHeight:F

    iget v2, p0, Lcom/android/server/display/WFDUibcManager;->mPrimaryDisplayWidth:F

    iget v3, p0, Lcom/android/server/display/WFDUibcManager;->mPrimaryDisplayHeight:F

    div-float/2addr v2, v3

    iput v2, p0, Lcom/android/server/display/WFDUibcManager;->mPrimaryDisplayRatio:F

    iget-object v2, p0, Lcom/android/server/display/WFDUibcManager;->mUIBCMode:Lcom/android/server/display/WFDUibcManager$UIBCMode;

    sget-object v3, Lcom/android/server/display/WFDUibcManager$UIBCMode;->PORTRAIT_DISPLAY:Lcom/android/server/display/WFDUibcManager$UIBCMode;

    if-ne v2, v3, :cond_146

    iget v2, p0, Lcom/android/server/display/WFDUibcManager;->mExternalDisplayHeight:F

    iget v3, p0, Lcom/android/server/display/WFDUibcManager;->mExternalDisplayWidth:F

    div-float/2addr v2, v3

    iput v2, p0, Lcom/android/server/display/WFDUibcManager;->mExternalDisplayRatio:F

    goto :goto_14d

    :cond_146
    iget v2, p0, Lcom/android/server/display/WFDUibcManager;->mExternalDisplayWidth:F

    iget v3, p0, Lcom/android/server/display/WFDUibcManager;->mExternalDisplayHeight:F

    div-float/2addr v2, v3

    iput v2, p0, Lcom/android/server/display/WFDUibcManager;->mExternalDisplayRatio:F

    :goto_14d
    sget-boolean v2, Lcom/android/server/display/WFDUibcManager;->DEBUG:Z

    if-eqz v2, :cond_1c1

    const-string v2, "WFDUibcManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UIBCMode : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/display/WFDUibcManager;->mUIBCMode:Lcom/android/server/display/WFDUibcManager$UIBCMode;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "WFDUibcManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PrimaryDisplay Width : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/display/WFDUibcManager;->mPrimaryDisplayWidth:F

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", Height : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/display/WFDUibcManager;->mPrimaryDisplayHeight:F

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", Ratio : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/display/WFDUibcManager;->mPrimaryDisplayRatio:F

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "WFDUibcManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ExternalDisplay Width : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/display/WFDUibcManager;->mExternalDisplayWidth:F

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", Height : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/display/WFDUibcManager;->mExternalDisplayHeight:F

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", Ratio : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/display/WFDUibcManager;->mExternalDisplayRatio:F

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c1
    return-void
.end method


# virtual methods
.method public setPortraitMode(Z)V
    .registers 5

    const-string v0, "WFDUibcManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPortraitMode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/server/display/WFDUibcManager;->mIsPortraitMode:Z

    return-void
.end method

.method public setSinkUIBCVersion(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/display/WFDUibcManager;->mSinkUIBCVersion:I

    return-void
.end method

.method public setUIBCNegotiagedResolution(FF)V
    .registers 6

    const-string v0, "WFDUibcManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDisplayConnected, ExternalDisplayWidth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " ExternalDisplayHeight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/server/display/WFDUibcManager;->mExternalDisplayWidth:F

    iput p2, p0, Lcom/android/server/display/WFDUibcManager;->mExternalDisplayHeight:F

    invoke-direct {p0}, Lcom/android/server/display/WFDUibcManager;->updateDisplayInfos()V

    return-void
.end method

.method public start()Z
    .registers 4

    new-instance v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;

    invoke-direct {v0, p0}, Lcom/android/server/display/WFDUibcManager$EventDispatcher;-><init>(Lcom/android/server/display/WFDUibcManager;)V

    iput-object v0, p0, Lcom/android/server/display/WFDUibcManager;->mEventDispatcher:Lcom/android/server/display/WFDUibcManager$EventDispatcher;

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/server/display/WFDUibcManager;->mEventDispatcher:Lcom/android/server/display/WFDUibcManager$EventDispatcher;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/display/WFDUibcManager;->mEventDispatcherThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/server/display/WFDUibcManager;->mEventDispatcher:Lcom/android/server/display/WFDUibcManager$EventDispatcher;

    invoke-static {v0}, Landroid/media/RemoteDisplay;->nativeStartUIBC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/display/WFDUibcManager;->mEventDispatcherThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.intent.action.SEC_PRESENTATION_START"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.intent.action.SEC_PRESENTATION_STOP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.video.START_PRESENTATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.video.END_PRESENTATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.gallery.action.slideshow.start"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.gallery.action.slideshow.finish"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.kddi.android.sptab_source.SUCCESS_CONNECT_SOURCE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.kddi.android.sptab_source.SUCCESS_DISCONNECT_SOURCE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.intent.action.ROTATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/display/WFDUibcManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/display/WFDUibcManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v1, "WFDUibcManager"

    const-string v2, "Uibc Manager started"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    return v1
.end method

.method public stop()Z
    .registers 6

    iget-boolean v0, p0, Lcom/android/server/display/WFDUibcManager;->mIsKDDIServiceConnected:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/server/display/WFDUibcManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "accelerometer_rotation"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/android/server/display/WFDUibcManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "user_rotation"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1f
    iget-object v0, p0, Lcom/android/server/display/WFDUibcManager;->mEventDispatcher:Lcom/android/server/display/WFDUibcManager$EventDispatcher;

    const/4 v2, 0x1

    if-nez v0, :cond_25

    return v2

    :cond_25
    iget-object v0, p0, Lcom/android/server/display/WFDUibcManager;->mEventDispatcher:Lcom/android/server/display/WFDUibcManager$EventDispatcher;

    iput-boolean v1, v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->isRunning:Z

    iget-object v0, p0, Lcom/android/server/display/WFDUibcManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/display/WFDUibcManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-static {}, Landroid/media/RemoteDisplay;->nativeStopUIBC()V

    const-string v0, "WFDUibcManager"

    const-string v3, "Going to stop Uibc manager"

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_3a
    iget-object v0, p0, Lcom/android/server/display/WFDUibcManager;->mEventDispatcherThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_3f
    .catch Ljava/lang/InterruptedException; {:try_start_3a .. :try_end_3f} :catch_40

    goto :goto_48

    :catch_40
    move-exception v0

    const-string v3, "WFDUibcManager"

    const-string v4, "Error joining event dispatcher thread"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_48
    const-string v0, "WFDUibcManager"

    const-string v3, "Uibc manager stopped"

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/WFDUibcManager;->mEventDispatcher:Lcom/android/server/display/WFDUibcManager$EventDispatcher;

    iput-object v0, p0, Lcom/android/server/display/WFDUibcManager;->mEventDispatcherThread:Ljava/lang/Thread;

    iput-boolean v1, p0, Lcom/android/server/display/WFDUibcManager;->mIsPortraitMode:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/WFDUibcManager;->mExternalDisplayID:I

    iput v0, p0, Lcom/android/server/display/WFDUibcManager;->mPresentDisplayID:I

    iput v1, p0, Lcom/android/server/display/WFDUibcManager;->mSinkUIBCVersion:I

    iput-boolean v1, p0, Lcom/android/server/display/WFDUibcManager;->mIsPresentationMode:Z

    iput-boolean v1, p0, Lcom/android/server/display/WFDUibcManager;->mIsKDDIServiceConnected:Z

    return v2
.end method
