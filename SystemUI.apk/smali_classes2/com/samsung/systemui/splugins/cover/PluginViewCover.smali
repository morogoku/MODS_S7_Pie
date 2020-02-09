.class public interface abstract Lcom/samsung/systemui/splugins/cover/PluginViewCover;
.super Ljava/lang/Object;
.source "PluginViewCover.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/SPlugin;


# annotations
.annotation runtime Lcom/samsung/systemui/splugins/annotations/ProvidesInterface;
    action = "com.samsung.systemui.action.PLUGIN_VIEW_COVER"
    version = 0x1
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.samsung.systemui.action.PLUGIN_VIEW_COVER"

.field public static final VERSION:I = 0x1


# virtual methods
.method public abstract getMusicContentManager()Lcom/samsung/systemui/splugins/aod/PluginAODMusicContentManager;
.end method

.method public abstract getNotificationManager()Lcom/samsung/systemui/splugins/aod/PluginAODNotificationManager;
.end method

.method public abstract getRemoteViewsManager()Lcom/samsung/systemui/splugins/aod/PluginAODRemoteViewsManager;
.end method

.method public abstract getServiceBoxCalendarManager()Lcom/samsung/systemui/splugins/aod/PluginAODServiceBoxCalendarManager;
.end method

.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract onCoverAppCovered(Z)V
.end method

.method public abstract onCoverAttached(Landroid/view/ViewGroup;Lcom/samsung/android/cover/CoverState;)V
.end method

.method public abstract onCoverDetached()V
.end method

.method public abstract onCoverStateUpdated(Lcom/samsung/android/cover/CoverState;)V
.end method

.method public abstract onScreenTurnedOff()V
.end method

.method public abstract onScreenTurningOn()V
.end method
