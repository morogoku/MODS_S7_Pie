.class Lcom/android/server/am/MARsPolicyManager$3;
.super Landroid/database/ContentObserver;
.source "MARsPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/MARsPolicyManager;->registerDefaultDialerSettingsChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MARsPolicyManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/MARsPolicyManager;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager$3;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager$3;->this$0:Lcom/android/server/am/MARsPolicyManager;

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager$3;->this$0:Lcom/android/server/am/MARsPolicyManager;

    iget-object v1, v1, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    # invokes: Lcom/android/server/am/MARsPolicyManager;->getDefaultDialerPackage(I)V
    invoke-static {v0, v1}, Lcom/android/server/am/MARsPolicyManager;->access$900(Lcom/android/server/am/MARsPolicyManager;I)V

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager$3;->this$0:Lcom/android/server/am/MARsPolicyManager;

    iget-object v0, v0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v0}, Lcom/android/server/am/MARsDBManager;->sendVerifyForcedAppStandby()V

    return-void
.end method
