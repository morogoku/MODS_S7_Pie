.class Lcom/android/systemui/lockstar/component/PluginLockNotification$1;
.super Ljava/lang/Object;
.source "PluginLockNotification.java"

# interfaces
.implements Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClockCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/lockstar/component/PluginLockNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/lockstar/component/PluginLockNotification;


# direct methods
.method constructor <init>(Lcom/android/systemui/lockstar/component/PluginLockNotification;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/lockstar/component/PluginLockNotification$1;->this$0:Lcom/android/systemui/lockstar/component/PluginLockNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onClockStyleChanged$0(Lcom/android/systemui/lockstar/component/PluginLockNotification$1;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/component/PluginLockNotification$1;->this$0:Lcom/android/systemui/lockstar/component/PluginLockNotification;

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/component/PluginLockNotification;->recover()V

    return-void
.end method


# virtual methods
.method public onClockColorChanged()V
    .locals 0

    return-void
.end method

.method public onClockPackageChanged()V
    .locals 0

    return-void
.end method

.method public onClockStyleChanged()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/systemui/lockstar/component/PluginLockNotification$1;->this$0:Lcom/android/systemui/lockstar/component/PluginLockNotification;

    iget-wide v2, v2, Lcom/android/systemui/lockstar/component/PluginLockNotification;->mClockCallbackRegisterTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "PluginLockNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onClockStyleChanged() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/lockstar/component/PluginLockNotification$1;->this$0:Lcom/android/systemui/lockstar/component/PluginLockNotification;

    invoke-static {v2}, Lcom/android/systemui/lockstar/component/PluginLockNotification;->access$000(Lcom/android/systemui/lockstar/component/PluginLockNotification;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/lockstar/component/PluginLockNotification$1;->this$0:Lcom/android/systemui/lockstar/component/PluginLockNotification;

    invoke-static {v0}, Lcom/android/systemui/lockstar/component/PluginLockNotification;->access$000(Lcom/android/systemui/lockstar/component/PluginLockNotification;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/systemui/lockstar/component/-$$Lambda$PluginLockNotification$1$Bx0zWgUrqPW3I0LwOiyhdx-jcAw;

    invoke-direct {v1, p0}, Lcom/android/systemui/lockstar/component/-$$Lambda$PluginLockNotification$1$Bx0zWgUrqPW3I0LwOiyhdx-jcAw;-><init>(Lcom/android/systemui/lockstar/component/PluginLockNotification$1;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method
