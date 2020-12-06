.class abstract Lcom/android/server/AppSyncWrapper;
.super Ljava/lang/Object;
.source "AlarmManagerServiceExt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AppSyncWrapper$SET_TYPE;
    }
.end annotation


# static fields
.field public static final APPSYNC3:I = 0x1

.field public static final APPSYNC3P:I

.field public static final LOG:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/AppSyncWrapper;->LOG:Z

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract disableSuspiciousPackageAsUser(Ljava/lang/String;I)Z
.end method

.method public abstract doDump(Ljava/io/PrintWriter;Ljava/lang/String;)V
.end method

.method public doGC(J)V
    .registers 3

    return-void
.end method

.method public abstract enableSuspiciousPackageAsUser(Ljava/lang/String;I)Z
.end method

.method public log(Lcom/android/server/AlarmManagerService$Alarm;Z)V
    .registers 4

    sget-boolean v0, Lcom/android/server/AppSyncWrapper;->LOG:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    return-void
.end method

.method public abstract lookForNonAdjustableAlarm(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;J)Z
.end method

.method public removeRepeatingAlarm(I)V
    .registers 2

    return-void
.end method

.method public removeRepeatingAlarm(IZ)V
    .registers 3

    return-void
.end method

.method public removeRepeatingAlarm(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V
    .registers 3

    return-void
.end method

.method public removeRepeatingAlarm(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public removeRepeatingAlarms(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public rescheduleAlarms(Lcom/android/server/AlarmManagerService$Alarm;)V
    .registers 2

    return-void
.end method

.method public abstract scheduleAlarms(Lcom/android/server/AlarmManagerService$Alarm;)J
.end method

.method public updateAlarmTriggerInfo(Lcom/android/server/AlarmManagerService$Alarm;IJ)V
    .registers 5

    return-void
.end method
