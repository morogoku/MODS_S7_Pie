.class public interface abstract Lcom/samsung/systemui/splugins/aod/PluginAOD$Callback;
.super Ljava/lang/Object;
.source "PluginAOD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/systemui/splugins/aod/PluginAOD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public onFinishMOD(I)V
    .locals 0

    return-void
.end method

.method public onRequestMOD(I)V
    .locals 0

    return-void
.end method

.method public abstract onRequestState(I)V
.end method

.method public onSendExtraData(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onUpdateDozeBrightness(II)V
    .locals 0

    return-void
.end method

.method public onUpdateWindowLayoutParams()V
    .locals 0

    return-void
.end method
