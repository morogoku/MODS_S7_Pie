.class public Lcom/android/server/pm/AutoDisableHandler$ADHandler;
.super Landroid/os/Handler;
.source "AutoDisableHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/AutoDisableHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ADHandler"
.end annotation


# instance fields
.field extras:Landroid/os/Bundle;

.field final synthetic this$0:Lcom/android/server/pm/AutoDisableHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/AutoDisableHandler;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/pm/AutoDisableHandler$ADHandler;->this$0:Lcom/android/server/pm/AutoDisableHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/AutoDisableHandler$ADHandler;->extras:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    goto :goto_2f

    :cond_6
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2f

    const-string v2, "activity"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v3, "packageName"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "userId"

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-eqz v2, :cond_2f

    iget-object v5, v2, Lcom/android/server/am/ActivityManagerService;->mMARsPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    if-eqz v5, :cond_2f

    iget-object v5, v2, Lcom/android/server/am/ActivityManagerService;->mMARsPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v5, v3, v4, v1}, Lcom/android/server/am/MARsPolicyManager;->changeAutoDisabledAppState(Ljava/lang/String;IZ)V

    :cond_2f
    :goto_2f
    return-void
.end method
