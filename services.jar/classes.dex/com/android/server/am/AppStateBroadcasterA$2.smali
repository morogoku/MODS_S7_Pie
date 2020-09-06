.class Lcom/android/server/am/AppStateBroadcasterA$2;
.super Landroid/content/BroadcastReceiver;
.source "AppStateBroadcasterA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppStateBroadcasterA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    const-string v0, "com.att.iqi.extra.IQI_DEBUG"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    # setter for: Lcom/android/server/am/AppStateBroadcasterA;->sDebugLog:Z
    invoke-static {v0}, Lcom/android/server/am/AppStateBroadcasterA;->access$902(Z)Z

    return-void
.end method
