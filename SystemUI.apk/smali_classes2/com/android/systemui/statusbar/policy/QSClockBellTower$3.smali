.class Lcom/android/systemui/statusbar/policy/QSClockBellTower$3;
.super Landroid/content/BroadcastReceiver;
.source "QSClockBellTower.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/QSClockBellTower;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/QSClockBellTower;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$3;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onReceive$0(Lcom/android/systemui/statusbar/policy/QSClockBellTower$3;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$3;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->access$202(Lcom/android/systemui/statusbar/policy/QSClockBellTower;Ljava/util/Calendar;)Ljava/util/Calendar;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$3;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->access$200(Lcom/android/systemui/statusbar/policy/QSClockBellTower;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$3;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->access$800(Lcom/android/systemui/statusbar/policy/QSClockBellTower;)Ljava/text/SimpleDateFormat;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$3;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->access$800(Lcom/android/systemui/statusbar/policy/QSClockBellTower;)Ljava/text/SimpleDateFormat;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$3;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->access$900(Lcom/android/systemui/statusbar/policy/QSClockBellTower;)Ljava/text/SimpleDateFormat;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$3;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->access$900(Lcom/android/systemui/statusbar/policy/QSClockBellTower;)Ljava/text/SimpleDateFormat;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$3;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->access$702(Lcom/android/systemui/statusbar/policy/QSClockBellTower;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public static synthetic lambda$onReceive$1(Lcom/android/systemui/statusbar/policy/QSClockBellTower$3;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$3;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->access$400(Lcom/android/systemui/statusbar/policy/QSClockBellTower;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$3;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->access$500(Lcom/android/systemui/statusbar/policy/QSClockBellTower;)Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$3;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->access$502(Lcom/android/systemui/statusbar/policy/QSClockBellTower;Ljava/util/Locale;)Ljava/util/Locale;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$3;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->access$602(Lcom/android/systemui/statusbar/policy/QSClockBellTower;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$3;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->access$702(Lcom/android/systemui/statusbar/policy/QSClockBellTower;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "time-zone"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$3;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->access$000(Lcom/android/systemui/statusbar/policy/QSClockBellTower;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/statusbar/policy/-$$Lambda$QSClockBellTower$3$MU50PBxGBN4y8Oe7aGxtgD5Xi98;

    invoke-direct {v3, p0, v1}, Lcom/android/systemui/statusbar/policy/-$$Lambda$QSClockBellTower$3$MU50PBxGBN4y8Oe7aGxtgD5Xi98;-><init>(Lcom/android/systemui/statusbar/policy/QSClockBellTower$3;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$3;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->access$000(Lcom/android/systemui/statusbar/policy/QSClockBellTower;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/policy/-$$Lambda$QSClockBellTower$3$4jtxYIKZnCy1FrPqKg8fPbZhiqk;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/policy/-$$Lambda$QSClockBellTower$3$4jtxYIKZnCy1FrPqKg8fPbZhiqk;-><init>(Lcom/android/systemui/statusbar/policy/QSClockBellTower$3;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$3;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->access$000(Lcom/android/systemui/statusbar/policy/QSClockBellTower;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$3;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->access$100(Lcom/android/systemui/statusbar/policy/QSClockBellTower;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
