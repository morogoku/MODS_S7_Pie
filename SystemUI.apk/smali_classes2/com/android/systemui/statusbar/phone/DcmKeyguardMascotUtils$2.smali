.class Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils$2;
.super Landroid/content/BroadcastReceiver;
.source "DcmKeyguardMascotUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->registerMascotReceiver()V
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

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils$2;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.nttdocomo.android.mascot.KEYGUARD_UPDATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils$2;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;

    const-string v2, "RemoteViews"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews;

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->access$102(Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils$2;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->access$100(Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;)Landroid/widget/RemoteViews;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "SecKeyguardStatusUtils"

    const-string v2, "StatusBarKeyguardManager.BroadcastReceiver.onReceive(): mascot is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v1, "SecKeyguardStatusUtils"

    const-string v2, "StatusBarKeyguardManager.BroadcastReceiver.onReceive(): mascot is exist"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils$2;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils$2;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->access$100(Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;)Landroid/widget/RemoteViews;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->setMascotRemoteViews(Landroid/widget/RemoteViews;)V

    goto/16 :goto_2

    :cond_1
    const-string v1, "jp.co.nttdocomo.carriermail.APP_LINK_RECEIVED_MESSAGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3

    const-string v1, "com.android.internal.policy.impl.CARRIERMAIL_COUNT_UPDATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils$2;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->access$202(Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;Z)Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils$2;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->access$300(Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils$2;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils$2;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->access$100(Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;)Landroid/widget/RemoteViews;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->setMascotRemoteViews(Landroid/widget/RemoteViews;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils$2;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->access$302(Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;Z)Z

    goto :goto_2

    :cond_3
    :goto_1
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/nttdocomo/android/screenlockservice/IScreenLockService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.nttdocomo.android.screenlockservice"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils$2;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->access$000(Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils$2;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v1, v4, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "SecKeyguardStatusUtils"

    const-string v3, "StatusBarKeyguardManager.BroadcastReceiver.onReceive(): can\'t connect IScreenLockService"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-string v2, "com.android.internal.policy.impl.CARRIERMAIL_COUNT_UPDATE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils$2;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils$2;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->access$100(Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;)Landroid/widget/RemoteViews;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->setMascotRemoteViews(Landroid/widget/RemoteViews;)V

    :cond_5
    :goto_2
    return-void
.end method
