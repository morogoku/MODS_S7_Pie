.class final Lcom/android/server/display/MagnifierDisplayAdapter;
.super Lcom/android/server/display/DisplayAdapter;
.source "MagnifierDisplayAdapter.java"

# interfaces
.implements Lcom/android/server/display/MagnifierSurfaceControl$Listener;
.implements Lcom/android/internal/util/DumpUtils$Dump;


# static fields
.field static final DEBUG:Z = true

.field static final TAG:Ljava/lang/String; = "MagnifierDisplayAdapter"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentDisplayId:I

.field private mDevice:Lcom/android/server/display/MagnifierDevice;

.field private mDisplayInfo:Landroid/view/DisplayInfo;

.field private mEnabled:Z

.field private mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

.field private mScale:F

.field private mSurfaceCtl:Lcom/android/server/display/MagnifierSurfaceControl;

.field private mTempSpec:Landroid/view/MagnificationSpec;

.field private final mUiHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Landroid/os/Handler;)V
    .registers 12

    const-string v5, "MagnifierDisplayAdapter"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/DisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mEnabled:Z

    invoke-static {}, Landroid/view/MagnificationSpec;->obtain()Landroid/view/MagnificationSpec;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mTempSpec:Landroid/view/MagnificationSpec;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mScale:F

    iput v0, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mCurrentDisplayId:I

    iput-object p2, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-direct {v0, p2}, Lcom/android/server/display/MagnifierDisplayPolicy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    iput-object p5, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mUiHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/server/display/DisplayAdapter;->dumpLocked(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public enable(Z)V
    .registers 10

    iget-boolean v0, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mEnabled:Z

    if-ne v0, p1, :cond_21

    const-string v0, "MagnifierDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " flag is same"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_21
    const-string v0, "MagnifierDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mEnabled:Z

    if-eqz p1, :cond_55

    new-instance v0, Lcom/android/server/display/MagnifierSurfaceControl;

    iget-object v3, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/server/display/MagnifierDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    iget v7, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mCurrentDisplayId:I

    move-object v2, v0

    move-object v4, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/display/MagnifierSurfaceControl;-><init>(Landroid/content/Context;Lcom/android/server/display/MagnifierSurfaceControl$Listener;Landroid/os/Handler;Lcom/android/server/display/MagnifierDisplayPolicy;I)V

    iput-object v0, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mSurfaceCtl:Lcom/android/server/display/MagnifierSurfaceControl;

    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mSurfaceCtl:Lcom/android/server/display/MagnifierSurfaceControl;

    invoke-virtual {v0}, Lcom/android/server/display/MagnifierSurfaceControl;->create()V

    goto :goto_76

    :cond_55
    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mSurfaceCtl:Lcom/android/server/display/MagnifierSurfaceControl;

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mSurfaceCtl:Lcom/android/server/display/MagnifierSurfaceControl;

    invoke-virtual {v0}, Lcom/android/server/display/MagnifierSurfaceControl;->dismiss()V

    :cond_5e
    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mDevice:Lcom/android/server/display/MagnifierDevice;

    if-eqz v0, :cond_71

    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mDevice:Lcom/android/server/display/MagnifierDevice;

    invoke-virtual {v0}, Lcom/android/server/display/MagnifierDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/SurfaceControl;->destroyDisplay(Landroid/os/IBinder;)V

    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mDevice:Lcom/android/server/display/MagnifierDevice;

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/MagnifierDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    :cond_71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mSurfaceCtl:Lcom/android/server/display/MagnifierSurfaceControl;

    iput-object v0, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mDevice:Lcom/android/server/display/MagnifierDevice;

    :goto_76
    return-void
.end method

.method public enableMagnifierWindowController(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mSurfaceCtl:Lcom/android/server/display/MagnifierSurfaceControl;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mSurfaceCtl:Lcom/android/server/display/MagnifierSurfaceControl;

    invoke-virtual {v0, p1}, Lcom/android/server/display/MagnifierSurfaceControl;->enableMagnifierWindowController(Z)V

    return-void
.end method

.method public onChangeSurface(Landroid/view/Surface;)V
    .registers 5

    const-string v0, "MagnifierDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onChangeSurface:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mDevice:Lcom/android/server/display/MagnifierDevice;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mDevice:Lcom/android/server/display/MagnifierDevice;

    invoke-virtual {v0, p1}, Lcom/android/server/display/MagnifierDevice;->setSurface(Landroid/view/Surface;)V

    goto :goto_29

    :cond_21
    const-string v0, "MagnifierDisplayAdapter"

    const-string/jumbo v1, "onChangeSurface: device is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_29
    return-void
.end method

.method public onCreateSurface(Landroid/view/Surface;II)V
    .registers 14

    invoke-virtual {p0}, Lcom/android/server/display/MagnifierDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    :try_start_5
    const-string v1, "MagnifierDisplayAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCreateSurface:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "OverlayMagnifier"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/view/SurfaceControl;->createDisplay(Ljava/lang/String;Z)Landroid/os/IBinder;

    move-result-object v5

    new-instance v1, Lcom/android/server/display/MagnifierDevice;

    const-string v7, "OverlayMagnifier"

    iget-object v8, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    move-object v3, v1

    move-object v4, p0

    move-object v6, p1

    move v9, p3

    invoke-direct/range {v3 .. v9}, Lcom/android/server/display/MagnifierDevice;-><init>(Lcom/android/server/display/DisplayAdapter;Landroid/os/IBinder;Landroid/view/Surface;Ljava/lang/String;Lcom/android/server/display/MagnifierDisplayPolicy;I)V

    iput-object v1, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mDevice:Lcom/android/server/display/MagnifierDevice;

    iget-object v1, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mDevice:Lcom/android/server/display/MagnifierDevice;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/display/MagnifierDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    monitor-exit v0

    return-void

    :catchall_39
    move-exception v1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_5 .. :try_end_3b} :catchall_39

    throw v1
.end method

.method public registerLocked()V
    .registers 1

    invoke-super {p0}, Lcom/android/server/display/DisplayAdapter;->registerLocked()V

    return-void
.end method

.method public setCurrentDisplayIdMagnifier(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mCurrentDisplayId:I

    return-void
.end method

.method public setCurrentFollowingStatus(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mSurfaceCtl:Lcom/android/server/display/MagnifierSurfaceControl;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mSurfaceCtl:Lcom/android/server/display/MagnifierSurfaceControl;

    invoke-virtual {v0, p1}, Lcom/android/server/display/MagnifierSurfaceControl;->setCurrentFollowingStatus(Z)V

    return-void
.end method

.method public setMagnificationSettings(IIF)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/display/MagnifierDisplayPolicy;->updateSettings(IIF)V

    iput p3, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mScale:F

    return-void
.end method

.method public updateMagnificationSpec(Landroid/view/MagnificationSpec;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mTempSpec:Landroid/view/MagnificationSpec;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mSurfaceCtl:Lcom/android/server/display/MagnifierSurfaceControl;

    if-nez v1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    if-eqz p1, :cond_25

    iget-object v1, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mTempSpec:Landroid/view/MagnificationSpec;

    iget v2, p1, Landroid/view/MagnificationSpec;->offsetX:F

    iput v2, v1, Landroid/view/MagnificationSpec;->offsetX:F

    iget-object v1, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mTempSpec:Landroid/view/MagnificationSpec;

    iget v2, p1, Landroid/view/MagnificationSpec;->offsetY:F

    iput v2, v1, Landroid/view/MagnificationSpec;->offsetY:F

    iget-object v1, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mTempSpec:Landroid/view/MagnificationSpec;

    iget v2, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mScale:F

    iput v2, v1, Landroid/view/MagnificationSpec;->scale:F

    iget-object v1, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mSurfaceCtl:Lcom/android/server/display/MagnifierSurfaceControl;

    iget-object v2, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mTempSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {v1, v2}, Lcom/android/server/display/MagnifierSurfaceControl;->updateMagnificationSpec(Landroid/view/MagnificationSpec;)V

    goto :goto_2b

    :cond_25
    iget-object v1, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mSurfaceCtl:Lcom/android/server/display/MagnifierSurfaceControl;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/display/MagnifierSurfaceControl;->updateMagnificationSpec(Landroid/view/MagnificationSpec;)V

    :goto_2b
    monitor-exit v0

    return-void

    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v1
.end method
