.class Lcom/android/server/fingerprint/FingerprintService$SemOnHandModeListener;
.super Landroid/database/ContentObserver;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/fingerprint/FingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SemOnHandModeListener"
.end annotation


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mIsEnabledOneHandMode:Z

.field private mIsOneHandModeRunning:Z

.field final synthetic this$0:Lcom/android/server/fingerprint/FingerprintService;


# direct methods
.method public constructor <init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$SemOnHandModeListener;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/fingerprint/FingerprintService;->access$300(Lcom/android/server/fingerprint/FingerprintService;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$SemOnHandModeListener;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method isEnabledOneHandMode()Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemOnHandModeListener;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "any_screen_enabled"

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$SemOnHandModeListener;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mCurrentUserId:I
    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->access$3100(Lcom/android/server/fingerprint/FingerprintService;)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    goto :goto_14

    :cond_13
    move v1, v3

    :goto_14
    iput-boolean v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemOnHandModeListener;->mIsEnabledOneHandMode:Z

    iget-boolean v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemOnHandModeListener;->mIsEnabledOneHandMode:Z

    return v0
.end method

.method isOneHandModeRunning()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService$SemOnHandModeListener;->readValue()V

    iget-boolean v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemOnHandModeListener;->mIsOneHandModeRunning:Z

    return v0
.end method

.method public observe(Z)V
    .registers 6

    if-eqz p1, :cond_17

    :try_start_2
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemOnHandModeListener;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "any_screen_running"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$SemOnHandModeListener;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mCurrentUserId:I
    invoke-static {v3}, Lcom/android/server/fingerprint/FingerprintService;->access$3100(Lcom/android/server/fingerprint/FingerprintService;)I

    move-result v3

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_1c

    :catch_15
    move-exception v0

    goto :goto_41

    :cond_17
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemOnHandModeListener;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :goto_1c
    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SemOnHandModeListener.observe["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$SemOnHandModeListener;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mCurrentUserId:I
    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->access$3100(Lcom/android/server/fingerprint/FingerprintService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_40} :catch_15

    goto :goto_49

    :goto_41
    nop

    const-string v1, "FingerprintService"

    const-string v2, "SemOnHandModeListener.observe : failed : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_49
    return-void
.end method

.method public onChange(Z)V
    .registers 7

    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SemOnHandModeListener.onChange : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$SemOnHandModeListener;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mCurrentUserId:I
    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->access$3100(Lcom/android/server/fingerprint/FingerprintService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/fingerprint/FingerprintService$SemOnHandModeListener;->mIsOneHandModeRunning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService$SemOnHandModeListener;->readValue()V

    iget-boolean v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemOnHandModeListener;->mIsOneHandModeRunning:Z

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemOnHandModeListener;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemOnHandModeListener;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J
    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->access$1600(Lcom/android/server/fingerprint/FingerprintService;)J

    move-result-wide v1

    const/16 v3, 0x8

    const/16 v4, 0x1389

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/fingerprint/FingerprintService;->handleError(JII)V

    :cond_3c
    return-void
.end method

.method readValue()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemOnHandModeListener;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "any_screen_running"

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$SemOnHandModeListener;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mCurrentUserId:I
    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->access$3100(Lcom/android/server/fingerprint/FingerprintService;)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    goto :goto_14

    :cond_13
    move v1, v3

    :goto_14
    iput-boolean v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemOnHandModeListener;->mIsOneHandModeRunning:Z

    return-void
.end method
