.class Lcom/android/server/SamsungAlarmManagerService$SamsungAlarmHandler;
.super Landroid/os/Handler;
.source "SamsungAlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SamsungAlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SamsungAlarmHandler"
.end annotation


# static fields
.field public static final SEND_ALRM_CLOCK_CHANGED:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/SamsungAlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/SamsungAlarmManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/SamsungAlarmManagerService$SamsungAlarmHandler;->this$0:Lcom/android/server/SamsungAlarmManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    goto :goto_17

    :cond_6
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.action.ALARM_CLOCK_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/SamsungAlarmManagerService$SamsungAlarmHandler;->this$0:Lcom/android/server/SamsungAlarmManagerService;

    iget-object v1, v1, Lcom/android/server/SamsungAlarmManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    nop

    :goto_17
    return-void
.end method
