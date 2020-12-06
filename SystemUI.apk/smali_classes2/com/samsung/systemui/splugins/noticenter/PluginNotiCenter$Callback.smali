.class public interface abstract Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter$Callback;
.super Ljava/lang/Object;
.source "PluginNotiCenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onChangedVisibilityOnKeyguard(Z)V
.end method

.method public abstract onNotiCenterPanelUpdate(Landroid/widget/RemoteViews;)V
.end method

.method public abstract onNotiStarPanelShowOnKeyguard(Z)V
    .annotation runtime Lcom/samsung/systemui/splugins/annotations/APIVersion;
        version = 0x7d1
    .end annotation
.end method
