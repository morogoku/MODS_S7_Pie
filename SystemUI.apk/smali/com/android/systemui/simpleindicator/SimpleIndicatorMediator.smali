.class public Lcom/android/systemui/simpleindicator/SimpleIndicatorMediator;
.super Ljava/lang/Object;
.source "SimpleIndicatorMediator.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/SPluginListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/systemui/splugins/SPluginListener<",
        "Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorBox;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsSPluginConnected:Z

.field private mManager:Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;

.field private mReceiver:Lcom/android/systemui/simpleindicator/SimpleIndicatorReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorMediator;->mIsSPluginConnected:Z

    const-string v0, "[QuickStar]SimpleIndicatorMediator"

    const-string v1, "Constructor()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorMediator;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorMediator;->mManager:Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;

    new-instance v0, Lcom/android/systemui/simpleindicator/SimpleIndicatorReceiver;

    invoke-direct {v0, p0}, Lcom/android/systemui/simpleindicator/SimpleIndicatorReceiver;-><init>(Lcom/android/systemui/simpleindicator/SimpleIndicatorMediator;)V

    iput-object v0, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorMediator;->mReceiver:Lcom/android/systemui/simpleindicator/SimpleIndicatorReceiver;

    const-class v0, Lcom/android/systemui/splugins/SPluginManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/splugins/SPluginManager;

    const-class v1, Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorBox;

    invoke-interface {v0, p0, v1}, Lcom/android/systemui/splugins/SPluginManager;->addPluginListener(Lcom/samsung/systemui/splugins/SPluginListener;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public isPluginConnected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorMediator;->mIsSPluginConnected:Z

    return v0
.end method

.method public bridge synthetic onPluginConfigurationChanged(Lcom/samsung/systemui/splugins/SPlugin;)V
    .locals 0

    check-cast p1, Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorBox;

    invoke-virtual {p0, p1}, Lcom/android/systemui/simpleindicator/SimpleIndicatorMediator;->onPluginConfigurationChanged(Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorBox;)V

    return-void
.end method

.method public onPluginConfigurationChanged(Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorBox;)V
    .locals 3

    const-string v0, "[QuickStar]SimpleIndicatorMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPluginConfigurationChanged() mIsSPluginConnected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorMediator;->mIsSPluginConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", plugin:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorMediator;->mIsSPluginConnected:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorMediator;->mManager:Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;

    invoke-virtual {v0}, Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;->notifyPluginConfigurationChanged()V

    if-eqz p1, :cond_1

    :try_start_0
    invoke-interface {p1}, Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorBox;->onPluginConfigurationChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "[QuickStar]SimpleIndicatorMediator"

    const-string v2, "Please check app version."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    :goto_0
    nop

    :goto_1
    return-void
.end method

.method public bridge synthetic onPluginConnected(Lcom/samsung/systemui/splugins/SPlugin;Landroid/content/Context;)V
    .locals 0

    check-cast p1, Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorBox;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/simpleindicator/SimpleIndicatorMediator;->onPluginConnected(Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorBox;Landroid/content/Context;)V

    return-void
.end method

.method public onPluginConnected(Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorBox;Landroid/content/Context;)V
    .locals 3

    const-string v0, "[QuickStar]SimpleIndicatorMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPluginConnected() mIsSPluginConnected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorMediator;->mIsSPluginConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", plugin:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorMediator;->mIsSPluginConnected:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorMediator;->mReceiver:Lcom/android/systemui/simpleindicator/SimpleIndicatorReceiver;

    iget-object v1, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/systemui/simpleindicator/SimpleIndicatorReceiver;->register(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorMediator;->mIsSPluginConnected:Z

    iget-object v0, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorMediator;->mManager:Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;

    invoke-virtual {v0}, Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;->notifyPluginConnected()V

    if-eqz p1, :cond_1

    :try_start_0
    invoke-interface {p1}, Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorBox;->onPluginConnected()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "[QuickStar]SimpleIndicatorMediator"

    const-string v2, "Please check app version."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    :goto_0
    nop

    :goto_1
    return-void
.end method

.method public bridge synthetic onPluginDisconnected(Lcom/samsung/systemui/splugins/SPlugin;)V
    .locals 0

    check-cast p1, Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorBox;

    invoke-virtual {p0, p1}, Lcom/android/systemui/simpleindicator/SimpleIndicatorMediator;->onPluginDisconnected(Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorBox;)V

    return-void
.end method

.method public onPluginDisconnected(Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorBox;)V
    .locals 3

    const-string v0, "[QuickStar]SimpleIndicatorMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPluginDisconnected() mIsSPluginConnected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorMediator;->mIsSPluginConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", plugin:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorMediator;->mIsSPluginConnected:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorMediator;->mReceiver:Lcom/android/systemui/simpleindicator/SimpleIndicatorReceiver;

    iget-object v1, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/systemui/simpleindicator/SimpleIndicatorReceiver;->unregister(Landroid/content/Context;)V

    const-string/jumbo v0, "rotate,headset"

    invoke-virtual {p0, v0}, Lcom/android/systemui/simpleindicator/SimpleIndicatorMediator;->setBlackListDBValue(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorMediator;->mIsSPluginConnected:Z

    iget-object v0, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorMediator;->mManager:Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;

    invoke-virtual {v0}, Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;->notifyPluginDisconnected()V

    if-eqz p1, :cond_1

    :try_start_0
    invoke-interface {p1}, Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorBox;->onPluginDisconnected()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "[QuickStar]SimpleIndicatorMediator"

    const-string v2, "Please check app version."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    :goto_0
    nop

    :goto_1
    return-void
.end method

.method public setBlackListDBValue(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorMediator;->mManager:Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;->setBlackListDBValue(Ljava/lang/String;)V

    return-void
.end method
