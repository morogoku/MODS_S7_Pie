.class Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener$1;
.super Landroid/content/BroadcastReceiver;
.source "NotificationListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener$1;->this$0:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener$1;->this$0:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;

    invoke-static {v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->access$100(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;)Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onReceive: FILP_FOLDER_INTENT"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener$1;->this$0:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;

    const/16 v1, 0x22

    invoke-static {v0, v1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;->access$200(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/service/NotificationListener;I)V

    return-void
.end method
