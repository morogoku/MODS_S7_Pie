.class public Lcom/samsung/android/globalactionsdlx/util/KeyGuardManagerWrapper;
.super Ljava/lang/Object;
.source "KeyGuardManagerWrapper.java"


# static fields
.field private static final ACTION_SHOW_GLOBAL_ACTIONS:Ljava/lang/String; = "android.intent.action.SHOW_GLOBAL_ACTIONS"

.field private static final TAG:Ljava/lang/String; = "KeyguardManagerWrapper"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mKeyguardManager:Landroid/app/KeyguardManager;

.field private final mLogWrapper:Lcom/samsung/android/globalactionsdlx/util/LogWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/globalactionsdlx/util/LogWrapper;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/globalactionsdlx/util/KeyGuardManagerWrapper;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/KeyGuardManagerWrapper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/KeyGuardManagerWrapper;->mKeyguardManager:Landroid/app/KeyguardManager;

    iput-object p2, p0, Lcom/samsung/android/globalactionsdlx/util/KeyGuardManagerWrapper;->mLogWrapper:Lcom/samsung/android/globalactionsdlx/util/LogWrapper;

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/KeyGuardManagerWrapper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public isCurrentUserSecure()Z
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/KeyGuardManagerWrapper;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v0

    return v0
.end method

.method public isSecureKeyguard()Z
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/KeyGuardManagerWrapper;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isDeviceSecure()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/KeyGuardManagerWrapper;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public setPendingIntentAfterUnlock(Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/KeyGuardManagerWrapper;->mLogWrapper:Lcom/samsung/android/globalactionsdlx/util/LogWrapper;

    const-string v1, "KeyguardManagerWrapper"

    const-string/jumbo v2, "setPendingIntentAfterUnlock"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/globalactionsdlx/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SHOW_GLOBAL_ACTIONS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/util/KeyGuardManagerWrapper;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "afterKeyguardGone"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "dismissType"

    invoke-virtual {v3, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/globalactionsdlx/util/KeyGuardManagerWrapper;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v2, v1, v3}, Landroid/app/KeyguardManager;->semSetPendingIntentAfterUnlock(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    return-void
.end method
