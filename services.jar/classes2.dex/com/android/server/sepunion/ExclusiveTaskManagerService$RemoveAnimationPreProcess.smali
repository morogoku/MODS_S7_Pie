.class public Lcom/android/server/sepunion/ExclusiveTaskManagerService$RemoveAnimationPreProcess;
.super Ljava/lang/Object;
.source "ExclusiveTaskManagerService.java"

# interfaces
.implements Lcom/android/server/sepunion/ExclusiveTaskManagerService$PreProcess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/ExclusiveTaskManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RemoveAnimationPreProcess"
.end annotation


# instance fields
.field private mPrevReduceAnimationValue:I

.field final synthetic this$0:Lcom/android/server/sepunion/ExclusiveTaskManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/ExclusiveTaskManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$RemoveAnimationPreProcess;->this$0:Lcom/android/server/sepunion/ExclusiveTaskManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doPreProcess(Landroid/content/Context;I)I
    .registers 7

    iget-object v0, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$RemoveAnimationPreProcess;->this$0:Lcom/android/server/sepunion/ExclusiveTaskManagerService;

    # getter for: Lcom/android/server/sepunion/ExclusiveTaskManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/sepunion/ExclusiveTaskManagerService;->access$2200(Lcom/android/server/sepunion/ExclusiveTaskManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "window_animation_scale"

    if-nez p2, :cond_12

    const-string v2, "1"

    goto :goto_14

    :cond_12
    const-string v2, "0.0"

    :goto_14
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "transition_animation_scale"

    if-nez p2, :cond_23

    const-string v2, "1"

    goto :goto_25

    :cond_23
    const-string v2, "0.0"

    :goto_25
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "animator_duration_scale"

    if-nez p2, :cond_33

    const-string v2, "1"

    goto :goto_35

    :cond_33
    const-string v2, "0.0"

    :goto_35
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_5a

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "reduce_animations"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$RemoveAnimationPreProcess;->mPrevReduceAnimationValue:I

    iget-object v2, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$RemoveAnimationPreProcess;->this$0:Lcom/android/server/sepunion/ExclusiveTaskManagerService;

    # getter for: Lcom/android/server/sepunion/ExclusiveTaskManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/sepunion/ExclusiveTaskManagerService;->access$2200(Lcom/android/server/sepunion/ExclusiveTaskManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "reduce_animations"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_6e

    :cond_5a
    iget v0, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$RemoveAnimationPreProcess;->mPrevReduceAnimationValue:I

    if-nez v0, :cond_6e

    iget-object v0, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$RemoveAnimationPreProcess;->this$0:Lcom/android/server/sepunion/ExclusiveTaskManagerService;

    # getter for: Lcom/android/server/sepunion/ExclusiveTaskManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/sepunion/ExclusiveTaskManagerService;->access$2200(Lcom/android/server/sepunion/ExclusiveTaskManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "reduce_animations"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_6e
    :goto_6e
    return v1
.end method
