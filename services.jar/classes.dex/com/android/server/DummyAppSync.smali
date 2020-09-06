.class Lcom/android/server/DummyAppSync;
.super Lcom/android/server/AppSyncWrapper;
.source "AlarmManagerServiceExt.java"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/AppSyncWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public disableSuspiciousPackageAsUser(Ljava/lang/String;I)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public doDump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4

    const-string v0, "  <AppSync3 Disabled>"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public enableSuspiciousPackageAsUser(Ljava/lang/String;I)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public lookForNonAdjustableAlarm(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;J)Z
    .registers 6

    const/4 v0, 0x0

    return v0
.end method

.method public scheduleAlarms(Lcom/android/server/AlarmManagerService$Alarm;)J
    .registers 4

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "___SyncScheduler (v3) DEACTIVATED___"

    return-object v0
.end method
