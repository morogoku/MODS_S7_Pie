.class Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$7;
.super Landroid/content/BroadcastReceiver;
.source "CalendarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$7;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onReceive$0(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$7;)V
    .locals 3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$7;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    invoke-static {v1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->access$1100(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;)I

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$7;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    invoke-static {v1, v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->access$1102(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;I)I

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$7;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->access$1200(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "android.intent.action.TIME_TICK"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$7;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->access$400(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/servicebox/pages/calendar/-$$Lambda$CalendarManager$7$heUaoQHKem4uE3RZ1LekWYEftwI;

    invoke-direct {v1, p0}, Lcom/android/systemui/servicebox/pages/calendar/-$$Lambda$CalendarManager$7$heUaoQHKem4uE3RZ1LekWYEftwI;-><init>(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$7;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string v0, "CalendarManager"

    const-string/jumbo v1, "onReceive android.intent.action.TIME_TICK"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/util/LogUtil;->dm(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
