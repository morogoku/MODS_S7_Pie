.class Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$6;
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

    iput-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$6;->this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhoneRestrictionPolicy"

    invoke-static {v1, v0}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.samsung.android.knox.intent.action.PHONE_READY_INTERNAL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_40

    const-string/jumbo v1, "edm.intent.action.PHONE_READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_40

    const-string v1, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    goto :goto_40

    :cond_23
    const-string v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    :cond_33
    const-string v1, "PhoneRestrictionPolicy"

    const-string v2, "Received ACTION_SUBINFO_RECORD_UPDATED broadcast"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$6;->this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    # invokes: Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->unlockAllSimCards()V
    invoke-static {v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->access$1100(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)V

    goto :goto_49

    :cond_40
    :goto_40
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$6;->this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v2

    # invokes: Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setLockedIccIdsSystemUI(I)V
    invoke-static {v1, v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->access$1000(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;I)V

    :cond_49
    :goto_49
    return-void
.end method
