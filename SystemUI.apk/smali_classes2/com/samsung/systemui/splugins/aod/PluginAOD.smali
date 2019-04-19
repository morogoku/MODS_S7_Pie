.class public interface abstract Lcom/samsung/systemui/splugins/aod/PluginAOD;
.super Ljava/lang/Object;
.source "PluginAOD.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/SPlugin;


# annotations
.annotation runtime Lcom/samsung/systemui/splugins/annotations/ProvidesInterface;
    action = "com.samsung.systemui.action.PLUGIN_AOD"
    version = 0x1
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/systemui/splugins/aod/PluginAOD$Callback;
    }
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.samsung.systemui.action.PLUGIN_AOD"

.field public static final REASON_MOD_DEFAULT:I = 0x1

.field public static final STATE_DOZE:I = 0x2

.field public static final STATE_DOZE_AOD:I = 0x4

.field public static final STATE_DOZE_AOD_PAUSED:I = 0x5

.field public static final STATE_DOZE_MOD:I = 0x6

.field public static final STATE_DOZE_REQUEST_AOD:I = 0x3

.field public static final STATE_FINISH:I = 0x7

.field public static final STATE_INITIALIZED:I = 0x1

.field public static final STATE_UNINITIALIZED:I = 0x0

.field public static final VERSION:I = 0x1


# virtual methods
.method public abstract applyAODFlags(Landroid/view/WindowManager$LayoutParams;ZZ)V
.end method

.method public abstract dump(Ljava/io/PrintWriter;)V
.end method

.method public abstract getAODParameter()Lcom/samsung/systemui/splugins/aod/PluginAODParameter;
.end method

.method public abstract getLiveClockManager()Lcom/samsung/systemui/splugins/aod/PluginAODLiveClockManager;
.end method

.method public abstract getMusicContentManager()Lcom/samsung/systemui/splugins/aod/PluginAODMusicContentManager;
.end method

.method public abstract getNotificationManager()Lcom/samsung/systemui/splugins/aod/PluginAODNotificationManager;
.end method

.method public abstract getRemoteViewsManager()Lcom/samsung/systemui/splugins/aod/PluginAODRemoteViewsManager;
.end method

.method public abstract getServiceBoxCalendarManager()Lcom/samsung/systemui/splugins/aod/PluginAODServiceBoxCalendarManager;
.end method

.method public abstract getServiceBoxManager()Lcom/samsung/systemui/splugins/aod/PluginAODServiceBoxManager;
.end method

.method public abstract onChargingAnimStarted(Z)V
.end method

.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract onDreamingStarted(Landroid/view/ViewGroup;Lcom/samsung/systemui/splugins/aod/PluginAODSystemUIConfiguration;)Z
.end method

.method public abstract onDreamingStopped()V
.end method

.method public abstract onSystemUIConfigurationChanged(Lcom/samsung/systemui/splugins/aod/PluginAODSystemUIConfiguration;)V
.end method

.method public abstract sendExtraData(Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract sendIntent(Landroid/content/Intent;)V
.end method

.method public abstract setAODPluginCallback(Lcom/samsung/systemui/splugins/aod/PluginAOD$Callback;)V
.end method

.method public abstract setDozeScreenState(II)V
.end method
