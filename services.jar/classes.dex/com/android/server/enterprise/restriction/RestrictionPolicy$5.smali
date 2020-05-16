.class Lcom/android/server/enterprise/restriction/RestrictionPolicy$5;
.super Landroid/content/BroadcastReceiver;
.source "RestrictionPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/restriction/RestrictionPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$5;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RestrictionPolicy"

    invoke-static {v1, v0}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_56

    :try_start_13
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$5;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    # invokes: Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateUSBMode()V
    invoke-static {v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->access$500(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_18} :catch_19

    goto :goto_22

    :catch_19
    move-exception v1

    const-string v4, "RestrictionPolicy"

    const-string/jumbo v5, "updateUsbMode failed"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_22
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    if-eqz v1, :cond_38

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$5;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    # getter for: Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->access$000(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$5;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    # getter for: Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    invoke-static {v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->access$600(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v5

    const/4 v6, 0x5

    invoke-virtual {v1, v4, v5, v6}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    :cond_38
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$5;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    iget-object v5, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$5;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-virtual {v5, v3, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isStatusBarExpansionAllowedAsUser(ZI)Z

    move-result v5

    # invokes: Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setStatusBarExpansionSystemUI(IZ)V
    invoke-static {v4, v3, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->access$100(Lcom/android/server/enterprise/restriction/RestrictionPolicy;IZ)V

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$5;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    iget-object v5, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$5;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-virtual {v5, v2, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbHostStorageAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2

    # invokes: Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateUsbStorageStatebyIntent(Z)Z
    invoke-static {v4, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->access$700(Lcom/android/server/enterprise/restriction/RestrictionPolicy;Z)Z

    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$5;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    const/4 v3, -0x1

    # invokes: Lcom/android/server/enterprise/restriction/RestrictionPolicy;->notifyChanges(I)V
    invoke-static {v2, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->access$800(Lcom/android/server/enterprise/restriction/RestrictionPolicy;I)V

    goto/16 :goto_123

    :cond_56
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6f

    :try_start_5e
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$5;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    # invokes: Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateUSBMode()V
    invoke-static {v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->access$500(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_63} :catch_64

    goto :goto_6d

    :catch_64
    move-exception v1

    const-string v2, "RestrictionPolicy"

    const-string/jumbo v3, "updateUsbMode failed"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6d
    goto/16 :goto_123

    :cond_6f
    const-string/jumbo v1, "edm.intent.action.internal.sec.DEFAULT_NETWORK_POLICY_APPLIED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_98

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$5;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isBackgroundDataEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    if-eqz v1, :cond_88

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$5;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-virtual {v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isDataSavingAllowed()Z

    move-result v1

    if-nez v1, :cond_98

    :cond_88
    :try_start_88
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$5;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-virtual {v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->applyBackgroundDataRestriction()V
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_8d} :catch_8e

    goto :goto_96

    :catch_8e
    move-exception v1

    const-string v2, "RestrictionPolicy"

    const-string v3, "Network Policy update failed"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_96
    goto/16 :goto_123

    :cond_98
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e8

    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string v4, "RestrictionPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Intent.ACTION_USER_SWITCHED occurred!! action:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " userId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "screenCaptureEnabled"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$5;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    # invokes: Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isScreenCaptureEnabled(IZ)Z
    invoke-static {v6, v1, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->access$900(Lcom/android/server/enterprise/restriction/RestrictionPolicy;IZ)Z

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "/data/system/enterprise.conf"

    invoke-static {v4, v3, v5}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_123

    :cond_e8
    const-string v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_fc

    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$5;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    # invokes: Lcom/android/server/enterprise/restriction/RestrictionPolicy;->onUserAdded(I)V
    invoke-static {v2, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->access$1000(Lcom/android/server/enterprise/restriction/RestrictionPolicy;I)V

    goto :goto_123

    :cond_fc
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_110

    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$5;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    # invokes: Lcom/android/server/enterprise/restriction/RestrictionPolicy;->onUserRemoved(I)V
    invoke-static {v2, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->access$1100(Lcom/android/server/enterprise/restriction/RestrictionPolicy;I)V

    goto :goto_123

    :cond_110
    const-string v1, "com.samsung.android.knox.intent.action.KNOXFRAMEWORK_SYSTEMUI_UPDATE_INTENT_INTERNAL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_123

    const-string v1, "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$5;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    # invokes: Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateSystemUIMonitor(I)V
    invoke-static {v2, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->access$1200(Lcom/android/server/enterprise/restriction/RestrictionPolicy;I)V

    :cond_123
    :goto_123
    return-void
.end method
