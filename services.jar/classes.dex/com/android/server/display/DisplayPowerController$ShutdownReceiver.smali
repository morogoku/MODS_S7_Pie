.class final Lcom/android/server/display/DisplayPowerController$ShutdownReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DisplayPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ShutdownReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayPowerController;


# direct methods
.method private constructor <init>(Lcom/android/server/display/DisplayPowerController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$ShutdownReceiver;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/display/DisplayPowerController$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerController$ShutdownReceiver;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$ShutdownReceiver;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$400(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/BrightnessMappingStrategy;

    move-result-object v0

    if-eqz v0, :cond_96

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_96

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$ShutdownReceiver;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;
    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->access$400(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/BrightnessMappingStrategy;

    move-result-object v1

    instance-of v1, v1, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;

    const/4 v2, -0x2

    if-eqz v1, :cond_5e

    const-string v1, "DisplayPowerController"

    const-string v3, "[PAB] save PAC point"

    invoke-static {v1, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$ShutdownReceiver;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->access$200(Lcom/android/server/display/DisplayPowerController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "pac_offset_list"

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController$ShutdownReceiver;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;
    invoke-static {v4}, Lcom/android/server/display/DisplayPowerController;->access$400(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/BrightnessMappingStrategy;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;

    invoke-virtual {v4}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->getPersonalizedOffsetList()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$ShutdownReceiver;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->access$200(Lcom/android/server/display/DisplayPowerController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "pac_0lux_changed"

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController$ShutdownReceiver;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;
    invoke-static {v4}, Lcom/android/server/display/DisplayPowerController;->access$400(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/BrightnessMappingStrategy;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;

    invoke-virtual {v4}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->isChangedByUser0Lux()Z

    move-result v4

    invoke-static {v1, v3, v4, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_5e
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$ShutdownReceiver;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mAppliedForceDimming:Z
    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->access$500(Lcom/android/server/display/DisplayPowerController;)Z

    move-result v1

    if-eqz v1, :cond_96

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$ShutdownReceiver;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessModeSetting:I
    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->access$600(Lcom/android/server/display/DisplayPowerController;)I

    move-result v1

    if-nez v1, :cond_96

    const-string v1, "DisplayPowerController"

    const-string v3, "Restore low battery force dim (manual brightness)"

    invoke-static {v1, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$ShutdownReceiver;->this$0:Lcom/android/server/display/DisplayPowerController;

    # invokes: Lcom/android/server/display/DisplayPowerController;->updateLastBrightnessSettingChangedTime()V
    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->access$700(Lcom/android/server/display/DisplayPowerController;)V

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$ShutdownReceiver;->this$0:Lcom/android/server/display/DisplayPowerController;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/display/DisplayPowerController;->mAppliedForceDimming:Z
    invoke-static {v1, v3}, Lcom/android/server/display/DisplayPowerController;->access$502(Lcom/android/server/display/DisplayPowerController;Z)Z

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$ShutdownReceiver;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->access$200(Lcom/android/server/display/DisplayPowerController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "screen_brightness"

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController$ShutdownReceiver;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mLastScreenBrightnessSettingBeforeForceDim:I
    invoke-static {v4}, Lcom/android/server/display/DisplayPowerController;->access$800(Lcom/android/server/display/DisplayPowerController;)I

    move-result v4

    invoke-static {v1, v3, v4, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_96
    return-void
.end method
