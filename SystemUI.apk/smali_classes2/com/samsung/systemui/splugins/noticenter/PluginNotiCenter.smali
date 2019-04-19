.class public interface abstract Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;
.super Ljava/lang/Object;
.source "PluginNotiCenter.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/SPlugin;


# annotations
.annotation runtime Lcom/samsung/systemui/splugins/annotations/ProvidesInterface;
    action = "com.samsung.systemui.action.PLUGIN_NOTICENTER"
    version = 0x7d1
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter$Callback;
    }
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.samsung.systemui.action.PLUGIN_NOTICENTER"

.field public static final MAJOR_VERSION:I = 0x2

.field public static final MINOR_VERSION:I = 0x1

.field public static final VERSION:I = 0x7d1


# virtual methods
.method public abstract enterKeyguard()V
.end method

.method public abstract insert(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
.end method

.method public abstract setCallback(Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter$Callback;)V
.end method

.method public abstract unLock()V
.end method

.method public abstract updateSettings(Landroid/os/Bundle;)V
.end method
