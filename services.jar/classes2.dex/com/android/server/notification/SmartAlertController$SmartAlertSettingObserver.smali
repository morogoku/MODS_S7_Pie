.class Lcom/android/server/notification/SmartAlertController$SmartAlertSettingObserver;
.super Landroid/database/ContentObserver;
.source "SmartAlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/SmartAlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmartAlertSettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/SmartAlertController;


# direct methods
.method constructor <init>(Lcom/android/server/notification/SmartAlertController;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/notification/SmartAlertController$SmartAlertSettingObserver;->this$0:Lcom/android/server/notification/SmartAlertController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/notification/SmartAlertController$SmartAlertSettingObserver;->update()V

    return-void
.end method

.method public update()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/notification/SmartAlertController$SmartAlertSettingObserver;->this$0:Lcom/android/server/notification/SmartAlertController;

    # getter for: Lcom/android/server/notification/SmartAlertController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/notification/SmartAlertController;->access$600(Lcom/android/server/notification/SmartAlertController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "motion_pick_up"

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    :goto_17
    move v0, v2

    iget-object v1, p0, Lcom/android/server/notification/SmartAlertController$SmartAlertSettingObserver;->this$0:Lcom/android/server/notification/SmartAlertController;

    # invokes: Lcom/android/server/notification/SmartAlertController;->setSmartAlertEnabled(Z)V
    invoke-static {v1, v0}, Lcom/android/server/notification/SmartAlertController;->access$700(Lcom/android/server/notification/SmartAlertController;Z)V

    return-void
.end method
