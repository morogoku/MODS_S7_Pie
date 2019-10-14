.class public Lcom/android/systemui/servicebox/KeyguardServiceBoxControllerImpl;
.super Ljava/lang/Object;
.source "KeyguardServiceBoxControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/servicebox/KeyguardServiceBoxController;


# static fields
.field private static final sInstance:Lcom/android/systemui/servicebox/KeyguardServiceBoxControllerImpl;


# instance fields
.field private mContainer:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

.field private mNotificationManager:Lcom/android/systemui/servicebox/KeyguardServiceBoxNotificationManager;

.field private mOwnerInfoMgr:Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoMgr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxControllerImpl;

    invoke-direct {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxControllerImpl;-><init>()V

    sput-object v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxControllerImpl;->sInstance:Lcom/android/systemui/servicebox/KeyguardServiceBoxControllerImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxNotificationManager;

    invoke-direct {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxNotificationManager;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxControllerImpl;->mNotificationManager:Lcom/android/systemui/servicebox/KeyguardServiceBoxNotificationManager;

    return-void
.end method

.method public static getInstance()Lcom/android/systemui/servicebox/KeyguardServiceBoxControllerImpl;
    .locals 1

    sget-object v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxControllerImpl;->sInstance:Lcom/android/systemui/servicebox/KeyguardServiceBoxControllerImpl;

    return-object v0
.end method


# virtual methods
.method public disableBlurFlag(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxControllerImpl;->mContainer:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxControllerImpl;->mContainer:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->disableBlurFlag(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public dismissServiceBox(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxControllerImpl;->mContainer:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxControllerImpl;->mContainer:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->dismissServiceBox(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string v0, "KeyguardServiceBox state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxControllerImpl;->mContainer:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxControllerImpl;->mContainer:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "  disabled\n"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getAODRemoteViews(Ljava/lang/String;)Landroid/widget/RemoteViews;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxControllerImpl;->mContainer:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxControllerImpl;->mContainer:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->getAODRemoteViews(Ljava/lang/String;)Landroid/widget/RemoteViews;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getContainerViewTreeObserver()Landroid/view/ViewTreeObserver;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxControllerImpl;->mContainer:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxControllerImpl;->mContainer:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->getContainerViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getCurrentClockType()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxControllerImpl;->mContainer:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxControllerImpl;->mContainer:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->getCurrentClockType()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getCurrentPagePkgName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxControllerImpl;->mContainer:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxControllerImpl;->mContainer:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->getCurrentPagePkgName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getMinHeight()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxControllerImpl;->mContainer:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxControllerImpl;->mContainer:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->getMinHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getNotificationCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxControllerImpl;->mContainer:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxControllerImpl;->mContainer:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->getNotificationCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getNotificationManager()Lcom/android/systemui/servicebox/KeyguardServiceBoxNotificationManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxControllerImpl;->mNotificationManager:Lcom/android/systemui/servicebox/KeyguardServiceBoxNotificationManager;

    return-object v0
.end method

.method public declared-synchronized getOwnerInfoMgr(Landroid/content/Context;)Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoMgr;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxControllerImpl;->mOwnerInfoMgr:Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoMgr;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoMgr;

    invoke-direct {v0, p1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoMgr;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxControllerImpl;->mOwnerInfoMgr:Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoMgr;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxControllerImpl;->mOwnerInfoMgr:Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoMgr;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getPaddingRect(Landroid/graphics/Rect;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxControllerImpl;->mContainer:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxControllerImpl;->mContainer:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->getPaddingRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getStatusCallback()Lcom/android/systemui/servicebox/KeyguardStatusCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxControllerImpl;->mContainer:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxControllerImpl;->mContainer:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->getStatusCallback()Lcom/android/systemui/servicebox/KeyguardStatusCallback;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public isClockOnly()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxControllerImpl;->mContainer:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxControllerImpl;->mContainer:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->isClockOnly()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isContainerExpanded()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxControllerImpl;->mContainer:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxControllerImpl;->mContainer:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->isContainerExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnabledBioUnlock()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxControllerImpl;->mContainer:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxControllerImpl;->mContainer:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->isEnabledBioUnlock()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isShowServiceBox()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxControllerImpl;->mContainer:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxControllerImpl;->mContainer:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->isShowServiceBox()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onDismissServiceBoxStarted(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxControllerImpl;->mContainer:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxControllerImpl;->mContainer:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->onDismissServiceBoxStarted(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPageSelected(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxControllerImpl;->mContainer:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxControllerImpl;->mContainer:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->onPageSelected(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSettingsChanged(Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxControllerImpl;->mContainer:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxControllerImpl;->mContainer:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->onSettingsChanged(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method public onSetupCompleted()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxControllerImpl;->mContainer:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxControllerImpl;->mContainer:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->onSetupCompleted()V

    :cond_0
    return-void
.end method

.method public playOwnerInfoAnimation(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxControllerImpl;->mContainer:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxControllerImpl;->mContainer:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->playOwnerInfoAnimation(F)V

    :cond_0
    return-void
.end method

.method public reissueAllPages()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxControllerImpl;->mContainer:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxControllerImpl;->mContainer:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->reissueAllPages()V

    :cond_0
    return-void
.end method

.method public removeRemoteViews(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxControllerImpl;->mContainer:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxControllerImpl;->mContainer:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->removeRemoteViews(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public sendRequestRemoteViewsBroadcast()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxControllerImpl;->mContainer:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxControllerImpl;->mContainer:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->sendRequestRemoteViewsBroadcast()V

    :cond_0
    return-void
.end method

.method public sendRequestRemoteViewsBroadcast(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxControllerImpl;->mContainer:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxControllerImpl;->mContainer:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->sendRequestRemoteViewsBroadcast(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setContainer(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxControllerImpl;->mContainer:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    return-void
.end method

.method public setCurrentClockType(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxControllerImpl;->mContainer:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxControllerImpl;->mContainer:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->setCurrentClockType(I)V

    :cond_0
    return-void
.end method

.method public setCurrentPage(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxControllerImpl;->mContainer:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxControllerImpl;->mContainer:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->setCurrentPage(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public showServiceBox(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxControllerImpl;->mContainer:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxControllerImpl;->mContainer:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->showServiceBox(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateClockPageLocation(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxControllerImpl;->mContainer:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxControllerImpl;->mContainer:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->updateClockPageLocation(F)V

    :cond_0
    return-void
.end method
