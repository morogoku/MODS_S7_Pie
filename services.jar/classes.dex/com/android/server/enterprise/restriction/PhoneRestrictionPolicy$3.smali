.class Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$3;
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

    iput-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$3;->this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13

    const-string/jumbo v0, "subscription"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    if-eqz v1, :cond_11

    const/4 v2, 0x1

    if-ne v1, v2, :cond_66

    :cond_11
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$3;->this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    invoke-virtual {v2, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isDataAllowedFromSimSlot(I)Z

    move-result v2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    if-nez v2, :cond_47

    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_1f
    const-string/jumbo v7, "wifi"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    if-eqz v7, :cond_3b

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->semGetWifiApState()I

    move-result v8

    move v5, v8

    const/16 v8, 0xd

    if-eq v5, v8, :cond_37

    const/16 v8, 0xc

    if-ne v5, v8, :cond_47

    :cond_37
    invoke-virtual {v7, v6, v2}, Landroid/net/wifi/WifiManager;->semSetWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto :goto_47

    :cond_3b
    const-string v8, "PhoneRestrictionPolicy"

    const-string v9, "Mobile Hotspot cannot be disabled"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_47

    :catchall_43
    move-exception v5

    goto :goto_67

    :catch_45
    move-exception v5

    goto :goto_59

    :cond_47
    :goto_47
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$3;->this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    # getter for: Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->access$300(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v2}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->setCellularDataAllowedAsUser(IZ)V

    invoke-virtual {v5, v6, v2}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->setWifiTetheringAllowedAsUser(IZ)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_58} :catch_45
    .catchall {:try_start_1f .. :try_end_58} :catchall_43

    goto :goto_62

    :goto_59
    nop

    :try_start_5a
    const-string v6, "PhoneRestrictionPolicy"

    const-string/jumbo v7, "setCellularDataAllowed failed "

    invoke-static {v6, v7, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_62
    .catchall {:try_start_5a .. :try_end_62} :catchall_43

    :goto_62
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    :cond_66
    return-void

    :goto_67
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method
