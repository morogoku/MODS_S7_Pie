.class Lcom/android/systemui/statusbar/policy/QSClockBellTower$2;
.super Ljava/lang/Object;
.source "QSClockBellTower.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$2;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$2;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->access$200(Lcom/android/systemui/statusbar/policy/QSClockBellTower;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$2;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->access$300(Lcom/android/systemui/statusbar/policy/QSClockBellTower;)V

    const-string v2, "QSClockBellTower"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Everyone heard the bell. run(currentTime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ",   getTime():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$2;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->access$200(Lcom/android/systemui/statusbar/policy/QSClockBellTower;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",   getTimeZone():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$2;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->access$200(Lcom/android/systemui/statusbar/policy/QSClockBellTower;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
