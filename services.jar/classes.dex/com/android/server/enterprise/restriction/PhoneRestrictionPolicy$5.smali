.class Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$5;
.super Landroid/content/BroadcastReceiver;
.source "PhoneRestrictionPolicy.java"


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

    iput-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$5;->this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhoneRestrictionPolicy"

    invoke-static {v1, v0}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$5;->this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    # getter for: Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSmsMmsDeliveryHandler:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;
    invoke-static {v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->access$500(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$5;->this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    # getter for: Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSmsMmsDeliveryHandler:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;
    invoke-static {v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->access$500(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;->sendMessage(Landroid/os/Message;)Z

    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$5;->this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    # invokes: Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->notifyRcsChangesAllUser()V
    invoke-static {v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->access$600(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)V

    goto :goto_65

    :cond_2b
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5f

    const-string v1, "android.intent.action.REBOOT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    goto :goto_5f

    :cond_3c
    const-string v1, "com.samsung.android.knox.intent.action.PHONE_READY_INTERNAL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4d

    const-string/jumbo v1, "edm.intent.action.PHONE_READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_65

    :cond_4d
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$5;->this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    # getter for: Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->access$900(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$5;->this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    # getter for: Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinBind:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->access$800(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_65

    :cond_5f
    :goto_5f
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$5;->this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mIsPhoneShuttingDown:Z
    invoke-static {v1, v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->access$702(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;Z)Z

    :cond_65
    :goto_65
    return-void
.end method
