.class Lcom/android/server/shealth/SamsungHealthService$UpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SamsungHealthService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/shealth/SamsungHealthService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateReceiver"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/shealth/SamsungHealthService$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/shealth/SamsungHealthService$UpdateReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    if-nez p2, :cond_3

    return-void

    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x304ed112

    if-eq v2, v3, :cond_21

    const v3, 0x5c1076e2

    if-eq v2, v3, :cond_17

    goto :goto_2a

    :cond_17
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    const/4 v1, 0x1

    goto :goto_2a

    :cond_21
    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    const/4 v1, 0x0

    :cond_2a
    :goto_2a
    packed-switch v1, :pswitch_data_34

    goto :goto_32

    :pswitch_2e
    # invokes: Lcom/android/server/shealth/SamsungHealthService;->backgroundWhitelist(Landroid/content/Context;)V
    invoke-static {p1}, Lcom/android/server/shealth/SamsungHealthService;->access$100(Landroid/content/Context;)V

    nop

    :goto_32
    return-void

    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_2e
    .end packed-switch
.end method
