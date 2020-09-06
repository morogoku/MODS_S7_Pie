.class public Lcom/android/server/sepunion/ExclusiveTaskManagerService$NightModePostProcess;
.super Ljava/lang/Object;
.source "ExclusiveTaskManagerService.java"

# interfaces
.implements Lcom/android/server/sepunion/ExclusiveTaskManagerService$PostProcess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/ExclusiveTaskManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NightModePostProcess"
.end annotation


# instance fields
.field private final GMT_OFFSET:I

.field private final ONE_HOUR:I

.field private final ONE_MINUTE:I

.field private final ONE_SECOND:I

.field final synthetic this$0:Lcom/android/server/sepunion/ExclusiveTaskManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/ExclusiveTaskManagerService;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$NightModePostProcess;->this$0:Lcom/android/server/sepunion/ExclusiveTaskManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$NightModePostProcess;->ONE_SECOND:I

    const v0, 0xea60

    iput v0, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$NightModePostProcess;->ONE_MINUTE:I

    const v0, 0x36ee80

    iput v0, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$NightModePostProcess;->ONE_HOUR:I

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    div-int/2addr v1, v0

    iput v1, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$NightModePostProcess;->GMT_OFFSET:I

    return-void
.end method


# virtual methods
.method public doPostProcess(Landroid/content/Context;I)I
    .registers 7

    iget-object v0, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$NightModePostProcess;->this$0:Lcom/android/server/sepunion/ExclusiveTaskManagerService;

    # getter for: Lcom/android/server/sepunion/ExclusiveTaskManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/sepunion/ExclusiveTaskManagerService;->access$2200(Lcom/android/server/sepunion/ExclusiveTaskManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "uimode"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    iget-object v1, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$NightModePostProcess;->this$0:Lcom/android/server/sepunion/ExclusiveTaskManagerService;

    # getter for: Lcom/android/server/sepunion/ExclusiveTaskManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/sepunion/ExclusiveTaskManagerService;->access$2200(Lcom/android/server/sepunion/ExclusiveTaskManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "display_night_theme_scheduled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_25

    move v1, v2

    goto :goto_26

    :cond_25
    move v1, v3

    :goto_26
    if-nez p2, :cond_2c

    invoke-virtual {v0, v2}, Landroid/app/UiModeManager;->setNightMode(I)V

    goto :goto_3a

    :cond_2c
    if-eqz v1, :cond_36

    if-eqz v1, :cond_3a

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$NightModePostProcess;->isOnTime(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3a

    :cond_36
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/app/UiModeManager;->setNightMode(I)V

    :cond_3a
    :goto_3a
    return v3
.end method

.method public isOnTime(Landroid/content/Context;)Z
    .registers 13

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_night_theme_on_time"

    const-wide/16 v2, 0x474

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "display_night_theme_off_time"

    const-wide/16 v4, 0x1a4

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0x36ee80

    div-long v6, v4, v6

    const-wide/16 v8, 0x18

    rem-long/2addr v6, v8

    iget v8, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$NightModePostProcess;->GMT_OFFSET:I

    int-to-long v8, v8

    add-long/2addr v6, v8

    long-to-int v6, v6

    rem-int/lit8 v6, v6, 0x18

    mul-int/lit8 v6, v6, 0x3c

    const-wide/32 v7, 0xea60

    div-long v7, v4, v7

    const-wide/16 v9, 0x3c

    rem-long/2addr v7, v9

    long-to-int v7, v7

    add-int/2addr v6, v7

    cmp-long v7, v2, v0

    const/4 v8, 0x1

    if-ltz v7, :cond_47

    int-to-long v9, v6

    cmp-long v7, v9, v0

    if-ltz v7, :cond_58

    int-to-long v9, v6

    cmp-long v7, v9, v2

    if-gtz v7, :cond_58

    return v8

    :cond_47
    int-to-long v9, v6

    cmp-long v7, v9, v0

    if-ltz v7, :cond_50

    const/16 v7, 0x5a0

    if-le v6, v7, :cond_57

    :cond_50
    if-ltz v6, :cond_58

    int-to-long v9, v6

    cmp-long v7, v9, v2

    if-gtz v7, :cond_58

    :cond_57
    return v8

    :cond_58
    const/4 v7, 0x0

    return v7
.end method
