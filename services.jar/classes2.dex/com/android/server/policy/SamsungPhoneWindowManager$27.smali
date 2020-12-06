.class Lcom/android/server/policy/SamsungPhoneWindowManager$27;
.super Landroid/content/BroadcastReceiver;
.source "SamsungPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/SamsungPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$27;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/kiosk/KioskMode;->ACTION_REFRESH_HWKEY_INTERNAL:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    :try_start_c
    const-string v1, "kioskmode"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/kiosk/IKioskMode$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v1

    if-eqz v1, :cond_28

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$27;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-interface {v1}, Lcom/samsung/android/knox/kiosk/IKioskMode;->getBlockedHwKeysCache()Ljava/util/Map;

    move-result-object v3

    # setter for: Lcom/android/server/policy/SamsungPhoneWindowManager;->mBlockedHwKeys:Ljava/util/Map;
    invoke-static {v2, v3}, Lcom/android/server/policy/SamsungPhoneWindowManager;->access$2702(Lcom/android/server/policy/SamsungPhoneWindowManager;Ljava/util/Map;)Ljava/util/Map;

    const-string v2, "SamsungPhoneWindowManager"

    const-string v3, "Blocked hw keys cache is being refreshed."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_28} :catch_29

    :cond_28
    goto :goto_31

    :catch_29
    move-exception v1

    const-string v2, "SamsungPhoneWindowManager"

    const-string v3, "Exception while getting kiosk mode service"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    :goto_31
    return-void
.end method
