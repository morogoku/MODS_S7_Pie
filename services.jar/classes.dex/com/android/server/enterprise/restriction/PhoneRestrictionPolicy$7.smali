.class Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$7;
.super Ljava/lang/Object;
.source "PhoneRestrictionPolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$7;->this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, "Trying to connect to EnterpriseSimPin Service"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.sec.enterprise.mdm.services.simpin"

    const-string v2, "com.sec.enterprise.mdm.services.simpin.EnterpriseSimPin"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$7;->this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    # getter for: Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->access$900(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :try_start_19
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$7;->this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    # getter for: Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->access$300(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.enterprise.SimPinCode"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$7;->this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    # getter for: Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinServiceConn:Landroid/content/ServiceConnection;
    invoke-static {v3}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->access$1200(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)Landroid/content/ServiceConnection;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_34
    .catch Ljava/lang/SecurityException; {:try_start_19 .. :try_end_34} :catch_35

    goto :goto_3d

    :catch_35
    move-exception v1

    const-string v2, "PhoneRestrictionPolicy"

    const-string v3, "Failed to bind Sim Pin Service"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3d
    return-void
.end method
