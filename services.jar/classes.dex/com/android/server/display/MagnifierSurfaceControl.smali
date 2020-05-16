.class final Lcom/android/server/display/MagnifierSurfaceControl;
.super Ljava/lang/Object;
.source "MagnifierSurfaceControl.java"

# interfaces
.implements Lcom/android/internal/util/DumpUtils$Dump;
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/MagnifierSurfaceControl$Border;,
        Lcom/android/server/display/MagnifierSurfaceControl$Control;,
        Lcom/android/server/display/MagnifierSurfaceControl$Listener;
    }
.end annotation


# static fields
.field private static final CREATED:I = 0x1

.field private static final DEBUG:Z = true

.field private static final FEATURE_OVERLAYMAGNIFIER:Ljava/lang/String; = "com.sec.feature.overlaymagnifier"

.field private static final HIDDEN:I = 0x3

.field private static final IDLE:I = 0x0

.field private static final SHOWN:I = 0x2

.field private static final STABILIZER:I = 0x4

.field private static final TAG:Ljava/lang/String; = "MagnifierSurfaceControl"

.field private static mBorder:Lcom/android/server/display/MagnifierSurfaceControl$Border;

.field private static mControl:Lcom/android/server/display/MagnifierSurfaceControl$Control;

.field private static mCurrentDisplayId:I

.field private static mCurrentFollowingStatus:Z

.field private static mEnableMagnifierWindowController:Z

.field private static mThemePackage:Ljava/lang/String;

.field private static mTwPrimaryTextColorLight:I

.field private static mTwScreenBackgroundColorLight:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mEnableMagnifierState:I

.field private mFxSession:Landroid/view/SurfaceSession;

.field private mHandler:Landroid/os/Handler;

.field private mLastOffsetSpec:Landroid/view/MagnificationSpec;

.field private mListener:Lcom/android/server/display/MagnifierSurfaceControl$Listener;

.field private final mLock:Ljava/lang/Object;

.field private mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

.field private mSizeChangeListener:Lcom/android/server/display/MagnifierDisplayPolicy$OnSizeChangeListener;

.field private mState:I

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceControl:Landroid/view/SurfaceControl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    sput v0, Lcom/android/server/display/MagnifierSurfaceControl;->mCurrentDisplayId:I

    sput v0, Lcom/android/server/display/MagnifierSurfaceControl;->mTwPrimaryTextColorLight:I

    sput v0, Lcom/android/server/display/MagnifierSurfaceControl;->mTwScreenBackgroundColorLight:I

    const-string/jumbo v1, "dummy"

    sput-object v1, Lcom/android/server/display/MagnifierSurfaceControl;->mThemePackage:Ljava/lang/String;

    sput-boolean v0, Lcom/android/server/display/MagnifierSurfaceControl;->mCurrentFollowingStatus:Z

    sput-boolean v0, Lcom/android/server/display/MagnifierSurfaceControl;->mEnableMagnifierWindowController:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/display/MagnifierSurfaceControl$Listener;Landroid/os/Handler;Lcom/android/server/display/MagnifierDisplayPolicy;I)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mState:I

    iput v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mEnableMagnifierState:I

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    iput-object p2, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mListener:Lcom/android/server/display/MagnifierSurfaceControl$Listener;

    iput-object p3, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mHandler:Landroid/os/Handler;

    sput p5, Lcom/android/server/display/MagnifierSurfaceControl;->mCurrentDisplayId:I

    invoke-static {}, Landroid/view/MagnificationSpec;->obtain()Landroid/view/MagnificationSpec;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mLastOffsetSpec:Landroid/view/MagnificationSpec;

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mLastOffsetSpec:Landroid/view/MagnificationSpec;

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, v1, Landroid/view/MagnificationSpec;->offsetX:F

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mLastOffsetSpec:Landroid/view/MagnificationSpec;

    iput v2, v1, Landroid/view/MagnificationSpec;->offsetY:F

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "display"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    iput-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.feature.overlaymagnifier"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4f

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "finger_magnifier"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mEnableMagnifierState:I

    :cond_4f
    new-instance v0, Lcom/android/server/display/MagnifierSurfaceControl$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/MagnifierSurfaceControl$1;-><init>(Lcom/android/server/display/MagnifierSurfaceControl;)V

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSizeChangeListener:Lcom/android/server/display/MagnifierDisplayPolicy$OnSizeChangeListener;

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSizeChangeListener:Lcom/android/server/display/MagnifierDisplayPolicy$OnSizeChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/server/display/MagnifierDisplayPolicy;->addOnSizeChanageListener(Lcom/android/server/display/MagnifierDisplayPolicy$OnSizeChangeListener;)V

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/display/MagnifierDisplayPolicy;->checkUpdateDisplayInfo()Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/MagnifierSurfaceControl;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/display/MagnifierSurfaceControl;)Lcom/android/server/display/MagnifierDisplayPolicy;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    return-object v0
.end method

.method static synthetic access$1000()Lcom/android/server/display/MagnifierSurfaceControl$Border;
    .registers 1

    sget-object v0, Lcom/android/server/display/MagnifierSurfaceControl;->mBorder:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/server/display/MagnifierSurfaceControl$Border;)Lcom/android/server/display/MagnifierSurfaceControl$Border;
    .registers 1

    sput-object p0, Lcom/android/server/display/MagnifierSurfaceControl;->mBorder:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/server/display/MagnifierSurfaceControl;)I
    .registers 2

    iget v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mEnableMagnifierState:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/display/MagnifierSurfaceControl;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/display/MagnifierSurfaceControl;)I
    .registers 2

    iget v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mState:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/server/display/MagnifierSurfaceControl;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mState:I

    return p1
.end method

.method static synthetic access$1400()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/display/MagnifierSurfaceControl;->mThemePackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1402(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    sput-object p0, Lcom/android/server/display/MagnifierSurfaceControl;->mThemePackage:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1500()I
    .registers 1

    sget v0, Lcom/android/server/display/MagnifierSurfaceControl;->mTwPrimaryTextColorLight:I

    return v0
.end method

.method static synthetic access$1502(I)I
    .registers 1

    sput p0, Lcom/android/server/display/MagnifierSurfaceControl;->mTwPrimaryTextColorLight:I

    return p0
.end method

.method static synthetic access$1600()I
    .registers 1

    sget v0, Lcom/android/server/display/MagnifierSurfaceControl;->mTwScreenBackgroundColorLight:I

    return v0
.end method

.method static synthetic access$1602(I)I
    .registers 1

    sput p0, Lcom/android/server/display/MagnifierSurfaceControl;->mTwScreenBackgroundColorLight:I

    return p0
.end method

.method static synthetic access$200()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/display/MagnifierSurfaceControl;->mCurrentFollowingStatus:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/display/MagnifierSurfaceControl;)Landroid/view/SurfaceControl;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/display/MagnifierSurfaceControl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/MagnifierSurfaceControl;->hide()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/display/MagnifierSurfaceControl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/MagnifierSurfaceControl;->destroyMainSurface()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/display/MagnifierSurfaceControl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/MagnifierSurfaceControl;->createDefaultSurface()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/display/MagnifierSurfaceControl;)Lcom/android/server/display/MagnifierSurfaceControl$Listener;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mListener:Lcom/android/server/display/MagnifierSurfaceControl$Listener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/display/MagnifierSurfaceControl;)Landroid/view/Surface;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method static synthetic access$900()Lcom/android/server/display/MagnifierSurfaceControl$Control;
    .registers 1

    sget-object v0, Lcom/android/server/display/MagnifierSurfaceControl;->mControl:Lcom/android/server/display/MagnifierSurfaceControl$Control;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/server/display/MagnifierSurfaceControl$Control;)Lcom/android/server/display/MagnifierSurfaceControl$Control;
    .registers 1

    sput-object p0, Lcom/android/server/display/MagnifierSurfaceControl;->mControl:Lcom/android/server/display/MagnifierSurfaceControl$Control;

    return-object p0
.end method

.method private createDefaultSurface()V
    .registers 7

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1}, Landroid/view/Surface;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurface:Landroid/view/Surface;

    new-instance v1, Landroid/view/SurfaceSession;

    invoke-direct {v1}, Landroid/view/SurfaceSession;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mFxSession:Landroid/view/SurfaceSession;

    new-instance v1, Landroid/view/SurfaceControl$Builder;

    iget-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mFxSession:Landroid/view/SurfaceSession;

    invoke-direct {v1, v2}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    const-string v2, "OverlayMagnifier"

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v2}, Landroid/view/SurfaceControl$Builder;->setSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    const v2, -0x7ffffbfc

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setFlags(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-virtual {v1}, Lcom/android/server/display/MagnifierDisplayPolicy;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-virtual {v2}, Lcom/android/server/display/MagnifierDisplayPolicy;->getDefaultDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v4, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v5, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v3, v4, v5}, Landroid/view/SurfaceControl;->setSize(II)V

    iget-object v3, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/Display;->getLayerStack()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    iget-object v3, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl;->setAlpha(F)V

    iget-object v3, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurface:Landroid/view/Surface;

    iget-object v4, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v4}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    iget-object v3, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3}, Landroid/view/Surface;->allocateBuffers()V

    iget-object v3, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    const v4, 0x1e847e

    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl;->setLayer(I)V
    :try_end_6d
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_3 .. :try_end_6d} :catch_70
    .catchall {:try_start_3 .. :try_end_6d} :catchall_6e

    goto :goto_74

    :catchall_6e
    move-exception v1

    goto :goto_76

    :catch_70
    move-exception v1

    :try_start_71
    invoke-virtual {v1}, Landroid/view/Surface$OutOfResourcesException;->printStackTrace()V

    :goto_74
    monitor-exit v0

    return-void

    :goto_76
    monitor-exit v0
    :try_end_77
    .catchall {:try_start_71 .. :try_end_77} :catchall_6e

    throw v1
.end method

.method private destroyMainSurface()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "MagnifierSurfaceControl"

    const-string/jumbo v2, "destroyMainSurface"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->destroy()V

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->destroy()V

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mFxSession:Landroid/view/SurfaceSession;

    invoke-virtual {v1}, Landroid/view/SurfaceSession;->kill()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurface:Landroid/view/Surface;

    iput-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    iput-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mFxSession:Landroid/view/SurfaceSession;

    monitor-exit v0

    return-void

    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v1
.end method

.method private hide()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "MagnifierSurfaceControl"

    const-string/jumbo v2, "hide"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v1, :cond_18

    const-string v1, "MagnifierSurfaceControl"

    const-string v2, "SurfaceControl is null, return"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_18
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mLastOffsetSpec:Landroid/view/MagnificationSpec;

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, v1, Landroid/view/MagnificationSpec;->offsetX:F

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mLastOffsetSpec:Landroid/view/MagnificationSpec;

    iput v2, v1, Landroid/view/MagnificationSpec;->offsetY:F

    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->hide()V

    sget-object v1, Lcom/android/server/display/MagnifierSurfaceControl;->mBorder:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    if-eqz v1, :cond_39

    sget-object v1, Lcom/android/server/display/MagnifierSurfaceControl;->mBorder:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    invoke-virtual {v1}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->hide()V

    :cond_39
    sget-object v1, Lcom/android/server/display/MagnifierSurfaceControl;->mControl:Lcom/android/server/display/MagnifierSurfaceControl$Control;

    if-eqz v1, :cond_4a

    sget-object v1, Lcom/android/server/display/MagnifierSurfaceControl;->mControl:Lcom/android/server/display/MagnifierSurfaceControl$Control;

    invoke-virtual {v1}, Lcom/android/server/display/MagnifierSurfaceControl$Control;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_4a

    sget-object v1, Lcom/android/server/display/MagnifierSurfaceControl;->mControl:Lcom/android/server/display/MagnifierSurfaceControl$Control;

    invoke-virtual {v1}, Lcom/android/server/display/MagnifierSurfaceControl$Control;->hide()V

    :cond_4a
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    const/4 v1, 0x3

    iput v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mState:I

    monitor-exit v0

    return-void

    :catchall_52
    move-exception v1

    monitor-exit v0
    :try_end_54
    .catchall {:try_start_3 .. :try_end_54} :catchall_52

    throw v1
.end method

.method private show(Landroid/view/MagnificationSpec;)V
    .registers 10

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mState:I

    if-nez v1, :cond_20

    const-string v1, "MagnifierSurfaceControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "show: mState is wrong. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_20
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v1, :cond_2e

    const-string v1, "MagnifierSurfaceControl"

    const-string/jumbo v2, "show: SurfaceControl is null, return"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_2e
    const-string v1, "MagnifierSurfaceControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "show: mState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", spec "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mLastOffsetSpec:Landroid/view/MagnificationSpec;

    iget v2, p1, Landroid/view/MagnificationSpec;->offsetX:F

    iput v2, v1, Landroid/view/MagnificationSpec;->offsetX:F

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mLastOffsetSpec:Landroid/view/MagnificationSpec;

    iget v2, p1, Landroid/view/MagnificationSpec;->offsetY:F

    iput v2, v1, Landroid/view/MagnificationSpec;->offsetY:F

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/display/MagnifierDisplayPolicy;->getDisplayInfo(Landroid/view/MagnificationSpec;)Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->getSurfaceOffset()Landroid/graphics/Point;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->getSurfaceCropRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V
    :try_end_6c
    .catchall {:try_start_3 .. :try_end_6c} :catchall_b2

    :try_start_6c
    iget-object v4, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v5, v2, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iget v6, v2, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/view/SurfaceControl;->setPosition(FF)V

    iget-object v4, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v4, v3}, Landroid/view/SurfaceControl;->setWindowCrop(Landroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v5, p1, Landroid/view/MagnificationSpec;->scale:F

    iget v6, p1, Landroid/view/MagnificationSpec;->scale:F

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7, v7, v6}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    sget-object v4, Lcom/android/server/display/MagnifierSurfaceControl;->mBorder:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    invoke-virtual {v1}, Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->getAbsOffset()Landroid/graphics/Point;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->setPosition(Landroid/graphics/Point;)V

    iget v4, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mState:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_a7

    iput v5, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mState:I

    iget-object v4, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/view/SurfaceControl;->setAlpha(F)V

    iget-object v4, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v4}, Landroid/view/SurfaceControl;->show()V

    sget-object v4, Lcom/android/server/display/MagnifierSurfaceControl;->mBorder:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    invoke-virtual {v4}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->show()V
    :try_end_a7
    .catchall {:try_start_6c .. :try_end_a7} :catchall_ad

    :cond_a7
    :try_start_a7
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    nop

    monitor-exit v0

    return-void

    :catchall_ad
    move-exception v4

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v4

    :catchall_b2
    move-exception v1

    monitor-exit v0
    :try_end_b4
    .catchall {:try_start_a7 .. :try_end_b4} :catchall_b2

    throw v1
.end method


# virtual methods
.method public create()V
    .registers 7

    const-string v0, "MagnifierSurfaceControl"

    const-string v1, "create"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/display/MagnifierSurfaceControl;->createDefaultSurface()V

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/display/MagnifierDisplayPolicy;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-virtual {v1}, Lcom/android/server/display/MagnifierDisplayPolicy;->getDefaultDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mEnableMagnifierState:I

    if-lez v2, :cond_30

    new-instance v2, Lcom/android/server/display/MagnifierSurfaceControl$Control;

    iget-object v3, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/view/Display;->getLayerStack()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-direct {v2, v3, v4, v5}, Lcom/android/server/display/MagnifierSurfaceControl$Control;-><init>(Landroid/content/Context;ILcom/android/server/display/MagnifierDisplayPolicy;)V

    sput-object v2, Lcom/android/server/display/MagnifierSurfaceControl;->mControl:Lcom/android/server/display/MagnifierSurfaceControl$Control;

    :cond_30
    new-instance v2, Lcom/android/server/display/MagnifierSurfaceControl$Border;

    iget-object v3, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/view/Display;->getLayerStack()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-direct {v2, v3, v4, v5}, Lcom/android/server/display/MagnifierSurfaceControl$Border;-><init>(Landroid/content/Context;ILcom/android/server/display/MagnifierDisplayPolicy;)V

    sput-object v2, Lcom/android/server/display/MagnifierSurfaceControl;->mBorder:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    sget-object v2, Lcom/android/server/display/MagnifierSurfaceControl;->mBorder:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    if-eqz v2, :cond_4e

    iget-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    sget-object v3, Lcom/android/server/display/MagnifierSurfaceControl;->mBorder:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    invoke-virtual {v3}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->getPadding()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/display/MagnifierDisplayPolicy;->setPadding(Landroid/graphics/Rect;)V

    :cond_4e
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mState:I

    iget-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mListener:Lcom/android/server/display/MagnifierSurfaceControl$Listener;

    if-eqz v2, :cond_60

    iget-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mListener:Lcom/android/server/display/MagnifierSurfaceControl$Listener;

    iget-object v3, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurface:Landroid/view/Surface;

    iget v4, v1, Landroid/view/DisplayInfo;->defaultModeId:I

    sget v5, Lcom/android/server/display/MagnifierSurfaceControl;->mCurrentDisplayId:I

    invoke-interface {v2, v3, v4, v5}, Lcom/android/server/display/MagnifierSurfaceControl$Listener;->onCreateSurface(Landroid/view/Surface;II)V

    :cond_60
    return-void
.end method

.method public dismiss()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    invoke-direct {p0}, Lcom/android/server/display/MagnifierSurfaceControl;->destroyMainSurface()V

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mState:I

    sget-object v1, Lcom/android/server/display/MagnifierSurfaceControl;->mBorder:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    const/4 v2, 0x0

    if-eqz v1, :cond_1a

    sget-object v1, Lcom/android/server/display/MagnifierSurfaceControl;->mBorder:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    invoke-virtual {v1}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->dismiss()V

    sput-object v2, Lcom/android/server/display/MagnifierSurfaceControl;->mBorder:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    :cond_1a
    sget-object v1, Lcom/android/server/display/MagnifierSurfaceControl;->mControl:Lcom/android/server/display/MagnifierSurfaceControl$Control;

    if-eqz v1, :cond_25

    sget-object v1, Lcom/android/server/display/MagnifierSurfaceControl;->mControl:Lcom/android/server/display/MagnifierSurfaceControl$Control;

    invoke-virtual {v1}, Lcom/android/server/display/MagnifierSurfaceControl$Control;->dismiss()V

    sput-object v2, Lcom/android/server/display/MagnifierSurfaceControl;->mControl:Lcom/android/server/display/MagnifierSurfaceControl$Control;

    :cond_25
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    iget-object v3, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSizeChangeListener:Lcom/android/server/display/MagnifierDisplayPolicy$OnSizeChangeListener;

    invoke-virtual {v1, v3}, Lcom/android/server/display/MagnifierDisplayPolicy;->removeOnSizeChanageListener(Lcom/android/server/display/MagnifierDisplayPolicy$OnSizeChangeListener;)V

    iput-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSizeChangeListener:Lcom/android/server/display/MagnifierDisplayPolicy$OnSizeChangeListener;

    iput-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mLastOffsetSpec:Landroid/view/MagnificationSpec;

    monitor-exit v0

    return-void

    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw v1
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/MagnifierDisplayPolicy;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public enableMagnifierWindowController(Z)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/server/display/MagnifierSurfaceControl;->mControl:Lcom/android/server/display/MagnifierSurfaceControl$Control;

    if-eqz v1, :cond_39

    sput-boolean p1, Lcom/android/server/display/MagnifierSurfaceControl;->mEnableMagnifierWindowController:Z

    sget-object v1, Lcom/android/server/display/MagnifierSurfaceControl;->mControl:Lcom/android/server/display/MagnifierSurfaceControl$Control;

    invoke-virtual {v1}, Lcom/android/server/display/MagnifierSurfaceControl$Control;->isShowing()Z

    move-result v1

    if-nez v1, :cond_2a

    if-eqz p1, :cond_2a

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    iget-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mLastOffsetSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {v1, v2}, Lcom/android/server/display/MagnifierDisplayPolicy;->getDisplayInfo(Landroid/view/MagnificationSpec;)Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;

    move-result-object v1

    sget-object v2, Lcom/android/server/display/MagnifierSurfaceControl;->mControl:Lcom/android/server/display/MagnifierSurfaceControl$Control;

    invoke-virtual {v1}, Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->getAbsOffset()Landroid/graphics/Point;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/display/MagnifierSurfaceControl$Control;->setPosition(Landroid/graphics/Point;)V

    sget-object v2, Lcom/android/server/display/MagnifierSurfaceControl;->mControl:Lcom/android/server/display/MagnifierSurfaceControl$Control;

    invoke-virtual {v2}, Lcom/android/server/display/MagnifierSurfaceControl$Control;->show()V

    goto :goto_39

    :cond_2a
    sget-object v1, Lcom/android/server/display/MagnifierSurfaceControl;->mControl:Lcom/android/server/display/MagnifierSurfaceControl$Control;

    invoke-virtual {v1}, Lcom/android/server/display/MagnifierSurfaceControl$Control;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_39

    if-nez p1, :cond_39

    sget-object v1, Lcom/android/server/display/MagnifierSurfaceControl;->mControl:Lcom/android/server/display/MagnifierSurfaceControl$Control;

    invoke-virtual {v1}, Lcom/android/server/display/MagnifierSurfaceControl$Control;->hide()V

    :cond_39
    :goto_39
    monitor-exit v0

    return-void

    :catchall_3b
    move-exception v1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_3b

    throw v1
.end method

.method public onDisplayAdded(I)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/display/MagnifierDisplayPolicy;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    if-ne p1, v1, :cond_23

    const-string v1, "MagnifierSurfaceControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDisplayAdded:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 2

    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/display/MagnifierDisplayPolicy;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    if-ne p1, v1, :cond_26

    const-string v1, "MagnifierSurfaceControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDisplayRemoved:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/display/MagnifierSurfaceControl;->dismiss()V

    :cond_26
    return-void
.end method

.method public setCurrentFollowingStatus(Z)V
    .registers 3

    sput-boolean p1, Lcom/android/server/display/MagnifierSurfaceControl;->mCurrentFollowingStatus:Z

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/display/MagnifierDisplayPolicy;->setCurrentFollowingStatus(Z)V

    return-void
.end method

.method public updateMagnificationSpec(Landroid/view/MagnificationSpec;)V
    .registers 2

    if-eqz p1, :cond_6

    invoke-direct {p0, p1}, Lcom/android/server/display/MagnifierSurfaceControl;->show(Landroid/view/MagnificationSpec;)V

    goto :goto_9

    :cond_6
    invoke-direct {p0}, Lcom/android/server/display/MagnifierSurfaceControl;->hide()V

    :goto_9
    return-void
.end method
