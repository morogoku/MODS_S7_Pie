.class Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils$1;
.super Ljava/lang/Object;
.source "DcmKeyguardMascotUtils.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    invoke-static {p2}, Lcom/nttdocomo/android/screenlockservice/IScreenLockService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/nttdocomo/android/screenlockservice/IScreenLockService;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lcom/nttdocomo/android/screenlockservice/IScreenLockService;->getUnreadCount()I

    move-result v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "jp.co.nttdocomo.carriermail.APP_LINK_RECEIVED_MESSAGE_LOCAL"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "spcnt"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->access$000(Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.nttdocomo.android.screenlockservice.DCM_SCREEN"

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SecKeyguardStatusUtils"

    const-string v3, "StatusBarKeyguardManager.ServiceConnection.onServiceConnected(): can\'t get unread count"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    :goto_0
    nop

    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->access$000(Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    const-string v2, "SecKeyguardStatusUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "StatusBarKeyguardManager.ServiceConnection.onServiceConnected(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
